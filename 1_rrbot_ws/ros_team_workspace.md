# RosTeamWorkspace
ros2自动生成代码工具（主要是`ros2-control`）
## 安装
```bash
git clone https://github.com/StoglRobotics/ros_team_workspace.git
source ros_team_workspace/setup.bash
setup-auto-sourcing  # 自动source，并且让终端更好看
```

## 创建 robot_description 包
在工作区目录下：
```bash
ros2 pkg create xxx_description --destination-directory src
colcon build
source install/setup.bash
cd src/xxx_description
set-robot-description xxx
```