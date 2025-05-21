#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fw_ann_Neq800_flips_and_uart/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 /home/mlewand/tools/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilffs_v5_3/src /home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/_ide/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/fw_ann_Neq800_flips_and_uart/zynq_fsbl/zynq_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 /home/mlewand/tools/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilrsa_v1_8/src /home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/vitis_software/_ide/.wsdata/.repo.yaml";
                };

        };
    };
