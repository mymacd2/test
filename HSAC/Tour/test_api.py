from pprint import pprint
import numpy as np
from procyclingstats import Race, RaceClimbs, Stage

# RACE_URL can be replaced with any valid stage race URL
RACE_URL = "race/tour-de-france/2000"
race = Race(f"{RACE_URL}/overview")


STAGE_NUM = "stage-11"
stage = Stage(f"{RACE_URL}/{STAGE_NUM}")
parse = stage.results()[0]["time"]


years = []
stages = []
vertmeters = []
avgspeed = []

for year in range(2002, 2023):
    for stage_num in range(1, 21):
        stage = Stage(f"race/tour-de-france/{year}/stage-{stage_num}")
        vert_meters = stage.vertical_meters()
        if vert_meters > 5000:
            winning_time = stage.results()[0]["time"]

            (h, m, s) = winning_time.split(':')
            hours = int(h) + (int(m) / 60) + (int(s) / 3600)
            avg_speed = stage.distance() / hours

            years.append(year)
            stages.append(stage_num)
            vertmeters.append(vert_meters)
            avgspeed.append(avg_speed)

np.savetxt("Years.dat", years)
np.savetxt("Stages.dat", stages)
np.savetxt("Vertical_Meters.dat", vertmeters)
np.savetxt("Average_Speed.dat", avgspeed)

print(years)
print(stages)
print(vertmeters)
print(avgspeed)






