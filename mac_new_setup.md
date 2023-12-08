# BREW
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## apps install list
	brew install --cask /
 	android-studio /
	android-platform-tools /
  	cyberduck /
    	dbeaver-community /
	google-chrome /
 	iterm2 /
   	nomachine /
      	postman /
	visual-studio-code /
 	zoom /

## migrate brew
### creates currently-installed Brewfile in current directory
	brew bundle dump
### edit Brewfile if needed
### install everything from the Brewfile
	brew bundle install

 # FLUTTER (fvm)
 	brew tap leoafarias/fvm
	brew install fvm
 	
 	dart pub global activate fvm
  	
	fvm install stable

	brew install android-studio
 	brew install cocoapods

 	flutter doctor --android-licenses
 	flutter doctor -v


