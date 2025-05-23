#!/bin/bash
# Script to set up and run the Manus Python backend

# Navigate to OpenManus directory
cd OpenManus

# Create and activate Python virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Copy example config and update with your API keys
cp config/config.example.toml config/config.toml
echo "Please edit config/config.toml to add your API keys."

# Run the Manus backend server (adjust command if needed)
python run_mcp_server.py
