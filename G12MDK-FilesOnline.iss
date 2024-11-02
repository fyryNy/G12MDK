[Files]
; Copy 7-Zip 24.08 (2024-08-11) standalone console to tmp
; https://7-zip.org/download.html
Source: "Files\Utilities\7za.exe"; DestDir: "{tmp}\"; Flags: deleteafterinstall;

; Download Microsoft Visual C++ Redistributable AIO x86/x64
; https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe
Source: "{tmp}\VisualCppRedist_AIO_x86_x64.exe"; DestDir: "{tmp}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: vcredist; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe'), ExpandConstant('VisualCppRedist_AIO_x86_x64.exe'));

; Download Union Primary Universal (playerkit + patched game executables) and Union 1.0m installers to tmp
Source: "{tmp}\Union_Primary_Universal.exe"; DestDir: "{tmp}\"; Attribs: hidden;  Flags: external deleteafterinstall; Components: union\primary_patch; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/Union_Primary_Universal.exe'), ExpandConstant('Union_Primary_Universal.exe'));
Source: "{tmp}\Union_1_0m.exe"; DestDir: "{tmp}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: union\Union_1_0m; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/Union_1_0m.exe'), ExpandConstant('Union_1_0m.exe'));

; Download GothicVDFS to game dir
; http://www.bendlins.de/nico/gothic2/GothicVDFS.zip
Source: "{tmp}\GothicVDFS.exe"; DestDir: "{app}\_work\Tools\GothicVDFS\"; Flags: external recursesubdirs; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/GothicVDFS.exe'), ExpandConstant('GothicVDFS.exe'));

; Download GothicZTEX to game dir
; http://www.bendlins.de/nico/gothic2/GothicZTEX.zip
Source: "{tmp}\GothicZTEX.exe"; DestDir: "{app}\_work\Tools\GothicZTEX\"; Flags: external recursesubdirs; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/GothicZTEX.exe'), ExpandConstant('GothicZTEX.exe'));
Source: "{tmp}\GothicZTEX-G1.ini"; DestDir: "{app}\_work\Tools\GothicZTEX\"; DestName: "GothicZTEX.ini"; Flags: external recursesubdirs; Tasks: game_version\g1; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/GothicZTEX-G1.ini'), ExpandConstant('GothicZTEX-G1.ini'));
Source: "{tmp}\GothicZTEX-G2.ini"; DestDir: "{app}\_work\Tools\GothicZTEX\"; DestName: "GothicZTEX.ini"; Flags: external recursesubdirs; Tasks: game_version\g2notr; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/GothicZTEX-G2.ini'), ExpandConstant('GothicZTEX-G2.ini'));

; Download standard spacer to game dir
Source: "{tmp}\spacer.exe"; DestDir: "{app}\system\"; Flags: external recursesubdirs; Tasks: game_version\g1; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/spacer.exe'), ExpandConstant('spacer.exe'));
Source: "{tmp}\spacer2.exe"; DestDir: "{app}\system\"; Flags: external recursesubdirs; Tasks: game_version\g2notr; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/spacer2.exe'), ExpandConstant('spacer2.exe'));

; Download zSpy to game dir
Source: "{tmp}\zSpy.exe"; DestDir: "{app}\system\"; Flags: external recursesubdirs; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/zSpy.exe'), ExpandConstant('zSpy.exe'));

; Download latest version of Spacer.NET to tmp
; https://github.com/postm1/SpacerNET_Union
Source: "{tmp}\SpacerNET.zip"; DestDir: "{tmp}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: union\plugins\spacer_net; Tasks: game_version\g1; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/postm1/SpacerNET_Union/releases/latest/download/SpacerNET_G1.zip'), ExpandConstant('SpacerNET.zip'));
Source: "{tmp}\SpacerNET.zip"; DestDir: "{tmp}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: union\plugins\spacer_net; Tasks: game_version\g2notr; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/postm1/SpacerNET_Union/releases/latest/download/SpacerNET_G2NR.zip'), ExpandConstant('SpacerNET.zip'));

; Download latest version of MarvinHelper to game dir
; https://drive.usercontent.google.com/download?id=1yicnQtFQJG29mxrVLA1F6ly-LJNL-UOQ&export=download&authuser=0
Source: "{tmp}\Union_MarvinHelper.vdf"; DestDir: "{app}\Data\Plugins\"; Flags: external; Components: union\plugins\marvin_helper; Tasks: game_version\g2notr; BeforeInstall: DownloadFile(ExpandConstant('https://drive.usercontent.google.com/download?id=1yicnQtFQJG29mxrVLA1F6ly-LJNL-UOQ&export=download&authuser=0'), ExpandConstant('Union_MarvinHelper.vdf'));

