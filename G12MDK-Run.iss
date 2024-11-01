[Run]
; Install Microsoft Visual C++ Redistributable AIO x86/x64
Filename: "{tmp}\VisualCppRedist_AIO_x86_x64.exe"; Parameters: "/y";  Components: vcredist;

; Install Union Primary Universal (playerkit + patched game executables) and Union 1.0m
Filename: "{tmp}\Union_Primary_Universal.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 0"" ""-var language ""POL"""" ""-silent"""; Components: union\primary_patch; Tasks: game_version\g1;
Filename: "{tmp}\Union_1_0m.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 0"" ""-var action 0"" ""-silent"""; Components: union\Union_1_0m; Tasks: game_version\g1;
Filename: "{tmp}\Union_Primary_Universal.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 3"" ""-var language ""POL"""" ""-silent"""; Components: union\primary_patch; Tasks: game_version\g2notr;
Filename: "{tmp}\Union_1_0m.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 3"" ""-var action 0"" ""-silent"""; Components: union\Union_1_0m; Tasks: game_version\g2notr;

; Extract Spacer.NET
Filename: "{tmp}\7za.exe"; Parameters: "e ""{tmp}\SpacerNET.zip"" -o""{app}\Data\ModVDF\"" *.mod -r -aoa"; Flags: runhidden runascurrentuser; Components: union\plugins\spacer_net;
Filename: "{tmp}\7za.exe"; Parameters: "e ""{tmp}\SpacerNET.zip"" -o""{app}\System\"" *.ico -r -aoa"; Flags: runhidden runascurrentuser; Components: union\plugins\spacer_net;
Filename: "{tmp}\7za.exe"; Parameters: "e ""{tmp}\SpacerNET.zip"" -o""{app}\System\"" *.ini -r -aoa"; Flags: runhidden runascurrentuser; Components: union\plugins\spacer_net;

; Extract renderer
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\LegacyAltRenderer.zip"" -o""{app}\"" * -r -aoa"; Flags: runhidden runascurrentuser; Components: renderer\altrenderer;

; Extract game scripts from zip
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\scripts.zip"" -o""{app}\"" * -r -aoa"; Flags: runhidden runascurrentuser; Components: scripts;

; Extract other game assets from vdf files using GothicVDFS
; Animations
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\anims.vdf"" ""{app}"""; Components: assets\selected\anims or assets\all; Check: FileExists(ExpandConstant('{app}\Data\anims.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\anims.vdf'));
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\anims_addon.vdf"" ""{app}"""; Components: assets\selected\anims or assets\all; Tasks: game_version\g2notr; Check: FileExists(ExpandConstant('{app}\Data\anims_addon.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\anims_addon.vdf'));
; Meshes
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\meshes.vdf"" ""{app}"""; Components: assets\selected\meshes or assets\all; Check: FileExists(ExpandConstant('{app}\Data\meshes.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\meshes.vdf'));
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\meshes_addon.vdf"" ""{app}"""; Components: assets\selected\meshes or assets\all; Tasks: game_version\g2notr; Check: FileExists(ExpandConstant('{app}\Data\meshes_addon.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\meshes_addon.vdf'));
; Sounds
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\sounds.vdf"" ""{app}"""; Components: assets\selected\sounds or assets\all; Check: FileExists(ExpandConstant('{app}\Data\sounds.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\sounds.vdf'));
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\sounds_addon.vdf"" ""{app}"""; Components: assets\selected\sounds or assets\all; Tasks: game_version\g2notr; Check: FileExists(ExpandConstant('{app}\Data\sounds_addon.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\sounds_addon.vdf'));
; Textures
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\textures.vdf"" ""{app}"""; Components: assets\selected\textures or assets\all; Check: FileExists(ExpandConstant('{app}\Data\textures.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\textures.vdf'));
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\textures_addon.vdf"" ""{app}"""; Components: assets\selected\textures or assets\all; Tasks: game_version\g2notr; Check: FileExists(ExpandConstant('{app}\Data\textures_addon.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\textures_addon.vdf'));
; Worlds
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\Worlds.vdf"" ""{app}"""; Components: assets\selected\worlds or assets\all; Check: FileExists(ExpandConstant('{app}\Data\Worlds.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\Worlds.vdf'));
Filename: "{app}\_work\Tools\GothicVDFS\GothicVDFS.exe"; Parameters: "/X ""{app}\Data\Worlds_Addon.vdf"" ""{app}"""; Components: assets\selected\worlds or assets\all; Tasks: game_version\g2notr; Check: FileExists(ExpandConstant('{app}\Data\Worlds_Addon.vdf')); AfterInstall: DisableVDF(ExpandConstant('{app}\Data\Worlds_Addon.vdf'));

; Convert all textures from .tex to .tga using GothicZTEX
Filename: "{app}\_work\Tools\GothicZTEX\GothicZTEX.exe"; Parameters: "/C ""{app}\_work\Data\Textures\"""; Components: assets\selected\textures or assets\all; Tasks: convert_textures; Check: AnyFileExists(ExpandConstant('{app}\_work\Data\Textures\_compiled\*.TEX'));