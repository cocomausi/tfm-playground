local players = {}

local KEY_CODE = {
    CONTROL = 17,
    SHIFT = 16,
    A = 65,
    B = 66,
    C = 67,
    D = 68,
    E = 69,
    F = 70,
    G = 71,
    H = 72,
    I = 73,
    J = 74,
    K = 75,
    L = 76,
    M = 77,
    N = 78,
    O = 79,
    P = 80,
    Q = 81,
    R = 82,
    S = 83,
    T = 84,
    U = 85,
    V = 86,
    W = 87,
    X = 88,
    Y = 89,
    Z = 90,
}

local SHAMAN_OBJECT = {
    ARROW = 0,
    LITTLEBOX = 1,
    BOX = 2,
    LITTLEBOARD = 3,
    BOARD = 4,
    BALL = 6,
    TRAMPOLINE = 7,
    ANVIL = 10,
    CANNON = 17,
    BOMB = 23,
    SPIRIT = 24,
    BLUEPORTAL = 26,
    ORANGEPORTAL = 27,
    BLUEBALLOON = 28,
    REDBALLOON = 29,
    GREENBALLOON = 30,
    YELLOWBALLOON = 31,
    RUNE = 32,
    CHICKEN = 33,
    SNOWBALL = 34,
    CUPIDONARROW = 35,
    APPLE = 39,
    SHEEP = 40,
    LITTLEBOARDICE = 45,
    LITTLEBOARDCHOCOLATE = 46,
    ICECUBE = 54,
    CLOUD = 57,
    BUBBLE = 59,
    TINYBOARD = 60,
    COMPANIONCUBE = 61,
    STABLERUNE = 62,
    BALLOONFISH = 65,
    LONGBOARD = 67,
    TRIANGLE = 68,
    SBOARD = 69,
    PAPERPLANE = 80,
    ROCK = 85,
    PUMPKINBALL = 89,
    TOMBSTONE = 90,
    PAPERBALL = 95,

    SMALLPLANK = 3,
    PLANK = 4,
    LONGPLANK = 4,
    CUPIDARROW = 35,
    ICE = 54,
    TINYPLANK = 60,
}

-- Helper functions ------------------------------------------------------------

-- Split string by the given delimiter or by whitespace
-- Returns a list of zero or more tokens
local function splitString(str, delim)
    local matches = {}
    local pattern = string.format("([^%s]+)", delim or "%s")

    for token in str:gmatch(pattern) do
        table.insert(matches, token)
    end

    return matches
end

local function toColor(str)
    local colors = {
        black   = 0x010101,
        blue    = 0x0000FF,
        brown   = 0xBB7722,
        cyan    = 0x00FFFF,
        gold    = 0xFFD700,
        gray    = 0x808080,
        green   = 0x00AA00,
        grey    = 0x808080,
        magenta = 0xFF00FF,
        orange  = 0xFFA500,
        peach   = 0xFFE5B4,
        pink    = 0xFFBBDD,
        purple  = 0x800080,
        red     = 0xFF0000,
        salmon  = 0xFF8C69,
        silver  = 0xC0C0C0,
        white   = 0xFFFFFF,
        yellow  = 0xFFFF00,
    }

    str = str:lower()

    local color

    if colors[str] then
        color = colors[str]
    else
        color = tonumber(str)

        if color and ((color < 0) or (color > 0xFFFFFF)) then
            color = nil
        end
    end

    return color
end

--------------------------------------------------------------------------------

-- Search the room for a single player with the same name (with or without tag)
-- If there's only one match, return the name (with tag) and player data
-- If there are no matches or if there's more than one match, return nil and nil
local function searchRoom(searchString)
    searchString = searchString:lower()

    local foundPlayerName = nil
    local foundPlayerData = nil

    for playerName,playerData in pairs(tfm.get.room.playerList) do
        local playerNameLowered = playerName:lower()

        -- Try to match with and without tag
        if (searchString == playerNameLowered) or
                (searchString == playerNameLowered:sub(1, -6)) then
            if foundPlayerName then
                -- This is the second match found
                return nil, nil
            end

            foundPlayerName = playerName
            foundPlayerData = playerData
        end
    end

    return foundPlayerName, foundPlayerData
end

local Player = {}

function Player:new(playerName)
    local player = {
        name = playerName,
        isRoomOwner = false,
        isRoomAdmin = false,
        awaitedCommand = nil,
        awaitedTarget = nil,
        keyDown = {
            control = false,
        },
    }

    setmetatable(player, self)
    self.__index = self

    player:resetForNewRound()

    return player
end

function Player:resetForNewRound()
    self:resetForRespawn()
end

function Player:resetForRespawn()
    self.angryCount = 0
end

-- Callbacks -------------------------------------------------------------------

function eventChatCommand(_playerName, text)
    local args = splitString(text)
    local command = args[1]:lower()

    if command == "admins" then
        for _,player in pairs(players) do
            print(string.format("Name: %s, Owner: %s, Admin: %s",
                player.name,
                (player.isRoomOwner and "yes") or "no",
                (player.isRoomAdmin and "yes") or "no")
            )
        end
    elseif command == "color" then
        if not args[2] then return end

        local color = toColor(args[2])
        if color then
            print(color)
        else
            print("Not found")
        end
    end
end

function eventColorPicked(_colorPickerId, _playerName, _color)
end

function eventNewGame()
    for _,player in players do
        player:resetForNewRound()
    end
end

function eventNewPlayer(playerName)
    if not players[playerName] then
        players[playerName] = Player:new(playerName)
        system.bindMouse(playerName)
        system.bindKeyboard(playerName, KEY_CODE.CONTROL, true)
        system.bindKeyboard(playerName, KEY_CODE.CONTROL, false)
        system.bindKeyboard(playerName, KEY_CODE.H, true)
    end

    local player = players[playerName]
    local playerData = tfm.get.room.playerList[playerName]

    local playerNameLowered = playerName:lower()
    if playerNameLowered:sub(-5) == "#0000" then
        playerNameLowered = playerNameLowered:sub(1, -6)
    end

    local tribeName = playerData.tribeName
    if tribeName then
        tribeName = tribeName:lower()
    end
    local roomName = tfm.get.room.name:lower()

    if roomName:find(playerNameLowered) or
            (tribeName and roomName:find(tribeName)) then
        player.isRoomOwner = true
        player.isRoomAdmin = true
    end
end

function eventKeyboard(playerName, keyCode, down, _playerX, _playerY)
    local player = players[playerName]

    if keyCode == KEY_CODE.CONTROL then
        player.keyDown.control = down
    end
end

function eventMouse(playerName, x, y)
    local player = players[playerName]

    if player.keyDown.control then
        tfm.exec.movePlayer(playerName, x, y)
    end
end

function eventPlayerRespawn(playerName)
    local player = players[playerName]

    player:resetForRespawn()
end

function eventTextAreaCallback(_textAreaId, _playerName, _eventName)
end

-- Initialization --------------------------------------------------------------

local function init()
    for playerName in pairs(tfm.get.room.playerList) do
        eventNewPlayer(playerName)
    end

    for _,command in ipairs{
        "popup",
    } do
        system.disableChatCommandDisplay(command)
    end
end

init()
