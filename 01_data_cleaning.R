# Load the core package for data manipulation
library(dplyr)

# We use 'ggplot2::msleep' to tell R exactly where the dataset lives!
cleaned_animal_data <- ggplot2::msleep |>
  # Step 1: Filter out animals that sleep less than 10 hours
  filter(sleep_total >= 10) |>
  
  # Step 2: Only keep the columns for Name, Order, and Sleep Total
  select(name, order, sleep_total) |>
  
  # Step 3: Sort the list from highest sleep to lowest sleep
  arrange(desc(sleep_total))

# Print the final clean data to the screen
print(cleaned_animal_data)
