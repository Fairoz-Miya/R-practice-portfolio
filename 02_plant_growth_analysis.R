# ====================================================
# PROJECT: Plant Growth Factor Data Analysis (Auxin Study)
# AUTHOR: Fairoz Miya
# PURPOSE: Filter, group, and summarize bioprocess variables
# ====================================================

library(dplyr)

# 1. Create a simulated dataset for Epipremnum aureum growth tracking
plants <- data.frame(
  species = c("Aureum", "Aureum", "Pinnatum", "Pinnatum", "Aureum", "Pinnatum"),
  treatment = c("Auxin", "Control", "Auxin", "Auxin", "Auxin", "Control"),
  root_length_cm = c(4.5, 2.1, 5.2, 6.1, 4.8, 1.9)
)

# 2. Run custom pipeline to isolate Auxin treatment and calculate averages
plant_summary <- plants |> 
  filter(treatment == "Auxin") |> 
  group_by(species) |> 
  summarize(avg_root = mean(root_length_cm))

# 3. Print calculated results
print(plant_summary)
