# ====================================================
# PROJECT: Advanced Data Wrangling Practice (StarWars Dataset)
# AUTHOR: Fairoz Miya
# PURPOSE: Demonstrating mastery of mutate, filter, and arrange
# ====================================================

library(dplyr)

# 1. Run the multi-step pipeline
starwars_processed <- starwars |> 
  # Convert height from centimeters to meters
  mutate(height_meters = height / 100) |> 
  
  # Keep only characters taller than 1.8 meters
  filter(height_meters > 1.8) |> 
  
  # Sort from tallest to shortest
  arrange(desc(height_meters))

# 2. Print the results to the screen
print(starwars_processed)
