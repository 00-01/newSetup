# Set up SSH Keys for GitHub (if not already done):
### 0. Check for existing SSH keys
    ls -al ~/.ssh
Look for files named either id_rsa.pub, id_ed25519.pub, or similar
### 1. If no existing key or to create new one
    ssh-keygen -t rsa -b 4096 -C "{your_email@example.com}"
When prompted to "Enter a file in which to save the key," press Enter to save it in the default location.
### 2. Start SSH agent in background
    eval "$(ssh-agent -s)"
### 3. Add SSH private key to SSH agent
    ssh-add ~/.ssh/id_rsa  ## or the appropriate file name
### 4. Copy SSH public key to clipboard
    pbcopy < ~/.ssh/id_rsa.pub
### 5. Add key to GitHub
navigate to "Settings" -> "SSH and GPG keys" -> click "New SSH key" -> Paste key into the field.
### 6. Clone Repository
    Click on the "Code" button and select the "SSH" option. Copy the SSH URL provided
