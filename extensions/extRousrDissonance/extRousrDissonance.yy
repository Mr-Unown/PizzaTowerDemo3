{
    "id": "e611e218-8a3c-4ae1-94d8-1fb46e501371",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "extRousrDissonance",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 35184372088898,
    "date": "2017-03-10 12:11:15",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "319acb1b-32c0-4fcb-b1f7-c0261d13e8a7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                {
                    "id": "c9738838-98c4-4e54-bc05-d03826b55927",
                    "modelName": "GMProxyFile",
                    "mvc": "1.0",
                    "TargetMask": 1,
                    "proxyName": "rousrDissonance.dylib"
                }
            ],
            "constants": [
                
            ],
            "copyToTargets": 35184372089026,
            "filename": "rousrDissonance.dll",
            "final": "discord_shutdown",
            "functions": [
                {
                    "id": "8c79e4be-1fb9-42ef-a3dc-a4dd10c6e872",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "Init",
                    "help": "initialize Discord with the application ID and Steam ID (_application_id, [_steam_id])",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_init",
                    "returnType": 2
                },
                {
                    "id": "eac5bcac-0f33-4f92-9307-61d802444673",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "UpdatePresence",
                    "help": "send the presences updates to Discord, call after sets.",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_update_presence",
                    "returnType": 2
                },
                {
                    "id": "e1643323-eb15-427e-8a86-0597d118cbfc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "RunCallbacks",
                    "help": "run any pending discord call backs - call once per step",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_run_callbacks",
                    "returnType": 2
                },
                {
                    "id": "c4470370-5c10-49df-9544-b84e606dde10",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "ResetPresence",
                    "help": "clears all presence data currently set this session",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_reset_presence",
                    "returnType": 2
                },
                {
                    "id": "65f941a3-5e48-4e7d-adfa-67f84e822e1e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "SetState",
                    "help": "set the state string (_state)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_state",
                    "returnType": 2
                },
                {
                    "id": "d20de589-4f37-4e52-82d2-8f364333e80e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "SetDetails",
                    "help": "set the details string (_details)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_details",
                    "returnType": 2
                },
                {
                    "id": "9e00e9b2-759f-418b-823f-a5f870b38492",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "SetTimeStamps",
                    "help": "set the start and end timestamp, in unix time format (_start_lo, _start_hi, _end_lo, _end_hi)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_timestamps",
                    "returnType": 2
                },
                {
                    "id": "7beea45c-9d4c-4fbb-adf2-d8ee7e2891f0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "SetLargeImage",
                    "help": "set the large image detail and caption  (_large_image_key, _large_image_text)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_large_image",
                    "returnType": 2
                },
                {
                    "id": "72695b6f-646e-4fb6-a0b3-f0d4381c2287",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "SetSmallImage",
                    "help": "set the small image detail and caption (_small_image_key, _small_image_text)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_small_image",
                    "returnType": 2
                },
                {
                    "id": "6c2c1cd6-a607-48a2-9600-4c84bf71e80d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "SetPartyData",
                    "help": "set the party id and member count data (_party_id, _party_count, _party_max)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_party",
                    "returnType": 2
                },
                {
                    "id": "e8c9f2c0-af0e-46b2-a356-b0077cd3d5c6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "SetMatchSecret",
                    "help": "set the match secret, and whether or not the match represents a finite \"match\" (_match_secret, _instance)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_match_secret",
                    "returnType": 2
                },
                {
                    "id": "246c6544-3eac-429e-b9f8-c139ae9340fc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "SetJoinSecret",
                    "help": "set the unique, encrypted join secret token (_join_secret)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_join_secret",
                    "returnType": 2
                },
                {
                    "id": "3fe4a103-ca21-4c8e-942a-62ee4525f2c0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "SetSpectateSecret",
                    "help": "set the unique, encrypted spectate secret token (_spectate_secret)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_set_spectate_secret",
                    "returnType": 2
                },
                {
                    "id": "60509b54-26ce-4c3d-990c-7af307ddd776",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": false,
                    "kind": 1,
                    "name": "RegisterCallbacks",
                    "returnType": 1
                },
                {
                    "id": "4e9c814d-6611-4df5-9b53-0d6cd7344ac3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "Respond",
                    "help": "send a reply to `ask to join` request (_user_id, _reply)",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_respond",
                    "returnType": 2
                },
                {
                    "id": "a980c462-dc6a-49b0-8ec7-aa00424ac3f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Shutdown",
                    "help": "Shutdown Discord",
                    "hidden": false,
                    "kind": 1,
                    "name": "discord_shutdown",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "60509b54-26ce-4c3d-990c-7af307ddd776",
                "8c79e4be-1fb9-42ef-a3dc-a4dd10c6e872",
                "eac5bcac-0f33-4f92-9307-61d802444673",
                "e1643323-eb15-427e-8a86-0597d118cbfc",
                "c4470370-5c10-49df-9544-b84e606dde10",
                "65f941a3-5e48-4e7d-adfa-67f84e822e1e",
                "d20de589-4f37-4e52-82d2-8f364333e80e",
                "9e00e9b2-759f-418b-823f-a5f870b38492",
                "7beea45c-9d4c-4fbb-adf2-d8ee7e2891f0",
                "72695b6f-646e-4fb6-a0b3-f0d4381c2287",
                "6c2c1cd6-a607-48a2-9600-4c84bf71e80d",
                "e8c9f2c0-af0e-46b2-a356-b0077cd3d5c6",
                "246c6544-3eac-429e-b9f8-c139ae9340fc",
                "3fe4a103-ca21-4c8e-942a-62ee4525f2c0",
                "4e9c814d-6611-4df5-9b53-0d6cd7344ac3",
                "a980c462-dc6a-49b0-8ec7-aa00424ac3f2"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": null,
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 35184372088898,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": null,
    "tvosdelegatename": null,
    "tvosmaccompilerflags": null,
    "tvosmaclinkerflags": null,
    "tvosplistinject": null,
    "version": "1.1.0"
}