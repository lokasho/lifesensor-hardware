
v_max = 5e3
r_input = 20e3
v_neon = 150.0

i_max = (v_max - v_neon) / r_input
p_max = (i_max)**2 * r_input
p_max_per_resistor = p_max / 2

result = f"""
Result for a V_neon = {v_neon} V and R_input = {r_input / 1e3} kΩ:
i_max = {i_max * 1e3:.1f} mA
p_max = {p_max:.1f} W
"""

print(result)
