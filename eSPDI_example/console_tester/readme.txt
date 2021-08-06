1. How to build console tool:

sh build.sh (For x86-64, select '1'. For NVIDIA TX2 and NVIDIA NANO, select '2'. )

2. How to run console tool:

(1) For x86-64:
sh run_x86.sh

(2) For NVIDIA TX2 and NVIDIA NANO:
sh run_arm64_tx2.sh


3. There are the macros in main.cpp to enable/disable the demo:


(1) _ENABLE_INTERACTIVE_UI_ : Configure the camera device through step-by-step instructions. By default, it is enabled.
(2) _ENABLE_PROFILE_UI_ : Profile the frame rate of camera device. By default, it is disabled.
(3) _ENABLE_FILESAVING_DEMO_UI_ : Save rgb files of color stream and yuyv files of depth stream. By default, it is disabled.
(4) _ENABLE_FILESAVING_DEMO_POINT_CLOUD_UI_: Run the point cloud demo. By default, it is disabled.


4. The following steps show how to run 'point cloud demo' and check the running result:

(1) sh run_x86.sh (for x86-64) (If your running platform is Nvidia TX2/Nano, the command should be 'sh run_arm64_tx2.sh')
(2) select '21' to run 'point cloud demo'.
(3) select '255' to exit the program 'console_tester'
(4) cd out_img/
(5) There are 10 *.ply files in  out_img. You could type the following command to view the result of point cloud:
    meshlab  [ply_file_name]

    For example, the ply_file_name is 'cloud_1_20210805_171128.ply'.
    meshlab cloud_1_20210805_171128.ply
