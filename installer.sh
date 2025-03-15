#!/usr/bin/sh

BINARY_FILE="https://github.com/morelucks/bash_scripting/raw/refs/heads/main/target/release/cpc_rust"

if [ -f "cpc_rust" ]; then
    echo "cpc_rush already exist"
else
    echo "Downloading binary file"

    wget $BINARY_FILE || exit

    echo "File downloaded successfully"
fi

ls

echo "Chmodding binary file to make it executable"

chmod +x cpc_rust

echo "Binary file chmodded successfully"

echo "Moving file to /usr/local/bin"

sudo mv cpc_rust /usr/local/bin

echo "Running binary file"

clear

# ./cpc_rust