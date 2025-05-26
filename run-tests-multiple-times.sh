#!/bin/bash

# If a parameter is passed, use it; otherwise, default to 1
REPEAT=${1:-1}  # If no value is passed, the default is 1

# Display the number of repetitions
echo "🔁 Running tests $REPEAT times..."

# Create a directory to store the test logs
mkdir -p test-logs

# Loop to run the tests the specified number of times
for i in $(seq 1 $REPEAT); do
  echo "🔁 Running tests - Iteration $i"
  mvn test -DargLine="-ea" -f pom.xml > test-logs/test_run_$i.log # Adjust this line to match your 'mvn test' command.
done
