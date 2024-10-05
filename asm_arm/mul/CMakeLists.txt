project(arm_mul C ASM)

#add_executable(mul main.c)
add_executable(arm_mul mul.S main.c)