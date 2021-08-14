rmdir /q /s build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release .. -G"Visual Studio 15 2017 Win64"
:: MSBuild need running under x64 VS developer prompt
msbuild /P:Configuration=Release INSTALL.vcxproj  /maxcpucount:12
cd ../

