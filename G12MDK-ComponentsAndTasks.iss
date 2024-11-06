[Components]
Name: "vcredist"; Description: "Microsoft Visual C++ Redistributable AIO x86/x64"; Types: g12mdk; Flags: fixed;
Name: "union"; Description: "Union"; Types: g12mdk; Flags: fixed;
Name: "union\primary_patch"; Description: "Union Primary Universal: PlayerKit (patched game executable and GothicStarter)"; Types: g12mdk; Flags: fixed;
Name: "union\Union_1_0m"; Description: "Union 1.0m: game fixes, successor to SystemPack"; Types: g12mdk; Flags: fixed;
Name: "union\plugins"; Description: "Union plugins"; Types: g12mdk; Flags: fixed;
Name: "union\plugins\spacer_net"; Description: "Spacer.NET: Tool for world editing, better alternative to normal Spacer"; Types: g12mdk; Flags: fixed;
Name: "union\plugins\marvin_helper"; Description: "MarvinHelper: Adds new console commands and features that can help with debugging"; Types: g12mdk; Flags: fixed;
Name: "gothic_vdfs"; Description: "GothicVDFS: Tool for viewing/building/extracting .vdf/.mod packages"; Types: g12mdk; Flags: fixed;
Name: "gothic_ztex"; Description: "GothicZTEX: Tool for converting game textures from compiled .tex format to .tga"; Types: g12mdk; Flags: fixed;
Name: "zspy"; Description: "zSpy: Tool necessary for debugging"; Types: g12mdk; Flags: fixed;

Name: "renderer"; Description: "Alternative renderer";
Name: "renderer\altrenderer"; Description: "LegacyAltRenderer"; Flags: exclusive;
//Name: "renderer\dx11_saiyansking"; Description: "GD3D11 - SaiyansKing's fork"; Flags: exclusive;
//Name: "renderer\dx11_shoun"; Description: "GD3D11 - Shoun's fork"; Flags: exclusive;

Name: "scripts"; Description: "Scripts - {language}";

Name: "assets"; Description: "Extract game assets";
Name: "assets\all"; Description: "All"; Flags: exclusive;
Name: "assets\selected"; Description: "Selected"; Flags: exclusive;
Name: "assets\selected\anims"; Description: "Animations"; Flags: dontinheritcheck;
Name: "assets\selected\meshes"; Description: "Meshes"; Flags: dontinheritcheck;
Name: "assets\selected\sounds"; Description: "Sounds"; Flags: dontinheritcheck;
Name: "assets\selected\speech"; Description: "Speech"; Flags: dontinheritcheck;
Name: "assets\selected\textures"; Description: "Textures"; Flags: dontinheritcheck;
Name: "assets\selected\worlds"; Description: "Worlds"; Flags: dontinheritcheck;

[Tasks]
Name: "game_version"; Description:"Choose game version"; Flags: exclusive;
Name: "game_version\g1"; Description:"Gothic 1"; Flags: exclusive;
Name: "game_version\g2notr"; Description:"Gothic 2 NotR"; Flags: exclusive;
Name: "convert_textures"; Description: "Convert textures"; Components: assets\all assets\selected\textures; Flags: unchecked;