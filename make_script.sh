#!/bin/bash

# Check if a filename was given
if [ -z "$1" ]; then
    echo "Usage: $0 <scriptname.sh>"
    exit 1
fi

# Create the new script with shebang
echo "#!/bin/bash" > "$1"

# Make it executable
chmod +x "$1"

echo "Created $1 with bash shebang and execution permission."