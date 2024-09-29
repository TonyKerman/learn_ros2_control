// Copyright (c) 2022, Stogl Robotics Consulting UG (haftungsbeschränkt) (template)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <limits>
#include <vector>

#include "my_hardwareinterfaces/rrbot_hardware_interface.hpp"
#include "hardware_interface/types/hardware_interface_type_values.hpp"
#include "rclcpp/rclcpp.hpp"

namespace my_hardwareinterfaces
{
/*
变量 info_ 用于存储从urdf中读取的ros2_control参数
注意：info_ 中参数的值的类型是string
info_
|_joints[]
  |_name
  |_hardware_interface
  |_command_interfaces[] (position, velocity, effort等)
    |_name
    |_min 等自定义参数
  |_state_interfaces[] (position, velocity, effort等)
    |_name
    |_initial_value 等自定义参数（string类型）
*/
hardware_interface::CallbackReturn RRBotHardwareInterface::on_init(
  const hardware_interface::HardwareInfo & info)
{
  if (hardware_interface::SystemInterface::on_init(info) != CallbackReturn::SUCCESS)
  {
    return CallbackReturn::ERROR;
  }

  // TODO(anyone): read parameters and initialize the hardware
  hw_states_.resize(info_.joints.size(), std::numeric_limits<double>::quiet_NaN());
  hw_commands_.resize(info_.joints.size(), std::numeric_limits<double>::quiet_NaN());
  // real_joint_positions_是用来模拟真实的机器人状态的
  

  return CallbackReturn::SUCCESS;
}

 /*
 
 */
 
hardware_interface::CallbackReturn RRBotHardwareInterface::on_configure( const rclcpp_lifecycle::State & previous_state)
{
  // TODO(anyone): prepare the robot to be ready for read calls and write calls of some interfaces
  real_joint_positions_.resize(info_.joints.size(), std::numeric_limits<double>::quiet_NaN());
  return CallbackReturn::SUCCESS;
}
/*
作用：读取info_中的参数，将其转换为StateInterface类型，并存储在state_interfaces中,返回state_interfaces给ros2_control resource manager
同时，初始化hw_states_和hw_commands_两个vector
state_interfaces是一个vector，其中的元素是StateInterface类型,其包含hw_states_的地址，以便ros2_control resource manager可以读取到这些状态，
并将其传递给controller
*/
std::vector<hardware_interface::StateInterface> RRBotHardwareInterface::export_state_interfaces()
{
  std::vector<hardware_interface::StateInterface> state_interfaces;

  for (size_t i = 0; i < info_.joints.size(); ++i)
  {
    // 设置hw_states_的初始值
    hw_states_[i]=stod(info_.joints[i].state_interfaces[0].initial_value);
    state_interfaces.emplace_back(hardware_interface::StateInterface(
      // TODO(anyone): insert correct interfaces
      info_.joints[i].name, info_.joints[i].state_interfaces[0].name, &hw_states_[i]));
  }

  return state_interfaces;
}

std::vector<hardware_interface::CommandInterface> RRBotHardwareInterface::export_command_interfaces()
{
  std::vector<hardware_interface::CommandInterface> command_interfaces;
  for (size_t i = 0; i < info_.joints.size(); ++i)
  {
    command_interfaces.emplace_back(hardware_interface::CommandInterface(
      // TODO(anyone): insert correct interfaces
      info_.joints[i].name, hardware_interface::HW_IF_POSITION, &hw_commands_[i]));
  }

  return command_interfaces;
}

hardware_interface::CallbackReturn RRBotHardwareInterface::on_activate(
  const rclcpp_lifecycle::State & /*previous_state*/)
{
  // TODO(anyone): prepare the robot to receive commands
  hw_commands_=hw_states_;
  real_joint_positions_=hw_states_;
  return CallbackReturn::SUCCESS;
}

hardware_interface::CallbackReturn RRBotHardwareInterface::on_deactivate(
  const rclcpp_lifecycle::State & /*previous_state*/)
{
  // TODO(anyone): prepare the robot to stop receiving commands

  return CallbackReturn::SUCCESS;
}
/*
read函数用于和硬件交互，读取机器人的状态，将其存储在hw_states_中
*/
hardware_interface::return_type RRBotHardwareInterface::read(
  const rclcpp::Time & /*time*/, const rclcpp::Duration & /*period*/)
{
  // TODO(anyone): read robot states
    hw_states_ = real_joint_positions_;
    printf("read\n");
    for(auto i:hw_states_)
    {
        printf("%f\n",i);
    }
  return hardware_interface::return_type::OK;
}
/*
write函数用于和硬件交互，将机器人的命令发送给硬件
*/
hardware_interface::return_type RRBotHardwareInterface::write(
  const rclcpp::Time & /*time*/, const rclcpp::Duration & /*period*/)
{
  // TODO(anyone): write robot's commands'
    real_joint_positions_ = hw_commands_;
    printf("write\n");
    for(auto i:hw_commands_)
    {
        printf("%f\n",i);
    }

  return hardware_interface::return_type::OK;
}

}  // namespace my_hardwareinterfaces

#include "pluginlib/class_list_macros.hpp"

PLUGINLIB_EXPORT_CLASS(
  my_hardwareinterfaces::RRBotHardwareInterface, hardware_interface::SystemInterface)
