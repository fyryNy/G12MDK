# Gothic 1/2 Mod Development Kit

A new assembly of tools that are necessary to start modding these two wonderful games, composed into one simple installer.

## Installation
1. Install clean game (preferably from Steam/GOG).
2. Download [latest release](https://github.com/fyryNy/G12MDK/releases/latest/).
   - G12MDK-Offline.exe: Installer that contains all of the files inside itself; larger file size but can be used without internet access.
   - G12MDK-Online.exe: Installer that downloads all of the necessary files from the internet during the installation process.
3. Run the installer and choose your language. The chosen language will also indicate the language of game scripts that would be installed (if desired).
4. Provide a path to the main directory of the Gothic game, where GMDK should be installed.
5. Select desired components that should be installed.
6. Select the version of the game (Gothic 1 or Gothic 2 NotR) and additional tasks that should be performed.
7. Click `Install` and wait for the installation process to finish.

## Components
Always installed:  
- Microsoft Visual C++ Redistributable AIO x86/x64
- Union
  - Union Primary Universal: PlayerKit (patched game executable and GothicStarter)
  - Union 1.0m: game fixes, successor to SystemPack
  - Union plugins:
    - SpacerNET: Tool for world editing, better alternative for normal Spacer
    - MarvinHelper: Adds new console commands and features that can help with debugging
- GothicVDFS: Tool for viewing/building/extracting .vdf/.mod packages
- GothicZTEX: Tool for converting game textures from compiled .tex format to .tga
- zSpy: Tool necessary for debugging

Optional:  
- Alternative renderers
  - LegacyAltRenderer
- Game scripts
  - English
  - Czech
  - Deutsch
  - French
  - Italian
  - Polish
  - Russian
  - Spanish
- Extracting of all/selected game assets
  - Animations
  - Meshes
  - Sounds
  - Speech
  - Textures
  - Worlds

## Tasks
- Choose game version
  - Gothic 1
  - Gothic 2 NotR
- Convert all textures from .tex to .tga (if extracting of textures is selected)