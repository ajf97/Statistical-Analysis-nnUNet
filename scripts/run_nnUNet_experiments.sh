#!/bin/bash

combinations=(
    "d1 m1 p1 0.5 100"
    "d1 m1 p1 0.5 200"
    "d1 m1 p1 0.5 325"
    "d1 m1 p1 0.75 100"
    "d1 m1 p1 0.75 200"
    "d1 m1 p1 0.75 325"
    "d1 m1 p1 0.9 100"
    "d1 m1 p1 0.9 200"
    "d1 m1 p1 0.9 325"
    "d1 m1 p2 0.5 100"
    "d1 m1 p2 0.5 200"
    "d1 m1 p2 0.5 325"
    "d1 m1 p2 0.75 100"
    "d1 m1 p2 0.75 200"
    "d1 m1 p2 0.75 325"
    "d1 m1 p2 0.9 100"
    "d1 m1 p2 0.9 200"
    "d1 m1 p2 0.9 325"
    "d1 m1 p3 0.5 100"
    "d1 m1 p3 0.5 200"
    "d1 m1 p3 0.5 325"
    "d1 m1 p3 0.75 100"
    "d1 m1 p3 0.75 200"
    "d1 m1 p3 0.75 325"
    "d1 m1 p3 0.9 100"
    "d1 m1 p3 0.9 200"
    "d1 m1 p3 0.9 325"
    "d1 m2 p1 0.5 100"
    "d1 m2 p1 0.5 200"
    "d1 m2 p1 0.5 325"
    "d1 m2 p1 0.75 100"
    "d1 m2 p1 0.75 200"
    "d1 m2 p1 0.75 325"
    "d1 m2 p1 0.9 100"
    "d1 m2 p1 0.9 200"
    "d1 m2 p1 0.9 325"
    "d1 m2 p2 0.5 100"
    "d1 m2 p2 0.5 200"
    "d1 m2 p2 0.5 325"
    "d1 m2 p2 0.75 100"
    "d1 m2 p2 0.75 200"
    "d1 m2 p2 0.75 325"
    "d1 m2 p2 0.9 100"
    "d1 m2 p2 0.9 200"
    "d1 m2 p2 0.9 325"
    "d1 m2 p3 0.5 100"
    "d1 m2 p3 0.5 200"
    "d1 m2 p3 0.5 325"
    "d1 m2 p3 0.75 100"
    "d1 m2 p3 0.75 200"
    "d1 m2 p3 0.75 325"
    "d1 m2 p3 0.9 100"
    "d1 m2 p3 0.9 200"
    "d1 m2 p3 0.9 325"
    "d2 m1 p1 0.5 100"
    "d2 m1 p1 0.5 200"
    "d2 m1 p1 0.5 325"
    "d2 m1 p1 0.75 100"
    "d2 m1 p1 0.75 200"
    "d2 m1 p1 0.75 325"
    "d2 m1 p1 0.9 100"
    "d2 m1 p1 0.9 200"
    "d2 m1 p1 0.9 325"
    "d2 m1 p2 0.5 100"
    "d2 m1 p2 0.5 200"
    "d2 m1 p2 0.5 325"
    "d2 m1 p2 0.75 100"
    "d2 m1 p2 0.75 200"
    "d2 m1 p2 0.75 325"
    "d2 m1 p2 0.9 100"
    "d2 m1 p2 0.9 200"
    "d2 m1 p2 0.9 325"
    "d2 m1 p3 0.5 100"
    "d2 m1 p3 0.5 200"
    "d2 m1 p3 0.5 325"
    "d2 m1 p3 0.75 100"
    "d2 m1 p3 0.75 200"
    "d2 m1 p3 0.75 325"
    "d2 m1 p3 0.9 100"
    "d2 m1 p3 0.9 200"
    "d2 m1 p3 0.9 325"
    "d2 m2 p1 0.5 100"
    "d2 m2 p1 0.5 200"
    "d2 m2 p1 0.5 325"
    "d2 m2 p1 0.75 100"
    "d2 m2 p1 0.75 200"
    "d2 m2 p1 0.75 325"
    "d2 m2 p1 0.9 100"
    "d2 m2 p1 0.9 200"
    "d2 m2 p1 0.9 325"
    "d2 m2 p2 0.5 100"
    "d2 m2 p2 0.5 200"
    "d2 m2 p2 0.5 325"
    "d2 m2 p2 0.75 100"
    "d2 m2 p2 0.75 200"
    "d2 m2 p2 0.75 325"
    "d2 m2 p2 0.9 100"
    "d2 m2 p2 0.9 200"
    "d2 m2 p2 0.9 325"
    "d2 m2 p3 0.5 100"
    "d2 m2 p3 0.5 200"
    "d2 m2 p3 0.5 325"
    "d2 m2 p3 0.75 100"
    "d2 m2 p3 0.75 200"
    "d2 m2 p3 0.75 325"
    "d2 m2 p3 0.9 100"
    "d2 m2 p3 0.9 200"
    "d2 m2 p3 0.9 325"
    "d1 m1 p4 0.5 100"
    "d1 m1 p4 0.5 200"
    "d1 m1 p4 0.5 325"
    "d1 m1 p4 0.75 100"
    "d1 m1 p4 0.75 200"
    "d1 m1 p4 0.75 325"
    "d1 m1 p4 0.9 100"
    "d1 m1 p4 0.9 200"
    "d1 m1 p4 0.9 325"
    "d1 m2 p4 0.5 100"
    "d1 m2 p4 0.5 200"
    "d1 m2 p4 0.5 325"
    "d1 m2 p4 0.75 100"
    "d1 m2 p4 0.75 200"
    "d1 m2 p4 0.75 325"
    "d1 m2 p4 0.9 100"
    "d1 m2 p4 0.9 200"
    "d1 m2 p4 0.9 325"
    "d2 m1 p4 0.5 100"
    "d2 m1 p4 0.5 200"
    "d2 m1 p4 0.5 325"
    "d2 m1 p4 0.75 100"
    "d2 m1 p4 0.75 200"
    "d2 m1 p4 0.75 325"
    "d2 m1 p4 0.9 100"
    "d2 m1 p4 0.9 200"
    "d2 m1 p4 0.9 325"
    "d2 m2 p4 0.5 100"
    "d2 m2 p4 0.5 200"
    "d2 m2 p4 0.5 325"
    "d2 m2 p4 0.75 100"
    "d2 m2 p4 0.75 200"
    "d2 m2 p4 0.75 325"
    "d2 m2 p4 0.9 100"
    "d2 m2 p4 0.9 200"
    "d2 m2 p4 0.9 325"
)

