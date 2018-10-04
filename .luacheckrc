-- Ignore arguments beginning with underscores
ignore = { "212/_.*" }

-- Show warning codes
codes = true

-- Allow globals defined by lua5.2
std = "lua52"

-- Allow globals defined by Transformice
new_globals = {
    "eventChatCommand",
    "eventChatMessage",
    "eventEmotePlayed",
    "eventFileLoaded",
    "eventFileSaved",
    "eventKeyboard",
    "eventMouse",
    "eventLoop",
    "eventNewGame",
    "eventNewPlayer",
    "eventPlayerDataLoaded",
    "eventPlayerDied",
    "eventPlayerGetCheese",
    "eventPlayerLeft",
    "eventPlayerVampire",
    "eventPlayerWon",
    "eventPlayerRespawn",
    "eventPlayerMeep",
    "eventPopupAnswer",
    "eventSummoningStart",
    "eventSummoningCancel",
    "eventSummoningEnd",
    "eventTextAreaCallback",
    "eventColorPicked",
}

read_globals = {
    debug = {
        fields = {
            "disableEventLog",
        }
    },
    system = {
        fields = {
            "bindKeyboard",
            "bindMouse",
            "disableChatCommandDisplay",
            "exit",
            "giveEventGift",
            "loadFile",
            "loadPlayerData",
            "newTimer",
            "removeTimer",
            "saveFile",
            "savePlayerData",
        }
    },
    tfm = {
        fields = {
            enum = {
                fields = {
                    emote = {
                        fields = {
                            "dance",
                            "laugh",
                            "cry",
                            "kiss",
                            "angry",
                            "clap",
                            "sleep",
                            "facepaw",
                            "sit",
                            "confetti",
                            "flag",
                            "marshmallow",
                            "selfie",
                            "highfive",
                            "highfive_1",
                            "highfive_2",
                            "partyhorn",
                            "hug",
                            "hug_1",
                            "hug_2",
                            "jigglypuff",
                            "kissing",
                            "kissing_1",
                            "kissing_2",
                            "carnaval",
                            "rockpaperscissors",
                            "rockpaperscissors_1",
                            "rockpaperscissor_2",
                        }
                    },
                    ground = {
                        fields = {
                            "wood",
                            "ice",
                            "trampoline",
                            "lava",
                            "chocolate",
                            "earth",
                            "grass",
                            "sand",
                            "cloud",
                            "water",
                            "stone",
                            "snow",
                            "rectangle",
                            "circle",
                            "invisible",
                            "web",
                        }
                    },
                    particle = {
                        fields = {
                            "whiteGlitter",
                            "blueGlitter",
                            "orangeGlitter",
                            "cloud",
                            "dullWhiteGlitter",
                            "heart",
                            "bubble",
                            "tealGlitter",
                            "spirit",
                            "yellowGlitter",
                            "ghostSpirit",
                            "redGlitter",
                            "waterBubble",
                            "plus1",
                            "plus10",
                            "plus12",
                            "plus14",
                            "plus16",
                            "meep",
                            "redConfetti",
                            "greenConfetti",
                            "blueConfetti",
                            "yellowConfetti",
                            "diagonalRain",
                            "curlyWind",
                            "wind",
                            "rain",
                            "star",
                            "littleRedHeart",
                            "littlePinkHeart",
                            "daisy",
                            "bell",
                            "egg",
                            "projection",
                            "mouseTeleportation",
                            "shamanTeleportation",
                            "lollipopConfetti",
                            "yellowCandyConfetti",
                            "pinkCandyConfetti",
                        }
                    },
                    shamanObject = {
                        fields = {
                            "arrow",
                            "littleBox",
                            "box",
                            "littleBoard",
                            "board",
                            "ball",
                            "trampoline",
                            "anvil",
                            "cannon",
                            "bomb",
                            "orangePortal",
                            "blueBalloon",
                            "redBalloon",
                            "greenBalloon",
                            "yellowBalloon",
                            "rune",
                            "chicken",
                            "snowBall",
                            "cupidonArrow",
                            "apple",
                            "sheep",
                            "littleBoardIce",
                            "littleBoardChocolate",
                            "iceCube",
                            "cloud",
                            "bubble",
                            "tinyBoard",
                            "companionCube",
                            "stableRune",
                            "balloonFish",
                            "longBoard",
                            "triangle",
                            "sBoard",
                            "paperPlane",
                            "rock",
                            "pumpkinBall",
                            "tombstone",
                            "paperBall",
                        }
                    }
                }
            },
            exec = {
                fields = {
                    "addConjuration",
                    "addImage",
                    "addJoint",
                    "addPhysicObject",
                    "addShamanObject",
                    "changePlayerSize",
                    "chatMessage",
                    "disableAfkDeath",
                    "disableAllShamanSkills",
                    "disableAutoNewGame",
                    "disableAutoScore",
                    "disableAutoShaman",
                    "disableAutoTimeLeft",
                    "disableDebugCommand",
                    "disableMinimalistMode",
                    "disableMortCommand",
                    "disablePhysicalConsumables",
                    "disablePrespawnPreview",
                    "disableWatchCommand",
                    "displayParticle",
                    "explosion",
                    "giveCheese",
                    "giveConsumables",
                    "giveMeep",
                    "giveTransformations",
                    "killPlayer",
                    "linkMice",
                    "lowerSyncDelay",
                    "moveObject",
                    "movePlayer",
                    "newGame",
                    "playEmote",
                    "playerVictory",
                    "removeCheese",
                    "removeImage",
                    "removeJoint",
                    "removeObject",
                    "removePhysicObject",
                    "respawnPlayer",
                    "setAutoMapFlipMode",
                    "setGameTime",
                    "setNameColor",
                    "setPlayerScore",
                    "setRoomMaxPlayers",
                    "setRoomPassword",
                    "setShaman",
                    "setShamanMode",
                    "setVampirePlayer",
                    "snow",
                }
            },
            get = {
                fields = {
                    misc = {
                        fields = {
                            "apiVersion",
                            "transformiceVersion",
                        }
                    },
                    room = {
                        fields = {
                            "community",
                            "currentMap",
                            "maxPlayers",
                            "mirroredMap",
                            "name",
                            "objectList",
                            "passwordProtected",
                            "playerList",
                        }
                    }
                }
            }
        }
    },
    ui = {
        fields = {
            "addPopup",
            "addTextArea",
            "removeTextArea",
            "setMapName",
            "setShamanName",
            "showColorPicker",
            "updateTextArea",
        }
    },
}