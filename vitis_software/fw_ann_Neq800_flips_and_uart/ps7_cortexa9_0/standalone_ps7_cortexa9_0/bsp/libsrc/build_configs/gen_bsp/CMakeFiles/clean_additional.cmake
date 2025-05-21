# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fw_ann_Neq800_flips_and_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fw_ann_Neq800_flips_and_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fw_ann_Neq800_flips_and_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fw_ann_Neq800_flips_and_uart/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
