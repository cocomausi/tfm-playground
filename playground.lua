local TEXT = {
	HELP_1 = [[
<textformat tabstops="[210]"><font size="14"><VP><B>General Commands</B><font size="11">
<J>!admins<N>	Show the list of room admins.
<J>!h<N> or<J> !help<N> (or press H)	Show this help window.
<J>!r <CH><u>player</u><N>	Respawn.
<J>!name <CH><u>color</u><N>	Change the color<R>*<N> of your name.
<J>!namep <CH><u>player</u> <u>color</u><N>	Change the color<R>*<N> of <CH><u>player</u><N>'s name.
<J>!admin <CH><u>player</u><N>	Grant admin<R>**<N> status.
<J>!unadmin <CH><u>player</u><N>	Revoke admin<R>**<N> status.

<T><b><u>Admin-Only Commands</u></b>
<J>!np <CH><u>map</u><N>	Play <CH><u>map</u><N>. (For map types, use # instead of P; example: <CH><u>#4</u><N> for P4.)
<J>!pause<N>	Prevent the map from changing.
<J>!score <CH><u>player</u> <u>new score</u><N>	Set score.
<J>!snow<N>	Snow for 60 seconds.
<J>!t or time <CH><u>seconds</u><N>	Set the remaining round time.

<T><b><u>Notes</u></b><N>
<R>*<N>If you don't specify a <CH><u>color</u><N>, a color picker will appear. You can also use color names (<CH><u>pink</u><N>, <CH><u>blue</u><N>, etc.).
<R>**<N>Only room owners can grant/revoke admin status.
Specifying <CH><u>player</u><N> is always optional.
Only room admins can use commands that affect other players.
Room admins can use <CH><u>all</u><N> to target all players; for example: <J>!r <CH><u>all</u><N> to respawn all players.]],
	HELP_2 = [[
<textformat tabstops="[210]"><font size="14"><VP><B>Mice and Object Commands</B><font size="11">
<J>!cheese<N> <CH><u>player</u><N>	Give cheese.
<J>!uncheese<N> <CH><u>player</u><N>	Remove cheese.
<J>!link<N> <CH><u>player</u> <u>player2</u><N>	Turn <CH><u>player</u><N> and <CH><u>player2</u><N> into soulmates. (Admin only.)
<J>!unlink<N> <CH><u>player</u> <u>player2</u><N>	Remove soulmate.
<J>!s<N> or <J>!shaman<N> <CH><u>player</u><N>	Turn into Shaman.
<J>!unshaman<N> <CH><u>player</u><N>	Turn into a helpless mouse.
<J>!tfm<N> <CH><u>player</u><N>	Gain ability to transform into objects.
<J>!untfm<N> <CH><u>player</u><N>	Remove ability to transform into objects.
<J>!vamp<N> <CH><u>player</u><N>	Turn into a vampire.
<J>!garlic<N> <CH><u>player</u><N>	Turn into a normal mouse.
<J>!train<N>	Link all mice in a train. (Admin only.)
<J>!tp <CH><u>player</u><N> (or hold Ctrl and click)	Teleport.
<J>!scatter<N> <CH><u>player</u><N>	Teleport to a random position.

<J>!clear<N>	Remove all Shaman objects.
<J>!sp<N> or <J>!spawn <CH><u>id</u> <u>rotation</u> <u>vx</u> <u>vy</u> <u>x</u> <u>y</u><N>	Spawn a Shaman object. You can click instead of specifying <CH><u>x</u><N> and <CH><u>y</u><N>.
	You can also say <CH><u>box</u><N>, <CH><u>plank</u><N>, <CH><u>smallplank</u><N>, etc. instead of specifying <CH><u>id</u><N>.
<T><b><u>Notes</u></b><N>
Specifying <CH><u>player</u><N> is always optional.
Only room admins can use commands that affect other players.
Room admins can use <CH><u>all</u><N> to target all players; for example: <J>!r <CH><u>all</u><N> to respawn all players.]],
	HELP_3 = [[
<textformat tabstops="[125,310]"><font size="14"><VP><B>Miscellaneous Commands</B><font size="11">
<T><b><u>Play Emote</u>		<u>Change Mouse Size</u></b>
<J>!angry <CH><u>player</u><N>	<J>!kiss <CH><u>player</u><N>	<J>!thicc
!carnaval <CH><u>player</u><N>	<J>!kissing <CH><u>player</u><N>	<J>!huge
!clap <CH><u>player</u><N>	<J>!laugh <CH><u>player</u><N>	<J>!bigger
!confetti <CH><u>player</u><N>	<J>!marshmallow <CH><u>player</u><N>	<J>!big
!cry <CH><u>player</u><N>	<J>!partyhorn <CH><u>player</u><N>	<J>!normal
!dance <CH><u>player</u><N>	<J>!rockpaperscissors <CH><u>player</u><N>	<J>!manlet
!facepaw <CH><u>player</u><N>	<J>!selfie <CH><u>player</u><N>	<J>!small
!highfive <CH><u>player</u><N>	<J>!sit <CH><u>player</u><N>	<J>!smaller
!hug <CH><u>player</u><N>	<J>!sleep <CH><u>player</u><N>	<J>!tiny
!jigglypuff <CH><u>player</u><N>






<T><b><u>Notes</u></b><N>
Specifying <CH><u>player</u><N> is always optional.
Only room admins can use commands that affect other players.
Room admins can use <CH><u>all</u><N> to target all players; for example: <J>!r <CH><u>all</u><N> to respawn all players.]],
    HELP_BUTTON_1 = "<p align=\"center\"><a href=\"event:showHelp1\"><J><u>General</u></a></p>",
    HELP_BUTTON_2 = "<p align=\"center\"><a href=\"event:showHelp2\"><J><u>Mice</u></a></p>",
    HELP_BUTTON_3 = "<p align=\"center\"><a href=\"event:showHelp3\"><J><u>Miscellaneous</u></a></p>",
    HELP_CLOSE = "<p align=\"center\"><a href=\"event:closeHelp\"><J><u>Close</u></a></p>",
    INFO_CLOSE = "<p align=\"center\"><a href=\"event:closeInfo\"><J><u>Close</u></a></p>",
    THICC = "<p align=\"center\"><a href=\"event:closeThicc\"><J>dang she thicc</a></p>",
}

local g = {
    players = {},
}

local COLOR = {
    BLACK   = 0x010101,
    BLUE    = 0x0000FF,
    BROWN   = 0xBB7722,
    CYAN    = 0x00FFFF,
    GOLD    = 0xFFD700,
    GRAY    = 0x808080,
    GREEN   = 0x00AA00,
    GREY    = 0x808080,
    MAGENTA = 0xFF00FF,
    ORANGE  = 0xFFA500,
    PEACH   = 0xFFE5B4,
    PINK    = 0xFFBBDD,
    PURPLE  = 0x800080,
    RED     = 0xFF0000,
    SALMON  = 0xFF8C69,
    SILVER  = 0xC0C0C0,
    WHITE   = 0xFFFFFF,
    YELLOW  = 0xFFFF00,
}

local COMMAND_AWAITED = {
    NAME_COLOR = 0,
    TP = 1,
    SPAWN = 2,
}

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

local TEXTAREA_ATTR = {
    BG_COLOR = 0x000000,
    BORDER_COLOR = 0x010101,
    BG_ALPHA = 0.85,
    BODY = {
        X = 75,
        Y = 40,
        WIDTH = 650,
        HEIGHT = 300,
    },
    BUTTON_1 = {
        X = 75,
        Y = 360,
        WIDTH = 90,
        HEIGHT = 20,
    },
    BUTTON_2 = {
        X = 185,
        Y = 360,
        WIDTH = 90,
        HEIGHT = 20,
    },
    BUTTON_3 = {
        X = 295,
        Y = 360,
        WIDTH = 90,
        HEIGHT = 20,
    },
    BUTTON_CLOSE = {
        X = 635,
        Y = 360,
        WIDTH = 90,
        HEIGHT = 20,
    }
}

local UI_ID = {
    HELP_BODY     =  0,
    HELP_BUTTON_1 =  1,
    HELP_BUTTON_2 =  2,
    HELP_BUTTON_3 =  3,
    HELP_CLOSE    =  9,
    INFO_BODY     = 10,
    INFO_CLOSE    = 19,
    THICC         = 9001,
    NAME_COLOR_PICKER = 100,
    POPUP = 200,
}

-- Forward declaration - Player uses some functions that require Player to be defined
local Player

local function getAdminList()
    local list = ""

    for _,player in pairs(g.players) do
        if player.isRoomAdmin then
            list = list .. player.name .. ", "
        end
    end

    list = list:sub(1, -3) -- Remove trailing comma

    return list
end

-- Remove #0000 if it's present and transform to lowercase
local function normalizePlayerName(playerName)
    if playerName:find("#0000") then
        playerName = playerName:sub(1, -6)
    end

    return playerName:lower()
end

-- Split string by whitespace; returns a list of zero or more strings
local function splitString(str)
    local parts = {}
    for part in str:gmatch("%S+") do
        table.insert(parts, part)
    end
    return parts
end

local function getPlayer(playerName)
    local normalizedName = normalizePlayerName(playerName)

    if g.players[normalizedName] == nil then
        g.players[normalizedName] = Player(playerName)
    end

    return g.players[normalizedName]
end

local function withAllPlayerNames(func, ...)
    for playerName in pairs(tfm.get.room.playerList) do
        func(playerName, table.unpack{...})
    end
end

local function withAllPlayers(func, ...)
    for playerName in pairs(tfm.get.room.playerList) do
        func(getPlayer(playerName), table.unpack{...})
    end
end

local function withTargetName(targetName, func, ...)
    if targetName == "all" then
        withAllPlayerNames(func, ...)
    else
        func(targetName, table.unpack{...})
    end
end

Player = function(playerName)
    local player = {
        name = playerName,
        keyDown = {
            control = false,
            shift = false,
        },
        isRoomOwner = false,
        isRoomAdmin = false,
        viewingHelp = false,
    }

    player.initNewRound = function()
        player.angryCount = 0 -- for transformation into vampire
        player.commandAwaited = nil -- tp, spawn
        player.commandTarget = nil -- target for tp, spawn
    end

    player.initRespawn = function()
        player.angryCount = 0
    end

    player.closeHelp = function()
        player.viewingHelp = false
        ui.removeTextArea(UI_ID.HELP_BODY, player.name)
        ui.removeTextArea(UI_ID.HELP_BUTTON_1, player.name)
        ui.removeTextArea(UI_ID.HELP_BUTTON_2, player.name)
        ui.removeTextArea(UI_ID.HELP_BUTTON_3, player.name)
        ui.removeTextArea(UI_ID.HELP_CLOSE, player.name)
    end

    player.eventEmotePlayed = function(emoteType, _emoteParam)
        if emoteType == tfm.enum.emote.angry then
            player.angryCount = player.angryCount + 1

            if player.angryCount == 3 then
                tfm.exec.setVampirePlayer(player.name)
            end
        end
    end

    player.eventKeyboard = function(keyCode, down, _playerX, _playerY)
        if keyCode == KEY_CODE.CONTROL then
            player.keyDown.control = down
        elseif keyCode == KEY_CODE.SHIFT then
            player.keyDown.shift = down
        elseif keyCode == KEY_CODE.H then
            player.toggleHelp()
        end
    end

    player.eventMouse = function(x, y)
        if player.keyDown.control then
            tfm.exec.movePlayer(player.name, x, y)
        elseif player.commandAwaited == COMMAND_AWAITED.TP then
            withTargetName(player.commandTarget, tfm.exec.movePlayer, x, y)

            player.commandAwaited = nil
            player.commandTarget = nil
        elseif player.commandAwaited == COMMAND_AWAITED.SPAWN then
            for _=1,player.commandTarget.count,1 do
                tfm.exec.addShamanObject(player.commandTarget.objectType,
                    x,
                    y,
                    player.commandTarget.rotation,
                    player.commandTarget.vx,
                    player.commandTarget.vy
                )
            end

            player.commandAwaited = nil
            player.commandTarget = nil
        end
    end

    player.showHelp = function(pageNumber)
        player.viewingHelp = true

        local pages = {
            TEXT.HELP_1,
            TEXT.HELP_2,
            TEXT.HELP_3,
        }

        ui.addTextArea(UI_ID.HELP_BODY,
            pages[pageNumber],
            player.name,
            TEXTAREA_ATTR.BODY.X,
            TEXTAREA_ATTR.BODY.Y,
            TEXTAREA_ATTR.BODY.WIDTH,
            TEXTAREA_ATTR.BODY.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )

        ui.addTextArea(UI_ID.HELP_BUTTON_1,
            TEXT.HELP_BUTTON_1,
            player.name,
            TEXTAREA_ATTR.BUTTON_1.X,
            TEXTAREA_ATTR.BUTTON_1.Y,
            TEXTAREA_ATTR.BUTTON_1.WIDTH,
            TEXTAREA_ATTR.BUTTON_1.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )

        ui.addTextArea(UI_ID.HELP_BUTTON_2,
            TEXT.HELP_BUTTON_2,
            player.name,
            TEXTAREA_ATTR.BUTTON_2.X,
            TEXTAREA_ATTR.BUTTON_2.Y,
            TEXTAREA_ATTR.BUTTON_2.WIDTH,
            TEXTAREA_ATTR.BUTTON_2.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )

        ui.addTextArea(UI_ID.HELP_BUTTON_3,
            TEXT.HELP_BUTTON_3,
            player.name,
            TEXTAREA_ATTR.BUTTON_3.X,
            TEXTAREA_ATTR.BUTTON_3.Y,
            TEXTAREA_ATTR.BUTTON_3.WIDTH,
            TEXTAREA_ATTR.BUTTON_3.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )

        ui.addTextArea(UI_ID.HELP_CLOSE,
            TEXT.HELP_CLOSE,
            player.name,
            TEXTAREA_ATTR.BUTTON_CLOSE.X,
            TEXTAREA_ATTR.BUTTON_CLOSE.Y,
            TEXTAREA_ATTR.BUTTON_CLOSE.WIDTH,
            TEXTAREA_ATTR.BUTTON_CLOSE.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )
    end

    player.showInfo = function(text, title)
        title = title or "Info"

        text = string.format("<font size=\"14\"><VP><B>%s</B><N><font size=\"11\">\n%s", title, text)

        ui.addTextArea(UI_ID.INFO_BODY,
            text,
            player.name,
            TEXTAREA_ATTR.BODY.X,
            TEXTAREA_ATTR.BODY.Y,
            TEXTAREA_ATTR.BODY.WIDTH,
            TEXTAREA_ATTR.BODY.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )

        ui.addTextArea(UI_ID.INFO_CLOSE,
            TEXT.INFO_CLOSE,
            player.name,
            TEXTAREA_ATTR.BUTTON_CLOSE.X,
            TEXTAREA_ATTR.BUTTON_CLOSE.Y,
            TEXTAREA_ATTR.BUTTON_CLOSE.WIDTH,
            TEXTAREA_ATTR.BUTTON_CLOSE.HEIGHT,
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            true -- Fixed position
        )
    end

    player.thicc = function()
        tfm.exec.changePlayerSize(player.name, 5.0)

        local playerObject = tfm.get.room.playerList[player.name]

        ui.addTextArea(UI_ID.THICC + playerObject.id,
            TEXT.THICC,
            nil,
            playerObject.x - 45,
            playerObject.y,
            90, -- Width
            0,  -- Height (0 for auto-height)
            TEXTAREA_ATTR.BG_COLOR,
            TEXTAREA_ATTR.BORDER_COLOR,
            TEXTAREA_ATTR.BG_ALPHA,
            false -- Fixed position
        )
    end

    player.toggleHelp = function()
        if player.viewingHelp then
            player.closeHelp()
        else
            player.showHelp(1)
        end
    end

    player.initNewRound()
    return player
end

-- Callbacks -------------------------------------------------------------------

function eventChatCommand(playerName, text)
    local sizes = {
        huge = 5.0,
        bigger = 3.0,
        big = 2.0,
        normal = 1.0,
        manlet = 0.9,
        small = 0.7,
        smaller = 0.4,
        tiny = 0.1,
    }

    local player = getPlayer(playerName)
    local args = splitString(text)
    local cmd = args[1]
    local arg1 = args[2]
    local arg2 = args[3]

    if cmd then cmd = cmd:lower() end
    if arg1 then arg1 = normalizePlayerName(arg1) end
    if arg2 then arg2 = normalizePlayerName(arg2) end

    -- Commands for which arguments, if present, may or may not be player names (or "all")
    if cmd == "admin" then
        if not player.isRoomOwner then return end

        withTargetName(arg1, function(targetPlayerName)
            local targetPlayer = getPlayer(targetPlayerName)
            targetPlayer.isRoomAdmin = true
        end)
    elseif cmd == "admins" then
        player.showInfo(getAdminList(), "Room Admins")
    elseif cmd == "clear" then
        if not player.isRoomAdmin then return end

        -- Can't iterate over and remove the objects directly because removing the object
        -- changes the list
        local objectIds = {}
        for objectId in pairs(tfm.get.room.objectList) do
           table.insert(objectIds, objectId)
        end

        for _,objectId in pairs(objectIds) do
            tfm.exec.removeObject(objectId)
        end
    elseif cmd == "name" then
        -- !name [color]

        if arg1 then
            arg1 = arg1:upper()
            if COLOR[arg1] then
                arg1 = COLOR[arg1]
            else
                arg1 = tonumber(arg1, 16)
            end

            -- arg1 will be null if it wasn't a recognized color name and wasn't a hexadecimal number
            if arg1 then
                tfm.exec.setNameColor(playerName, arg1)
            end
        else
            player.commandAwaited = COMMAND_AWAITED.NAME_COLOR
            player.commandTarget = playerName
            ui.showColorPicker(UI_ID.NAME_COLOR_PICKER, playerName, 0xC2C2DA, "Choose name color")
        end
    elseif cmd == "namep" then
        -- !namep [player] [color]

        if arg1 then
            -- player specified
            arg1 = normalizePlayerName(arg1)
            if (normalizePlayerName(playerName) ~= arg1) and (not player.isRoomAdmin) then return end

            if arg2 then
                -- color specified
                arg2 = arg2:upper()
                if COLOR[arg2] then
                    arg2 = COLOR[arg2]
                else
                    arg2 = tonumber(arg2, 16)
                end

                -- arg2 will be null if it wasn't a recognized color name and wasn't a hexadecimal number
                if arg2 then
                    withTargetName(arg1, tfm.exec.setNameColor, arg2)
                end
            else
                player.commandAwaited = COMMAND_AWAITED.NAME_COLOR
                player.commandTarget = arg1
                ui.showColorPicker(UI_ID.NAME_COLOR_PICKER, playerName, 0xC2C2DA, "Choose name color")
            end
        else
            -- no arguments provided; treat as !namecolor
            player.commandAwaited = COMMAND_AWAITED.NAME_COLOR
            player.commandTarget = playerName
            ui.showColorPicker(UI_ID.NAME_COLOR_PICKER, playerName, 0xC2C2DA, "Choose name color")
        end
    elseif cmd == "np" then
        if not player.isRoomAdmin then return end
        tfm.exec.newGame(args[2] or "#22")
    elseif (cmd == "h") or (cmd == "help") then
        player.toggleHelp()
    elseif cmd == "pause" then
        if not player.isRoomAdmin then return end
        tfm.exec.disableAfkDeath()
        tfm.exec.disableAutoNewGame()
        tfm.exec.disableAutoTimeLeft()
        tfm.exec.setGameTime(69 * 60 + 59)
    elseif cmd == "popup" then
        if not player.isRoomOwner then return end
        ui.addPopup(UI_ID.POPUP,
            0,                   -- type (0 for simple input)
            string.sub(text, 7), -- text (without "popup ")
            nil,                 -- player (nil for all)
            50,                  -- x
            50,                  -- y
            nil,                 -- width (nil for auto-width)
            true                 -- fixed position
        )
    elseif cmd == "score" then
        -- score newScore
        -- score player newScore
        if not player.isRoomAdmin then return end
        if not arg1 then return end

        local newScore = tonumber(arg1)

        if newScore then
            tfm.exec.setPlayerScore(playerName, newScore)
        else
            -- Treat arg1 as a player name
            newScore = tonumber(arg2)

            if newScore then
                tfm.exec.setPlayerScore(arg1, newScore)
            end
        end
    elseif cmd == "snow" then
        if not player.isRoomAdmin then return end
        tfm.exec.snow()
    elseif (cmd == "sp") or (cmd == "spawn") then
        -- !spawn objectType [count] [rotation] [vx] [vy] [x y]
        if not player.isRoomAdmin then return end
        if not args[2] then return end

        local objectType = tonumber(args[2])
        if (not objectType) and SHAMAN_OBJECT[args[2]:upper()] then
            objectType = SHAMAN_OBJECT[args[2]:upper()]
        end

        if not objectType then return end

        local count = (args[3] and tonumber(args[3])) or 1
        local rotation = (args[4] and tonumber(args[4])) or 0
        local vx = (args[5] and tonumber(args[5])) or 0
        local vy = (args[6] and tonumber(args[6])) or 0
        local x = args[7]
        local y = args[8]

        count = math.min(count, 10)

        if x and y then
            x = tonumber(x)
            y = tonumber(y)
        end

        if x and y then
            for _=1,count,1 do
                tfm.exec.addShamanObject(objectType, x, y, rotation, vx, vy)
            end
        else
            player.commandAwaited = COMMAND_AWAITED.SPAWN
            player.commandTarget = {
                objectType = objectType,
                count = count,
                rotation = rotation,
                vx = vx,
                vy = vy,
            }
        end
    end

    -- Commands for which any arguments, if present, must be player names (or "all")
    arg1 = arg1 or normalizePlayerName(playerName)
    arg2 = arg2 or normalizePlayerName(playerName)
    if (normalizePlayerName(playerName) ~= arg1) and (not player.isRoomAdmin) then return end
    if (normalizePlayerName(playerName) ~= arg2) and (not player.isRoomAdmin) then return end

    if sizes[cmd] then
        withTargetName(arg1, tfm.exec.changePlayerSize, sizes[cmd])
    elseif cmd == "angry" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.angry)
    elseif cmd == "carnaval" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.carnaval)
    elseif cmd == "cheese" then
        withTargetName(arg1, tfm.exec.giveCheese)
    elseif cmd == "clap" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.clap)
    elseif cmd == "confetti" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.confetti)
    elseif cmd == "cry" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.cry)
    elseif cmd == "dance" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.dance)
    elseif cmd == "facepaw" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.facepaw)
    elseif cmd == "garlic" then
        withTargetName(arg1, function(targetPlayerName)
            tfm.exec.setVampirePlayer(targetPlayerName, false)

            local targetPlayer = getPlayer(targetPlayerName)
            targetPlayer.angryCount = 0
        end)
    elseif cmd == "highfive" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.highfive)
    elseif cmd == "hug" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.hug)
    elseif cmd == "jigglypuff" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.jigglypuff)
    elseif cmd == "laugh" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.laugh)
    elseif cmd == "link" then
        tfm.exec.linkMice(arg1, arg2)
    elseif cmd == "kill" then
        withTargetName(arg1, tfm.exec.killPlayer)
    elseif cmd == "kiss" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.kiss)
    elseif cmd == "kissing" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.kissing)
    elseif cmd == "marshmallow" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.marshmallow)
    elseif cmd == "partyhorn" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.partyhorn)
    elseif cmd == "r" then
        withTargetName(arg1, tfm.exec.respawnPlayer)
    elseif cmd == "rockpaperscissors" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.rockpaperscissors)
    elseif (cmd == "t") or (cmd == "time") then
        tfm.exec.setGameTime(args[2])
    elseif cmd == "tfm" then
        withTargetName(arg1, tfm.exec.giveTransformations)
    elseif cmd == "thicc" then
        withTargetName(arg1, function(targetPlayerName)
            local targetPlayer = getPlayer(targetPlayerName)
            if targetPlayer then targetPlayer.thicc() end
        end)
    elseif cmd == "tp" then
        player.commandAwaited = COMMAND_AWAITED.TP
        player.commandTarget = arg1
    elseif (cmd == "s") or (cmd == "shaman") then
        withTargetName(arg1, tfm.exec.setShaman)
        ui.setShamanName("Noob")
    elseif cmd == "scatter" then
        withTargetName(arg1, function(targetPlayerName)
            tfm.exec.movePlayer(targetPlayerName,
                math.random(780) + 10,
                math.random(380) + 10
            )
        end)
    elseif cmd == "selfie" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.selfie)
    elseif cmd == "sit" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.sit)
    elseif cmd == "sleep" then
        withTargetName(arg1, tfm.exec.playEmote, tfm.enum.emote.sleep)
    elseif cmd == "train" then
        if not player.isRoomAdmin then return end

        withAllPlayerNames(function(targetPlayerName)
            tfm.exec.linkMice(targetPlayerName, targetPlayerName, false)
        end)

        local previousPlayerName = nil
        for targetPlayerName in pairs(tfm.get.room.playerList) do
            if previousPlayerName then
                tfm.exec.linkMice(previousPlayerName, targetPlayerName)
            end
            previousPlayerName = targetPlayerName
        end
    elseif cmd == "unadmin" then
        if not player.isRoomOwner then return end

        if normalizePlayerName(playerName) == arg1 then return end

        if arg1 == "all" then
            for _,targetPlayer in pairs(g.players) do
                if not targetPlayer.isRoomOwner then
                    targetPlayer.isRoomAdmin = false
                end
            end
        else
            local targetPlayer = getPlayer(arg1)
            if not targetPlayer.isRoomOwner then
                targetPlayer.isRoomAdmin = false
            end
        end
    elseif cmd == "uncheese" then
        withTargetName(arg1, tfm.exec.removeCheese)
    elseif cmd == "unlink" then
        if arg1 == "all" then
            if player.isRoomAdmin then
                withAllPlayerNames(function(targetPlayerName)
                    tfm.exec.linkMice(targetPlayerName, targetPlayerName, false)
                end)
            end
        else
            tfm.exec.linkMice(arg1, arg2, false)
        end
    elseif cmd == "unshaman" then
        withTargetName(arg1, tfm.exec.setShaman, false)
    elseif cmd == "untfm" then
        withTargetName(arg1, tfm.exec.giveTransformations, false)
    elseif cmd == "vamp" then
        withTargetName(arg1, tfm.exec.setVampirePlayer)
    end
