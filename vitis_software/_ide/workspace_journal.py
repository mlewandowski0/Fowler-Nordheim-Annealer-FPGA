# 2025-05-21T18:57:17.179249
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_software")

platform = client.get_component(name="fowler_nordheim_annealer_Neq8_with_uart")
status = platform.build()

comp = client.get_component(name="fowler_nordheim_annealer_Neq8_ps_v2")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "fw_ann_Neq800_flips_and_uart",hw_design = "$COMPONENT_LOCATION/../design_1_N_eq_800_wrapper_with_flips.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

comp = client.create_app_component(name="fw_ann_Neq800_flips_and_uart_app",platform = "$COMPONENT_LOCATION/../fw_ann_Neq800_flips_and_uart/export/fw_ann_Neq800_flips_and_uart/fw_ann_Neq800_flips_and_uart.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="fw_ann_Neq800_flips_and_uart")
status = platform.build()

comp = client.get_component(name="fw_ann_Neq800_flips_and_uart_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

