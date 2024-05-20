#!/bin/bash

####    !!! READ README.md file for further information how to structure a directory    ####

# Function to create project structure
create_project_structure() {
    local project_name=$1

    # Define the directory structure
    dirs=(
        "$project_name/data/raw"
        "$project_name/data/processed"
        "$project_name/data/reference"
        "$project_name/results"
        "$project_name/results/figures"
        "$project_name/results/tables"
        "$project_name/scripts"
        "$project_name/docs"
        "$project_name/logs"
    )

    # Create directories
    for dir in "${dirs[@]}"; do
        mkdir -p "$dir"
        echo "Created directory: $dir"
    done

     # Create needed files
    touch $project_name/README.md
    touch $project_name/notes.txt

    # Create placeholder files for organization
    touch "$project_name/data/raw/.gitkeep"
    touch "$project_name/data/processed/.gitkeep"
    touch "$project_name/data/reference/.gitkeep"
    touch "$project_name/results/figures/.gitkeep"
    touch "$project_name/results/tables/.gitkeep"
    touch "$project_name/scripts/.gitkeep"
    touch "$project_name/docs/.gitkeep"
    touch "$project_name/logs/.gitkeep"
    touch "$project_name/temp"

    echo "Project structure for '$project_name' created successfully."
}




# Check if a project name was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

# Call the function with the provided project name
create_project_structure "$1"

echo "Directory structure created successfully."

