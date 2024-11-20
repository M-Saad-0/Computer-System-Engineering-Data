
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Task01 -dir "H:/6th semester Data/By Hammad/DSD-Lab/Lab 08/Task 01/Task01/planAhead_run_1" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "H:/6th semester Data/By Hammad/DSD-Lab/Lab 08/Task 01/Task01/TopMultiplexer.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {H:/6th semester Data/By Hammad/DSD-Lab/Lab 08/Task 01/Task01} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "TopMultiplexer.ucf" [current_fileset -constrset]
add_files [list {TopMultiplexer.ucf}] -fileset [get_property constrset [current_run]]
link_design
