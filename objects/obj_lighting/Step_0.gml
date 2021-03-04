//Room Specific Light Levels
if room = entrance_2
targetdarkness = 0.95
else
targetdarkness = 0.4
//Change Darkness
if abs(darkness) < abs(targetdarkness)
darkness += 0.005
if abs(darkness) > abs(targetdarkness)
darkness -= 0.005

