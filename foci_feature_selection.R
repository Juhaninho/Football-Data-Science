library("readxl")
library(FOCI)
shots <- read_excel("extracted_data/shots.xlsx")

X <- shots[c('under_pressure', 'pass_height', 'first_touch', 'follows_dribble', 'foot_shot', 'header', 'open_goal', 
             'defender', 'midfielder', 'striker', 'goal_distance', 'regular_play', 'from_corner', 'from_free_kick', 
             'from_throw_in', 'from_counter', 'from_goal_kick', 'from_keeper', 'from_kick_off', 'backheel', 
             'diving_header', 'half_volley', 'lob', 'overhead_kick', 'volley', 'corner', 'free_kick', 'open_play', 
             'penalty', 'goal_angle', 'num_teammates', 'num_opposition', 'gk_in_goal')]
#X <- shots[c('gk_in_goal', 'striker', 'from_corner', 'open_goal', 'from_counter', 'penalty', 'lob', 'goal_angle', 
#             'header', 'from_free_kick', 'goal_distance', 'half_volley', 'pass_height', 'under_pressure', 
#             'first_touch', 'free_kick', 'num_teammates', 'defender', 'num_opposition')]
y <- shots["goal"]

features <- foci(y, X, numCores = 1)
