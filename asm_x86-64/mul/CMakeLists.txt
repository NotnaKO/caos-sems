project(mul C ASM)

#add_executable(mul main.c)
add_executable(mul mul.S main.c)