# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fowler_nordheim_annealer_Neq8_with_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fowler_nordheim_annealer_Neq8_with_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fowler_nordheim_annealer_Neq8_with_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fowler_nordheim_annealer_Neq8_with_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