end

function eventColorPicked(_colorPickerId, playerName, color)
    local player = getPlayer(playerName)

    if (color) and (color >= 0) and (player.commandAwaited == COMMAND_AWAITED.NAME_COLOR) then
        withTargetName(player.commandTarget, tfm.exec.setNameColor, color)
    end

    player.commandAwaited = nil
    player.commandTarget = nil
end

function eventEmotePlayed(playerName, emoteType, emoteParam)
    local player = getPlayer(playerName)

    player.eventEmotePlayed(emoteType, emoteParam)
end

function eventNewGame()
    withAllPlayers(function(player)
        player.initNewRound()
    end)
end

function eventNewPlayer(playerName)
    local player = getPlayer(playerName)
    player.initNewRound()

    system.bindKeyboard(playerName, KEY_CODE.CONTROL, true)
    system.bindKeyboard(playerName, KEY_CODE.CONTROL, false)
    system.bindKeyboard(playerName, KEY_CODE.SHIFT, true)
    system.bindKeyboard(playerName, KEY_CODE.SHIFT, false)
    system.bindKeyboard(playerName, KEY_CODE.H, true)
    system.bindMouse(playerName)

    player.toggleHelp()

    local playerTribeName = tfm.get.room.playerList[playerName].tribeName
    local roomName = tfm.get.room.name:lower()

    if roomName:find(normalizePlayerName(playerName)) or
            (playerTribeName and roomName:find(playerTribeName:lower())) then
        player.isRoomOwner = true
        player.isRoomAdmin = true
    end
