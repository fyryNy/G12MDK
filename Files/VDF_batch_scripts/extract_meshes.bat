@echo off

for %%f in (Data\meshes*.vdf) do (
	"./_work/tools/GothicVDFS/GothicVDFS.exe" /X "%%f"
	ren %%f %%~nxf.disabled
)