# ros2_control_cli
ros2_control 命令行工具

**要先 source install/setup.bash**

## 查看存在的 hardware_interfaces
```bash
$ ros2 control list_hardware_interfaces
# 输出类似：
command interfaces
        joint1/position [available] [claimed]
        joint2/position [available] [claimed]
state interfaces
        joint1/position
        joint2/position
```
## 查看存在的 controllers
```bash
$ ros2 control list_controllers
# 输出类似：
joint_state_broadcaster     joint_state_broadcaster/JointStateBroadcaster        active #一定会有这个
forward_position_controller forward_command_controller/ForwardCommandController  active 
```
## 更换一个controller
将`joint_trajectory_controller`更换为 `forward_position_controller`
```bash
ros2 run controller_manager spawner forward_position_controller --inactive
ros2 control switch_controllers --deactivate joint_trajectory_controller --activate forward_position_controller
```