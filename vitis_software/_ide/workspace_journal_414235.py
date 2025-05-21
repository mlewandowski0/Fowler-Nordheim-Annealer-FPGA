# 2025-05-21T14:35:39.070452
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

vitis.dispose()

