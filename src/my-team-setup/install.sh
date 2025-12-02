#!/bin/bash
set -e

PACKAGES="${PACKAGES:-requests numpy pandas}"

echo "Installing Python3..."
apt-get update
apt-get install -y python3 python3-pip python3-venv

echo "Installing Python packages: $PACKAGES"
pip3 install --break-system-packages $PACKAGES

echo "Configuring terminal prompt with 'Hello World!'..."

# Add prompt customization to /etc/bash.bashrc for all users
cat >> /etc/bash.bashrc << 'EOF'

# Added by my-team-setup devcontainer feature
export PS1="Hello World! \$PS1"
EOF

# Also add to /etc/zsh/zshrc if zsh is available
if [ -d /etc/zsh ]; then
    cat >> /etc/zsh/zshrc << 'EOF'

# Added by my-team-setup devcontainer feature
export PS1="Hello World! $PS1"
EOF
fi

echo "my-team-setup feature installed successfully!"
