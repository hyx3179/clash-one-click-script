curl https://github.com/tindy2013/subconverter/releases/download/v0.6.4/subconverter_win64.7z -OutFile "subconverter_win64.7z"
curl https://github.com/Dreamacro/clash/releases/download/v1.2.0/clash-windows-amd64-v1.2.0.zip  -OutFile "clash-windows-amd64.zip"
./7z.exe x subconverter_win64.7z
./7z.exe x clash-windows-amd64.zip
mkdir clash
mv clash-windows-amd64.exe clash
cp pref.ini subconverter
cp generate.ini subconverter
notepad.exe subconverter/generate.ini