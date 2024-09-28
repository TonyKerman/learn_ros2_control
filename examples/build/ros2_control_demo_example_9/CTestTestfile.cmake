# CMake generated Testfile for 
# Source directory: /home/tony/ros2_control/examples/src/example_9
# Build directory: /home/tony/ros2_control/examples/build/ros2_control_demo_example_9
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(example_9_urdf_xacro "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/test_results/ros2_control_demo_example_9/example_9_urdf_xacro.xunit.xml" "--package-name" "ros2_control_demo_example_9" "--output-file" "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/ament_cmake_pytest/example_9_urdf_xacro.txt" "--command" "/usr/bin/python3" "-u" "-m" "pytest" "/home/tony/ros2_control/examples/src/example_9/test/test_urdf_xacro.py" "-o" "cache_dir=/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/ament_cmake_pytest/example_9_urdf_xacro/.cache" "--junit-xml=/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/test_results/ros2_control_demo_example_9/example_9_urdf_xacro.xunit.xml" "--junit-prefix=ros2_control_demo_example_9")
set_tests_properties(example_9_urdf_xacro PROPERTIES  LABELS "pytest" TIMEOUT "60" WORKING_DIRECTORY "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pytest/cmake/ament_add_pytest_test.cmake;169;ament_add_test;/home/tony/ros2_control/examples/src/example_9/CMakeLists.txt;68;ament_add_pytest_test;/home/tony/ros2_control/examples/src/example_9/CMakeLists.txt;0;")
add_test(view_example_9_launch "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/test_results/ros2_control_demo_example_9/view_example_9_launch.xunit.xml" "--package-name" "ros2_control_demo_example_9" "--output-file" "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/ament_cmake_pytest/view_example_9_launch.txt" "--command" "/usr/bin/python3" "-u" "-m" "pytest" "/home/tony/ros2_control/examples/src/example_9/test/test_view_robot_launch.py" "-o" "cache_dir=/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/ament_cmake_pytest/view_example_9_launch/.cache" "--junit-xml=/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/test_results/ros2_control_demo_example_9/view_example_9_launch.xunit.xml" "--junit-prefix=ros2_control_demo_example_9")
set_tests_properties(view_example_9_launch PROPERTIES  LABELS "pytest" TIMEOUT "60" WORKING_DIRECTORY "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pytest/cmake/ament_add_pytest_test.cmake;169;ament_add_test;/home/tony/ros2_control/examples/src/example_9/CMakeLists.txt;69;ament_add_pytest_test;/home/tony/ros2_control/examples/src/example_9/CMakeLists.txt;0;")
add_test(run_example_9_launch "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/test_results/ros2_control_demo_example_9/run_example_9_launch.xunit.xml" "--package-name" "ros2_control_demo_example_9" "--output-file" "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/ament_cmake_pytest/run_example_9_launch.txt" "--command" "/usr/bin/python3" "-u" "-m" "pytest" "/home/tony/ros2_control/examples/src/example_9/test/test_rrbot_launch.py" "-o" "cache_dir=/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/ament_cmake_pytest/run_example_9_launch/.cache" "--junit-xml=/home/tony/ros2_control/examples/build/ros2_control_demo_example_9/test_results/ros2_control_demo_example_9/run_example_9_launch.xunit.xml" "--junit-prefix=ros2_control_demo_example_9")
set_tests_properties(run_example_9_launch PROPERTIES  LABELS "pytest" TIMEOUT "60" WORKING_DIRECTORY "/home/tony/ros2_control/examples/build/ros2_control_demo_example_9" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pytest/cmake/ament_add_pytest_test.cmake;169;ament_add_test;/home/tony/ros2_control/examples/src/example_9/CMakeLists.txt;70;ament_add_pytest_test;/home/tony/ros2_control/examples/src/example_9/CMakeLists.txt;0;")
