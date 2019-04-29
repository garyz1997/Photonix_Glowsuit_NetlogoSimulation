# Photonix_Glowsuit_NetlogoSimulation

To run:
  1) Download Netlogo
    2) Run ```python3 nlogoGlowsuit.py your_excel_filename.csv```
  3) Copy code in generated.txt in generated folder into Netlogo's "code" section
  4) Press setup, then go
  5) Change start time delay in nlogoGlowsuit.py if start time is off:
    transition_times = transition_times + " " + str(**9.100**+delay_total/1000)
