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


output_file="nnunetv2_predictions_times.txt"

# Clean output file
# > "$output_file"


for combination in "${combinations[@]}"; do
    # Get parameters
    dataset=$(echo "$combination" | awk '{print $1}')
    model=$(echo "$combination" | awk '{print $2}')
    preprocessing=$(echo "$combination" | awk '{print $3}')
    poly=$(echo "$combination" | awk '{print $4}')
    epochs=$(echo "$combination" | awk '{print $5}')

    if [ "$dataset" == "d1" ] && [ "$preprocessing" == "p1" ]; then
    DATASET="Dataset001_smallnodules"
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p1" ]; then
    DATASET="Dataset002_bignodules"
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p2" ]; then
    DATASET="Dataset003_smallnodulesW"
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p2" ]; then
    DATASET="Dataset004_bignodulesW"
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p3" ]; then
    DATASET="Dataset005_smallnodulesLM"
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p3" ]; then
    DATASET="Dataset006_bignodulesLM"
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p4" ]; then
    DATASET="Dataset007_smallnodulesCLAHE"
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p4" ]; then
    DATASET="Dataset008_bignodulesCLAHE"
    else
    echo "Error: Unknown combination: dataset=$dataset, preprocessing=$preprocessing"
    exit 1
    fi

    if [ "$dataset" == "d1" ] && [ "$preprocessing" == "p1" ]; then
    DATASETINT=1
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p1" ]; then
    DATASETINT=2
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p2" ]; then
    DATASETINT=3
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p2" ]; then
    DATASETINT=4
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p3" ]; then
    DATASETINT=5
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p3" ]; then
    DATASETINT=6
    elif [ "$dataset" == "d1" ] && [ "$preprocessing" == "p4" ]; then
    DATASETINT=7 
    elif [ "$dataset" == "d2" ] && [ "$preprocessing" == "p4" ]; then
    DATASETINT=8 
    else
    echo "Error: Unknown combination: dataset=$dataset, preprocessing=$preprocessing"
    exit 1
    fi

    # Choose a plan based on model
    if [ "$model" == "m1" ]; then
        PLAN="nnUNetPlans"
    elif [ "$model" == "m2" ]; then
        PLAN="nnUNetResEncUNetMPlans"
    else
        echo "Error: Unknown model: $model"
        exit 1
    fi

    inputfolder="/home/ajeronimo/repositories/nnUNet_data/nnUNet_raw/${DATASET}/imagesTs"
    outputfolder="/home/ajeronimo/repositories/nnUNet_data/nnUNet_results/${DATASET}/nnUNetTrainer_${epochs}epochs_$(echo $poly | sed 's/\.//')exp__${PLAN}__2d/predictions"
    outputfolderpp="/home/ajeronimo/repositories/nnUNet_data/nnUNet_results/${DATASET}/nnUNetTrainer_${epochs}epochs_$(echo $poly | sed 's/\.//')exp__${PLAN}__2d/predictions_pp"
    TRAINER="nnUNetTrainer_${epochs}epochs_$(echo $poly | sed 's/\.//')exp"
    pppklfile="/home/ajeronimo/repositories/nnUNet_data/nnUNet_results/${DATASET}/nnUNetTrainer_${epochs}epochs_$(echo $poly | sed 's/\.//')exp__${PLAN}__2d/crossval_results_folds_0/postprocessing.pkl"
    plans_json="/home/ajeronimo/repositories/nnUNet_data/nnUNet_results/${DATASET}/nnUNetTrainer_${epochs}epochs_$(echo $poly | sed 's/\.//')exp__${PLAN}__2d/crossval_results_folds_0/plans.json"

    # Create output folders if don´t exist
    if [ ! -d "$outputfolder" ]; then
        echo "Create $outputfolder..."
        mkdir -p "$outputfolder"
    fi

    if [ ! -d "$outputfolderpp" ]; then
        echo "Create $outputfolderpp..."
        mkdir -p "$outputfolderpp"
    fi

    # Run nnUNetv2_train and get runtime
    echo "Run predictions for Dataset $DATASET, Trainer $TRAINER"
    start_time=$(date +%s)
    nnUNetv2_predict -d ${DATASET} -i ${inputfolder} -o ${outputfolder} -f 0 -tr ${TRAINER} -c 2d -p ${PLAN} -chk checkpoint_best.pth

    nnUNetv2_find_best_configuration ${DATASETINT} -p ${PLAN} -c 2d -tr ${TRAINER} -f 0
    nnUNetv2_apply_postprocessing -i ${outputfolder} -o ${outputfolderpp} -pp_pkl_file ${pppklfile} -np 8 -plans_json ${plans_json}
    end_time=$(date +%s)
    elapsed_seconds=$((end_time - start_time))

    # Save runtime in output file
    echo "$dataset,$model,$preprocessing,$poly,$epochs,$elapsed_seconds" >> "$output_file"
done
