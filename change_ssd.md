## grub error
    sudo update-grub
    
## windows boot error
    cmd
    
1. Boot into Windows, search for "advanced startup" and open the Settings app, and click Restart
2. Now, find your way to the UEFI firmware settings, this is different for different brands
3. Once you're in, find the boot options tab and see the boot order menu
4. It will have something called the "OS Boot Manager" with a right arrow pointing to it
5. Highlight this and press enter
6. Press F5/F6 to put Ubuntu above Windows Boot Manager
7. Press F10 to save the changes
8. Save all your changes and exit the UEFI settings
