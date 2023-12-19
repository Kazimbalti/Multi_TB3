import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():

    nav2_yaml = os.path.join(get_package_share_directory('localization_server'), 'config', 'amcl_config.yaml')
    map_file = os.path.join(get_package_share_directory('map_server'), 'config', 'turtlebot_area.yaml')
    nav2_params_1 = os.path.join(get_package_share_directory('path_planner_server'), 'config', 'nav2_params_1.yaml')
    nav2_params_2 = os.path.join(get_package_share_directory('path_planner_server'), 'config', 'nav2_params_2.yaml')

    
    return LaunchDescription([    

        # Nodes for tb3_0

        Node(
            namespace='tb3_0',
            package='nav2_controller',
            executable='controller_server',
            name='controller_server',
            output='screen',
            parameters=[nav2_params_1]),

        Node(
            namespace='tb3_0',
            package='nav2_planner',
            executable='planner_server',
            name='planner_server',
            output='screen',
            parameters=[nav2_params_1]),
            
        Node(
            namespace='tb3_0',
            package='nav2_behaviors',
            executable='behavior_server',
            name='behavior_server',
            parameters=[nav2_params_1],
            output='screen'),

        Node(
            namespace='tb3_0',
            package='nav2_bt_navigator',
            executable='bt_navigator',
            name='bt_navigator',
            output='screen',
            parameters=[nav2_params_1]),

        Node(
            package='nav2_lifecycle_manager',
            executable='lifecycle_manager',
            name='tb3_0_lifecycle_manager_pathplanner',
            output='screen',
            parameters=[{'autostart': True},
                        {'bond_timeout':0.0},
                        {'node_names': ['tb3_0/planner_server',
                                        'tb3_0/controller_server',
                                        'tb3_0/behavior_server',
                                        'tb3_0/bt_navigator']}]),
        # Nodes for tb3_1

        Node(
            namespace='tb3_1',
            package='nav2_controller',
            executable='controller_server',
            name='controller_server',
            output='screen',
            parameters=[nav2_params_2]),

        Node(
            namespace='tb3_1',
            package='nav2_planner',
            executable='planner_server',
            name='planner_server',
            output='screen',
            parameters=[nav2_params_2]),
            
        Node(
            namespace='tb3_1',
            package='nav2_behaviors',
            executable='behavior_server',
            name='behavior_server',
            parameters=[nav2_params_2],
            output='screen'),

        Node(
            namespace='tb3_1',
            package='nav2_bt_navigator',
            executable='bt_navigator',
            name='bt_navigator',
            output='screen',
            parameters=[nav2_params_2]),

        Node(
            package='nav2_lifecycle_manager',
            executable='lifecycle_manager',
            name='tb3_1_lifecycle_manager_pathplanner',
            output='screen',
            parameters=[{'autostart': True},
                        {'bond_timeout':0.0},
                        {'node_names': ['tb3_1/planner_server',
                                        'tb3_1/controller_server',
                                        'tb3_1/behavior_server',
                                        'tb3_1/bt_navigator']}])
    ])