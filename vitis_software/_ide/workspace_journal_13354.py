# 2025-05-09T18:15:24.418027
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_software")

platform = client.create_platform_component(name = "fowler_nordheim_Neq8_2units_simple",hw_design = "$COMPONENT_LOCATION/../whole_system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

comp = client.create_app_component(name="simple_run",platform = "$COMPONENT_LOCATION/../fowler_nordheim_Neq8_2units_simple/export/fowler_nordheim_Neq8_2units_simple/fowler_nordheim_Neq8_2units_simple.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="fowler_nordheim_Neq8_2units_simple")
status = platform.build()

comp = client.get_component(name="simple_run")
comp.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../whole_system_wrapper.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../whole_system_wrapper.xsa")

status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../fowler_nordheim_Neq8_2units_simple/export/fowler_nordheim_Neq8_2units_simple/fowler_nordheim_Neq8_2units_simple.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

