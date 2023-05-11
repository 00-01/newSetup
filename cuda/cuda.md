# ERROR
## KEY ERROR
    sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub 


# INSTALL CUDA
## VERSION 11.3
    wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
    sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
    sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub 
    sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
    sudo apt-get update
    sudo apt-get -y install cuda

# cuDNN
    https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html

# VERSION CHANGE
## 1. Install wanted CUDA Toolkit versions
    sudo apt install cuda-toolkit-{version: 11-3}
    
## 2. Point symlink /usr/local/cuda to default version
    cd /usr/local
    sudo rm cuda
    sudo ln -s cuda-11.3 cuda
    
## 3. Install suitable cuDNN versions for each CUDA using the Library for Linux tar files
    tar -xzvf cudnn-8.0-linux-x64-v6.0.tgz
    sudo cp cuda/include/cudnn.h /usr/local/cuda-8.0/include
    sudo cp cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64
    sudo chmod a+r /usr/local/cuda-8.0/include/cudnn.h /usr/local/cuda-8.0/lib64/libcudnn*
    
## 4. Add each CUDA lib directory to LD_LIBRARY_PATH in order
    sudo sh -c ‘echo export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda-11.3/lib64:/usr/local/cuda-11.6/lib64:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:\$LD_LIBRARY_PATH > /etc/profile.d/cuda.sh’
    
## 5. Create a conda environment and install the wanted TensorFlow GPU version
    conda create -n tf14 python=2.7.6 pip
    conda activate tf14
    pip install tensorflow-gpu==1.4

## 6. Test
    python -c “import tensorflow; print(tensorflow.__version__)
    print(tensorflow.test.gpu_device_name())
    print(tensorflow.test.is_gpu_available())”
    
## 7.make sure you add your cuda-X.x lib64 paths    
    export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/cuda-10.1/lib64:/usr/local/cuda-11/lib64:/usr/local/cuda-11.1/lib64:/usr/local/cuda-11.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"



# INSTALL CUDA, cuDNN for tf and pytorch
1. install CUDA
2. install cuDNN
3. install nvidia-cuda-toolkit
