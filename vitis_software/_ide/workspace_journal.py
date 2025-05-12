# 2025-05-10T10:56:37.777931
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_software")

client.delete_component(name="fowler_nordheim_Neq8_2units_simple")

client.delete_component(name="app_component")

client.delete_component(name="simple_run")

platform = client.create_platform_component(name = "fowler_nordheim_annealer_Neq8",hw_design = "$COMPONENT_LOCATION/../whole_system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

comp = client.create_app_component(name="fowler_nordheim_annealer_Neq8_ps",platform = "$COMPONENT_LOCATION/../fowler_nordheim_annealer_Neq8/export/fowler_nordheim_annealer_Neq8/fowler_nordheim_annealer_Neq8.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="fowler_nordheim_annealer_Neq8")
status = platform.build()

comp = client.get_component(name="fowler_nordheim_annealer_Neq8_ps")
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

platform = client.create_platform_component(name = "fowler_nordheim_annealer_Neq8_with_uart",hw_design = "$COMPONENT_LOCATION/../whole_system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

comp = client.create_app_component(name="fowler_nordheim_annealer_Neq8_ps_v2",platform = "$COMPONENT_LOCATION/../fowler_nordheim_annealer_Neq8_with_uart/export/fowler_nordheim_annealer_Neq8_with_uart/fowler_nordheim_annealer_Neq8_with_uart.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="fowler_nordheim_annealer_Neq8_with_uart")
status = platform.build()

comp = client.get_component(name="fowler_nordheim_annealer_Neq8_ps_v2")
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

domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_config(option = "lib", param = "XILTIMER_en_interval_timer", value = "true", lib_name="xiltimer")

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

platform = client.create_platform_component(name = "fowler_nordheim_annealer_Neq800_v1",hw_design = "$COMPONENT_LOCATION/../design_1_N_eq_800_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

comp = client.create_app_component(name="fowler_nordheim_annealer_Neq800_ps",platform = "$COMPONENT_LOCATION/../fowler_nordheim_annealer_Neq800_v1/export/fowler_nordheim_annealer_Neq800_v1/fowler_nordheim_annealer_Neq800_v1.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="fowler_nordheim_annealer_Neq800_v1")
status = platform.build()

comp = client.get_component(name="fowler_nordheim_annealer_Neq800_ps")
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

