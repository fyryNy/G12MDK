[Run]
; Install Microsoft Visual C++ Redistributable AIO x86/x64
Filename: "{tmp}\VisualCppRedist_AIO_x86_x64.exe"; Parameters: "/y";  Components: vcredist; StatusMsg: "Installing Microsoft Visual C++ Redistributable AIO x86/x64..."; Flags: skipifdoesntexist runascurrentuser;

; Install Union Primary Universal (PlayerKit + patched game executable) and Union 1.0m to game dir
Filename: "{tmp}\Union_Primary_Universal.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 0"" ""-var language ""POL"""" ""-silent"""; Components: union\primary_patch; Tasks: game_version\g1; StatusMsg: "Installing Union Primary Patch (PlayerKit + patched game executable)...";
Filename: "{tmp}\Union_1_0m.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 0"" ""-var action 0"" ""-silent"""; Components: union\Union_1_0m; Tasks: game_version\g1; StatusMsg: "Installing Union 1.0m...";
Filename: "{tmp}\Union_Primary_Universal.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 3"" ""-var language ""POL"""" ""-silent"""; Components: union\primary_patch; Tasks: game_version\g2notr; StatusMsg: "Installing Union Primary Patch (PlayerKit + patched game executable)...";
Filename: "{tmp}\Union_1_0m.exe"; Parameters: """-var gamepath {app}\\"" ""-var gamever 3"" ""-var action 0"" ""-silent"""; Components: union\Union_1_0m; Tasks: game_version\g2notr; StatusMsg: "Installing Union 1.0m...";

; Extract Spacer.NET to game dir
Filename: "{tmp}\7za.exe"; Parameters: "e ""{tmp}\SpacerNET.zip"" -o""{app}\Data\ModVDF\"" *.mod -r -aoa"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: union\plugins\spacer_net; StatusMsg: "Installing SpacerNET...";
Filename: "{tmp}\7za.exe"; Parameters: "e ""{tmp}\SpacerNET.zip"" -o""{app}\System\"" *.ico -r -aoa"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: union\plugins\spacer_net; StatusMsg: "Installing SpacerNET...";
Filename: "{tmp}\7za.exe"; Parameters: "e ""{tmp}\SpacerNET.zip"" -o""{app}\System\"" *.ini -r -aoa"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: union\plugins\spacer_net; StatusMsg: "Installing SpacerNET..."; AfterInstall: UpdateSpacerNETIni;

; Extract renderer to game dir
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\LegacyAltRenderer.zip"" -o""{app}\"" * -r -aoa"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: renderer\altrenderer; StatusMsg: "Installing LegacyAltRenderer...";

; Extract game scripts from zip to game dir
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\scripts.zip"" -o""{app}\"" * -r -aoa"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: scripts; StatusMsg: "Installing game scripts...";

; Extract other game assets from vdf files to game dir using GothicVDFS
; Animations
Filename: "{app}\extract_anims.bat"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\anims or assets\all; StatusMsg: "Extracting animations...";
; Meshes
Filename: "{app}\extract_meshes.bat"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\meshes or assets\all; StatusMsg: "Extracting meshes...";
; Sounds
Filename: "{app}\extract_sounds.bat"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\sounds or assets\all; StatusMsg: "Extracting sounds...";
; Speech
Filename: "{app}\extract_speech.bat"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\speech or assets\all; StatusMsg: "Extracting speech...";
; Textures
Filename: "{app}\extract_textures.bat"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\textures or assets\all; StatusMsg: "Extracting textures...";
; Worlds
Filename: "{app}\extract_worlds.bat"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\worlds or assets\all; StatusMsg: "Extracting worlds...";

; Extract original splitted world zens to game dir
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\Worlds.zip"" -o""{app}\"" * -r -aoa"; Flags: runhidden skipifdoesntexist runascurrentuser; Components: assets\selected\worlds or assets\all; StatusMsg: "Installing game scripts...";

; Convert all textures from .tex to .tga using GothicZTEX
Filename: "{app}\_work\Tools\GothicZTEX\GothicZTEX.exe"; Parameters: "/C ""{app}\_work\Data\Textures\"""; Components: assets\selected\textures or assets\all; Tasks: convert_textures; Check: AnyFileExists(ExpandConstant('{app}\_work\Data\Textures\_compiled\*.TEX')); StatusMsg: "Converting textures...";