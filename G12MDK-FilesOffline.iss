[Files]
; Copy 7-Zip 24.08 (2024-08-11) standalone console to temp
; https://7-zip.org/download.html
Source: "Files\Utilities\7za.exe"; DestDir: "{tmp}\"; Flags: deleteafterinstall;

; Copy Microsoft Visual C++ Redistributable AIO x86/x64 to temp
; https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe
Source: "Files\Required\VisualCppRedist_AIO_x86_x64.exe"; DestDir: "{tmp}\"; Attribs: hidden; Flags: deleteafterinstall; Components: vcredist;

; Copy Union Primary Universal (playerkit + patched game executables) and Union 1.0m installers to temp
Source: "Files\Required\Union_Primary_Universal.exe"; DestDir: "{tmp}\"; Attribs: hidden;  Flags: deleteafterinstall; Components: union\primary_patch;
Source: "Files\Required\Union_1_0m.exe"; DestDir: "{tmp}\"; Attribs: hidden; Flags: deleteafterinstall; Components: union\Union_1_0m;

; Copy GothicVDFS to game dir
; http://www.bendlins.de/nico/gothic2/GothicVDFS.zip
Source: "Files\Tools\GothicVDFS\GothicVDFS.exe"; DestDir: "{app}\_work\Tools\GothicVDFS\"; Flags: recursesubdirs;

; Copy GothicZTEX to game dir
; http://www.bendlins.de/nico/gothic2/GothicZTEX.zip
Source: "Files\Tools\GothicZTEX\GothicZTEX.exe"; DestDir: "{app}\_work\Tools\GothicZTEX\"; Flags: recursesubdirs;
Source: "Files\Tools\GothicZTEX\GothicZTEX-G1.ini"; DestDir: "{app}\_work\Tools\GothicZTEX\"; DestName: "GothicZTEX.ini"; Flags: recursesubdirs; Tasks: game_version\g1;
Source: "Files\Tools\GothicZTEX\GothicZTEX-G2.ini"; DestDir: "{app}\_work\Tools\GothicZTEX\"; DestName: "GothicZTEX.ini"; Flags: recursesubdirs; Tasks: game_version\g2notr;

; Copy standard spacer to game dir
Source: "Files\Tools\Spacer\spacer.exe"; DestDir: "{app}\system\"; Flags: recursesubdirs; Tasks: game_version\g1;
Source: "Files\Tools\Spacer\spacer2.exe"; DestDir: "{app}\system\"; Flags: recursesubdirs; Tasks: game_version\g2notr;

; Copy zSpy to game dir
Source: "Files\Tools\zSpy\zSpy.exe"; DestDir: "{app}\system\"; Flags: recursesubdirs;

; Copy latest version of Spacer.NET
; https://github.com/postm1/SpacerNET_Union
Source: "Files\Plugins\SpacerNET\SpacerNET_G1.zip"; DestDir: "{tmp}\"; DestName: "SpacerNET.zip"; Attribs: hidden; Flags: deleteafterinstall; Components: union\plugins\spacer_net; Tasks: game_version\g1;
Source: "Files\Plugins\SpacerNET\SpacerNET_G2NR.zip"; DestDir: "{tmp}\"; DestName: "SpacerNET.zip"; Attribs: hidden; Flags: deleteafterinstall; Components: union\plugins\spacer_net; Tasks: game_version\g2notr;

; Copy latest version of MarvinHelper
; https://drive.usercontent.google.com/download?id=1yicnQtFQJG29mxrVLA1F6ly-LJNL-UOQ&export=download&authuser=0
Source: "Files\Plugins\MarvinHelper\Union_MarvinHelper.vdf"; DestDir: "{app}\Data\Plugins\"; Components: union\plugins\marvin_helper; Tasks: game_version\g2notr;

; Copy LegacyAltRenderer
; https://github.com/SaiyansKing/Gothic-LegacyAltRenderer
Source: "Files\Renderers\LegacyAltRenderer\LegacyAltRenderer.zip"; DestDir: "{tmp}\"; Attribs: hidden; Flags: deleteafterinstall; Components: renderer\altrenderer;

; Copy zipped game script to game dir
; All scripts from https://github.com/VaanaCZ/
; G1 scripts
Source: "Files\Scripts\G1-EN.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: en; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-CS.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: cs; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-DE.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: de; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-FR.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: fr; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-IT.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: it; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-PL.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: pl; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-RU.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: ru; Flags: deleteafterinstall;
Source: "Files\Scripts\G1-ES.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: es; Flags: deleteafterinstall;
; G2NotR scripts
Source: "Files\Scripts\G2NotR-EN.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: en; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-CS.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: cs; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-DE.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: de; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-FR.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: fr; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-IT.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: it; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-PL.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: pl; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-RU.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: ru; Flags: deleteafterinstall;
Source: "Files\Scripts\G2NotR-ES.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: es; Flags: deleteafterinstall;

; Copy batch scripts for extracting vdfs to game dir
Source: "Files\VDF_batch_scripts\extract_anims.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\anims;
Source: "Files\VDF_batch_scripts\extract_meshes.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\meshes;
Source: "Files\VDF_batch_scripts\extract_sounds.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\sounds;
Source: "Files\VDF_batch_scripts\extract_speech.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\speech;
Source: "Files\VDF_batch_scripts\extract_textures.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\textures;
Source: "Files\VDF_batch_scripts\extract_worlds.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\worlds;

; Copy original splitted world zens to tmp
Source: "Files\Worlds\G1_Worlds.zip"; DestDir: "{tmp}\"; DestName: "Worlds.zip"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\worlds; Tasks: game_version\g1; 
Source: "Files\Worlds\G2NotR_Worlds.zip"; DestDir: "{tmp}\"; DestName: "Worlds.zip"; Attribs: hidden; Flags: deleteafterinstall; Components: assets\all or assets\selected\worlds; Tasks: game_version\g2notr; 