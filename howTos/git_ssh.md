# Set up SSH Keys for GitHub (if not already done):
### Check for existing SSH keys
> Look for files named either id_rsa.pub, id_ed25519.pub, or similar
    ls -al ~/.ssh
### If you don't have an existing key, or you want to create a new one,
    ssh-keygen -t rsa -b 4096 -C "{your_email@example.com}"
When prompted to "Enter a file in which to save the key," press Enter to save it in the default location.
### Start the SSH agent in the background
    eval "$(ssh-agent -s)"
### Add SSH private key to the SSH agent
    ssh-add ~/.ssh/id_rsa  ## or the appropriate file name
### Copy your SSH public key to the clipboard
    pbcopy < ~/.ssh/id_rsa.pub
### Go to GitHub, navigate to "Settings", then to "SSH and GPG keys", and click on "New SSH key" to add your new key. Paste your key into the field.

# Clone Repository
    Click on the "Code" button and select the "SSH" option. Copy the SSH URL provided
