import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def generate_launch_description():
    model_folder = 'turtlebot3_burger'
    pkg_gazebo_ros = get_package_share_directory('gazebo_ros')
    robot_desc_path = os.path.join(get_package_share_directory("turtlebot3_gazebo"), "urdf", "turtlebot3_burger.urdf")

    world = os.path.join(get_package_share_directory('turtlebot3_gazebo'),'worlds','turtlebot3_world.world')
    urdf_path1 = os.path.join(get_package_share_directory('turtlebot3_gazebo'),'models',model_folder+'_0','model.sdf')
    urdf_path2 = os.path.join(get_package_share_directory('turtlebot3_gazebo'),'models',model_folder+'_1','model.sdf')
    with open(robot_desc_path, 'r') as infp:
        robot_desc = infp.read()
    name1 = "tb3_0"
    name2 = "tb3_1"
    
    # 1. TB3_0

    spawn_robot1 = Node(
        package='gazebo_ros', 
        executable='spawn_entity.py', 
        arguments=[
            '-entity', name1, 
            '-file', urdf_path1, 
            '-x', '2.0', 
            '-y', '-0.5', 
            '-z', '0.01',
            '-robot_namespace', name1,
        ],
        output='screen'
    )
    robot_state_publisher1 = Node(
        package='robot_state_publisher',
        executable='robot_state_publisher',
        name='robot_state_publisher',
        namespace=name1,
        output='screen',
        parameters=[{'frame_prefix': name1 + '/',
                    'use_sim_time': True,
                    'robot_description': robot_desc}]
    )
    
    # 2. TB3_1

    spawn_robot2 = Node(
        package='gazebo_ros', 
        executable='spawn_entity.py', 
        arguments=[
            '-entity', name2, 
            '-file', urdf_path2, 
            '-x', '-2.0', 
            '-y', '-0.5', 
            '-z', '0.01',
            '-robot_namespace', name2,
        ],
        output='screen'
    )
    robot_state_publisher2 = Node(
        package='robot_state_publisher',
        executable='robot_state_publisher',
        name='robot_state_publisher',
        namespace=name2,
        output='screen',
        parameters=[{'frame_prefix': name2 + '/',
                    'use_sim_time': True,
                    'robot_description': robot_desc}]
    )
    
    # GAZEBO CLIENT AND SERVER

    gzserver_cmd = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(
            os.path.join(pkg_gazebo_ros, 'launch', 'gzserver.launch.py')
        ),
        launch_arguments={'world': world,'verbose':"true",'extra_gazebo_args': 'verbose'}.items()
    )

    gzclient_cmd = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(
            os.path.join(pkg_gazebo_ros, 'launch', 'gzclient.launch.py')
        ),
        launch_arguments={'verbose':"true"}.items()
    )    

    
    
    ld = LaunchDescription()
    ld.add_action(gzserver_cmd)
    ld.add_action(gzclient_cmd)
    ld.add_action(spawn_robot1)
    ld.add_action(robot_state_publisher1)
    ld.add_action(spawn_robot2)
    ld.add_action(robot_state_publisher2)



    # ld.add_action(hotel_mapping)
    return ld