; Download LegacyAltRenderer to tmp
; https://github.com/SaiyansKing/Gothic-LegacyAltRenderer
Source: "{tmp}\LegacyAltRenderer.zip"; DestDir: "{tmp}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: renderer\altrenderer; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/SaiyansKing/Gothic-LegacyAltRenderer/releases/latest/download/LegacyAltRenderer.zip'), ExpandConstant('LegacyAltRenderer.zip'));

; Download zipped game script to tmp
; All scripts from https://github.com/VaanaCZ/
; G1 scripts
Source: "{tmp}\G1-EN.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: en; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-EN.zip'), ExpandConstant('G1-EN.zip'));
Source: "{tmp}\G1-CS.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: cs; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-CS.zip'), ExpandConstant('G1-CS.zip'));
Source: "{tmp}\G1-DE.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: de; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-DE.zip'), ExpandConstant('G1-DE.zip'));
Source: "{tmp}\G1-FR.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: fr; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-FR.zip'), ExpandConstant('G1-FR.zip'));
Source: "{tmp}\G1-IT.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: it; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-IT.zip'), ExpandConstant('G1-IT.zip'));
Source: "{tmp}\G1-PL.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: pl; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-PL.zip'), ExpandConstant('G1-PL.zip'));
Source: "{tmp}\G1-RU.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: ru; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-RU.zip'), ExpandConstant('G1-RU.zip'));
Source: "{tmp}\G1-ES.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g1; Languages: es; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G1-ES.zip'), ExpandConstant('G1-ES.zip'));
; G2NotR scripts
Source: "{tmp}\G2NotR-EN.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: en; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-EN.zip'), ExpandConstant('G2NotR-EN.zip'));
Source: "{tmp}\G2NotR-CS.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: cs; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-CS.zip'), ExpandConstant('G2NotR-CS.zip'));
Source: "{tmp}\G2NotR-DE.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: de; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-DE.zip'), ExpandConstant('G2NotR-DE.zip'));
Source: "{tmp}\G2NotR-FR.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: fr; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-FR.zip'), ExpandConstant('G2NotR-FR.zip'));
Source: "{tmp}\G2NotR-IT.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: it; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-IT.zip'), ExpandConstant('G2NotR-IT.zip'));
Source: "{tmp}\G2NotR-PL.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: pl; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-PL.zip'), ExpandConstant('G2NotR-PL.zip'));
Source: "{tmp}\G2NotR-RU.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: ru; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-RU.zip'), ExpandConstant('G2NotR-RU.zip'));
Source: "{tmp}\G2NotR-ES.zip"; DestDir: "{tmp}\"; DestName: "scripts.zip"; Attribs: hidden; Components: scripts; Tasks: game_version\g2notr; Languages: es; Flags: external deleteafterinstall; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Scripts/G2NotR-ES.zip'), ExpandConstant('G2NotR-ES.zip'));

; Download batch scripts for extracting vdfs to game dir
Source: "{tmp}\extract_anims.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\anims; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/extract_anims.bat'), ExpandConstant('extract_anims.bat'));
Source: "{tmp}\extract_meshes.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\meshes; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/extract_meshes.bat'), ExpandConstant('extract_meshes.bat'));
Source: "{tmp}\extract_sounds.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\sounds; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/extract_sounds.bat'), ExpandConstant('extract_sounds.bat'));
Source: "{tmp}\extract_speech.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\speech; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/extract_speech.bat'), ExpandConstant('extract_speech.bat'));
Source: "{tmp}\extract_textures.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\textures; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/extract_textures.bat'), ExpandConstant('extract_textures.bat'));
Source: "{tmp}\extract_worlds.bat"; DestDir: "{app}\"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\worlds; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/extract_worlds.bat'), ExpandConstant('extract_worlds.bat'));

; Download original splitted world zens to tmp
Source: "{tmp}\G1_Worlds.zip"; DestDir: "{tmp}\"; DestName: "Worlds.zip"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\worlds; Tasks: game_version\g1; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/G1_Worlds.zip'), ExpandConstant('G1_Worlds.zip'));
Source: "{tmp}\G2NotR_Worlds.zip"; DestDir: "{tmp}\"; DestName: "Worlds.zip"; Attribs: hidden; Flags: external deleteafterinstall; Components: assets\all or assets\selected\worlds; Tasks: game_version\g2notr; BeforeInstall: DownloadFile(ExpandConstant('https://github.com/fyryNy/G12MDK/releases/download/Files/G2NotR_Worlds.zip'), ExpandConstant('G2NotR_Worlds.zip'));