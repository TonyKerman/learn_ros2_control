# ros2_control_cli
ros2_control 

**source install/setup.bash first**

## 
```bash
$ ros2 control list_hardware_interfaces

command interfaces
        joint1/position [available] [claimed]
        joint2/position [available] [claimed]
state interfaces
        joint1/position
        joint2/position
```
##
```bash
$ ros2 control list_controllers

joint_state_broadcaster     joint_state_broadcaster/JointStateBroadcaster        active
forward_position_controller forward_command_controller/ForwardCommandController  active
```
##
`ros2 run controller_manager spawner forward_position_controller --inactive`
`ros2 control switch_controllers --deactivate joint_trajectory_controller --activate forward_position_controller`