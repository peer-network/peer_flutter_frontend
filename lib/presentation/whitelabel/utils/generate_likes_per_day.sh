#!/bin/bash

# Define start and end dates
start_date="2024-06-21"
end_date="2024-04-21"

# Function to generate a random double value with mean 100 and standard deviation 20
generate_random_value() {
  echo "scale=2; 100 + 20 * (2 * $RANDOM / 32767 - 1)" | bc
}

# Initialize empty JSON string
json_data="{"

# Generate dates and values
current_date=$start_date
while [[ "$current_date" > "$end_date" ]]; do
  random_value=$(generate_random_value)
  json_data+="\"$current_date"T00:00:00.000"\": $random_value,"
  current_date=$(date -I -d "$current_date - 1 day")
done

# Remove trailing comma and close JSON
json_data=${json_data%,}
json_data+="}"

# Define output file path
output_file="/home/gregory/Documents/PEER/flutter_app-1/lib/presentation/whitelabel/utils/likes_per_day.json"

# Write JSON data to file
echo -e "$json_data" > "$output_file"

echo "Dummy JSON data generated and written to $output_file"
