#!/bin/bash
# =============================================================================
# Project: Inventory_Optimizer_PRO
# Author:  Shashank Tripathi
# Purpose: Execute multiple modules with logging,
#          pre/post execution display messages, and robust error handling.
# =============================================================================

# ---------------------------
# Configuration
# ---------------------------

# Log file
LOGFILE="inventory_optimizer_pro.log"

# Array of Python scripts in execution order
PYTHON_MODULES=(
    "Final_Sarnia_Regular_Transfer.ipynb"
    "Final_Windsor_Regular_Transfer.ipynb"
    "Final_Greentown_Regular_Transfer.ipynb"
    "Clear_Transfer_Sarnia.ipynb"
    "Clear_Transfer_Windsor.ipynb"
)

# Colors for terminal output
COLOR_RESET="\033[0m"
COLOR_GREEN="\033[1;32m"
COLOR_RED="\033[1;31m"
COLOR_BLUE="\033[1;34m"
COLOR_YELLOW="\033[1;33m"

# ---------------------------
# Helper Functions
# ---------------------------

# Function: log message with timestamp
log_message() {
    local message="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') | $message" >> "$LOGFILE"
}


run_module() {
    local module="$1"

    # Display pre-execution message
    echo -e "${COLOR_BLUE}===== Starting module: $module =====${COLOR_RESET}"
    log_message "Starting module: $module"

    # Execute Python module and capture any errors
    if python3 "$module" >> "$LOGFILE" 2>&1; then
        echo -e "${COLOR_GREEN}✅ Module $module executed successfully.${COLOR_RESET}"
        log_message "Module $module executed successfully"
    else
        echo -e "${COLOR_RED}❌ Error occurred in module $module. Check $LOGFILE for details.${COLOR_RESET}"
        log_message "Error occurred in module $module"
    fi

    # Display post-execution separator
    echo -e "${COLOR_YELLOW}===== Finished module: $module =====${COLOR_RESET}"
    echo ""
}

# ---------------------------
# Main Execution Loop
# ---------------------------

echo -e "${COLOR_BLUE}==============================================="
echo "Inventory_Optimizer_PRO: Execution Started"
echo "Log File: $LOGFILE"
echo -e "===============================================${COLOR_RESET}"
echo ""

# Loop through all Python modules
for module in "${PYTHON_MODULES[@]}"; do
    run_module "$module"
done

echo -e "${COLOR_BLUE}==============================================="
echo "Inventory_Optimizer_PRO: All Modules Completed"
echo -e "===============================================${COLOR_RESET}"

