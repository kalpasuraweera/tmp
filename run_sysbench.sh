#!/bin/bash

# Check if sysbench is installed
if ! command -v sysbench &> /dev/null
then
    echo "sysbench could not be found. Please install it first."
    exit 1
fi

# Run the sysbench command
echo "Running sysbench CPU test..."
sysbench --test=cpu --cpu-max-prime=5000000 run
