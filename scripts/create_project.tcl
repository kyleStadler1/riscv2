# Define project parameters
set project_name "riscv2"
set project_dir "/home/user/projects/riscv2_project"

# Clean up previous project directory
file delete -force $project_dir

# Create a new Vivado project
create_project $project_name $project_dir -part xc7a35tcpg236-1

# Add source files
add_files ../src/PC.v
add_files ../src/ModeFSM.v
add_files ../src/MemIO.v
add_files ../src/InstrInject.v
add_files ../src/FetchLatch.v
add_files ../src/bramtest.v
add_files ../src/top.v

# Add IP core
read_ip ../ips/DualBRAM.xci

# Add constraints file
add_files -fileset constrs_1 ../constraints/constraints.xdc

# Set the top module to 'top'
set_property top top [current_fileset]

# Generate IP output products (required for new environments)
generate_target all [get_ips]

# Save and close the project
save_project_as $project_name
close_project