end

function eventKeyboard(playerName, keyCode, down, playerX, playerY)
    local player = getPlayer(playerName)

    player.eventKeyboard(keyCode, down, playerX, playerY)
end

function eventMouse(playerName, x, y)
    local player = getPlayer(playerName)

    player.eventMouse(x, y)
end

function eventPlayerRespawn(playerName)
    local player = getPlayer(playerName)

    player.initRespawn()
end

function eventTextAreaCallback(textAreaId, playerName, eventName)
    local player = getPlayer(playerName)

    if eventName == "closeHelp" then
        player.closeHelp()
    elseif eventName == "closeInfo" then
        ui.removeTextArea(UI_ID.INFO_BODY, playerName)
        ui.removeTextArea(UI_ID.INFO_CLOSE, playerName)
    elseif eventName == "closeThicc" then
        ui.removeTextArea(textAreaId, playerName)
    elseif eventName == "showHelp1" then
        player.showHelp(1)
    elseif eventName == "showHelp2" then
        player.showHelp(2)
    elseif eventName == "showHelp3" then
        player.showHelp(3)
    end
end

-- Initialization --------------------------------------------------------------

local function init()
    withAllPlayerNames(eventNewPlayer)

    for _,command in pairs({
        "kill",
        "popup",
    }) do
        system.disableChatCommandDisplay(command)
    end
end

init()
