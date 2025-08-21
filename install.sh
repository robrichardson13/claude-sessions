#!/bin/bash

# Install script for claude-sessions commands
# Copies all command files to ~/.claude/commands/

set -e

COMMANDS_DIR="./commands"
INSTALL_DIR="$HOME/.claude/commands"

echo "Installing claude-sessions commands..."

# Create the install directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Copy all .md files from commands directory
if [ -d "$COMMANDS_DIR" ]; then
    echo "Copying commands to $INSTALL_DIR"
    cp "$COMMANDS_DIR"/*.md "$INSTALL_DIR/"
    echo "Successfully installed $(ls "$COMMANDS_DIR"/*.md | wc -l) commands:"
    ls "$COMMANDS_DIR"/*.md | xargs -n1 basename
else
    echo "Error: commands directory not found"
    exit 1
fi

echo "Installation complete!"