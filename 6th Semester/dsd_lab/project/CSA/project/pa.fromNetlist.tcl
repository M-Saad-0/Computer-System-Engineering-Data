
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name project -dir "C:/Users/PC/Documents/CSA/project/planAhead_run_1" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/PC/Documents/CSA/project/automatic_washing_machine.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/PC/Documents/CSA/project} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "automatic_washing_machine.ucf" [current_fileset -constrset]
add_files [list {automatic_washing_machine.ucf}] -fileset [get_property constrset [current_run]]
link_design
