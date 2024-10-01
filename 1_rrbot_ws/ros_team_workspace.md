# RosTeamWorkspace

## install
```bash
git clone https://github.com/StoglRobotics/ros_team_workspace.git
source ros_team_workspace/setup.bash
setup-auto-sourcing  # Make RosTeamWorkspace automatically sourced when open a new terminal (The best experience)
```

## robot description
```bash
ros2 pkg create xxx_description --destination-directory src
colcon build
source install/setup.bash
cd src/xxx_description
set-robot-description xxx
```