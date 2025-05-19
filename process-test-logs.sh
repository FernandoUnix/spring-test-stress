#!/bin/bash

# Create the header for the CSV file
echo "Run,Tests,Failures,Errors,Skipped" > summary.csv

# Loop through each log file in the test-logs directory
for file in test-logs/test_run_*.log; do
  # Extract the run number from the file name
  run=$(basename "$file" .log | cut -d'_' -f3)

  # Extract the relevant information (Tests run, Failures, Errors, Skipped)
  summary=$(grep -E "Tests run:" "$file" | tail -n1 | sed -E 's/.*Tests run: ([0-9]+), Failures: ([0-9]+), Errors: ([0-9]+), Skipped: ([0-9]+).*/\1,\2,\3,\4/')

  # Append the run number and summary data to the CSV
  echo "$run,$summary" >> summary.csv
done