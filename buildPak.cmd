rmdir /s /q build
mkdir build
mkdir build\source
mkdir build\source\Localization
mkdir build\source\Localization\Russian
mkdir build\source\Localization\Russian\Gender
xcopy /s /q Gender build\source\Localization\Russian\Gender
copy language.lsx build\source\Localization\Russian
copy russian.xml build\source\Localization\Russian
copy russian_to_F.xml build\source\Localization\Russian
.\Tools\Divine.exe -g dos2de -a create-package -c lz4hc -s %cd%\build\source\ -d %cd%\build\Russian.pak