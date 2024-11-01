@echo off

for %%f in (Data\speech*.vdf) do (
	"./_work/tools/GothicVDFS/GothicVDFS.exe" /X "%%f"
	ren %%f %%~nxf.disabled
)