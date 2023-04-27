### gcc version
    gcc --version && g++ --version
### install gcc & g++
    sudo apt install gcc-<version> && sudo apt install g++-<version>
### update gcc & g++
    sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-<version> <priority 0~100> --slave /usr/bin/g++ g++ /usr/bin/g++-<version>
