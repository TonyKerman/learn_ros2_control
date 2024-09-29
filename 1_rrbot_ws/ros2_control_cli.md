# ros2_control_cli
ros2_control 命令行工具
* 使用之前要 `source install/setup.bash`

## 查看hardware_interfaces
```bash
$ ros2 control list_hardware_interfaces

command interfaces
        joint1/position [available] [claimed]
        joint2/position [available] [claimed]
state interfaces
        joint1/position
        joint2/position
```
## 查看控制器
```bash
$ ros2 control list_controllers

joint_state_broadcaster     joint_state_broadcaster/JointStateBroadcaster        active
forward_position_controller forward_command_controller/ForwardCommandController  active
```
## 更换控制器
`ros2 run controller_manager spawner forward_position_controller --inactive`
`ros2 control switch_controllers --deactivate joint_trajectory_controller --activate forward_position_controller`