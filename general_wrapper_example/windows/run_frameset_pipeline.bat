cd out
SET EYS3D_HOME=.\eYs3D\
echo %EYS3D_HOME%

frameset_pipeline.test.exe
cd ..

SET EYS3D_HOME=""