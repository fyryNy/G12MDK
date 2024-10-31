[Setup]
AppName=Gothic 1/2 Mod Development Kit - {#AppType} installer
AppPublisher=fyryNy
AppPublisherURL=https://github.com/fyryNy/
AppVersion=1.0.0
OutputDir=.
OutputBaseFilename=G12MDK-{#AppType}
DefaultDirName={sd}\GMDK
AppendDefaultDirName=no
Uninstallable=no
CreateUninstallRegKey=no
DirExistsWarning=no
WizardStyle=modern
SetupIconFile=icon.ico
WizardSmallImageFile=icon.bmp
WizardImageAlphaFormat=premultiplied
UsePreviousAppDir=no

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "cs"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "de"; MessagesFile: "compiler:Languages\German.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"

[Types]
Name: "g12mdk"; Description: "Gothic Mod Development Kit"; Flags: iscustom;