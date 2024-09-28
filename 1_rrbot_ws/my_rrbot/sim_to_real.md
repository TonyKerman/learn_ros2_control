# sim_to_real
将控制gazebo仿真机器人的ros2_control工程转化为控制真实机器人的工程
## 1.修改launch文件
ros2_control使用gazebo仿真时,`controller_manager`包含在gazebo节点中，所以修改时要添加`controller_manager`节点，同时删除gazebo有关节点和设置。

`1_rrbot_ws\my_rrbot\rrbot_bringup\launch\rrbot_sim_gazebo_classic.launch.py`修改为
`1_rrbot_ws\my_rrbot\rrbot_bringup\launch\rrbot_real.launch.py`
1. "simulation_controllers:="," "
2. "sim_gazebo_classic:=false",
3. 添加 control_node 
4. 删除 gazebo 有关 node
## 2.修改ros2_control.xacro