output_file="nnunetv2_train_times.txt"

# Clean output file
> "$output_file"

for combination in "${combinations[@]}"; do
    # Get parameters
    dataset=$(echo "$combination" | awk '{print $1}')
    model=$(echo "$combination" | awk '{print $2}')
    preprocessing=$(echo "$combination" | awk '{print $3}')
    poly=$(echo "$combination" | awk '{print $4}')
    epochs=$(echo "$combination" | awk '{print $5}')

    if [ "$dataset" == "d1" ] && [ "$preprocessing" == "p1" ]; then
    DATASET=1
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p1" ]; then
    DATASET=2
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p2" ]; then
    DATASET=3
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p2" ]; then
    DATASET=4
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p3" ]; then
    DATASET=5
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p3" ]; then
    DATASET=6 
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p4" ]; then
    DATASET=7 
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p4" ]; then
    DATASET=8 
    else
    echo "Error: Unknown combination: dataset=$dataset, preprocessing=$preprocessing"
    exit 1
    fi

    TRAINER="nnUNetTrainer_${epochs}epochs_$(echo $poly | sed 's/\.//')exp"

    # Choose plan based on model
    if [ "$model" == "m1" ]; then
        PLAN="nnUNetPlans"
    elif [ "$model" == "m2" ]; then
        PLAN="nnUNetResEncUNetMPlans"
    else
        echo "Error: Unknown model: $model"
        exit 1
    fi

    # Run nnUNetv2_train and get runtime
    echo "Run nnUNetv2_train for Dataset $DATASET, Trainer $TRAINER"
    start_time=$(date +%s)
    nnUNetv2_train "$DATASET" 2d 0 -tr "$TRAINER" -p "$PLAN" --val_best
    end_time=$(date +%s)
    elapsed_seconds=$((end_time - start_time))

    # Save runtime in outputfile
    echo "$dataset,$model,$preprocessing,$poly,$epochs,$elapsed_seconds" >> "$output_file"

done

