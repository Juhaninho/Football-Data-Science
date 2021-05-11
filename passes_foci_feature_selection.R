library("readxl")
library(FOCI)
passes <- read_excel("extracted_data/passes_50.xlsx")

X <- passes[c('duration', 'under_pressure', 'length', 'angle', 'backheel', 'deflected', 'cross', 'cut_back',
              'switch', 'location_x', 'location_y', 'end_location_x', 'end_location_y', 'direction_x', 'direction_y',
              'ground_pass', 'low_pass', 'high_pass', 'drop_kick', 'head', 'keeper_arm', 'left_foot', 'right_foot', 
              'no_touch', 'corner', 'free_kick', 'goal_kick', 'interception', 'kick_off', 'recovery', 'throw_in',
              'inswinging', 'outswinging', 'straight', 'through_ball')]
y <- passes["complete"]

features <- foci(y, X, numCores = 1)

