# install pre-requesits for ns-3, pybindgen, etc...
sudo apt-get install -y git
sudo apt-get install -y gcc g++ python python3 python3-dev
sudo apt-get install -y python3-setuptools
sudo apt-get install -y python-dev python-pygraphviz python-kiwi
sudo apt-get install -y python-pygoocanvas python-gnome2
sudo apt-get install -y python-rsvg ipython
sudo apt-get install -y gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3  
sudo apt-get install -y qt5-default
sudo apt-get install -y build-essential gccxml
sudo apt-get install -y libsqlite3-dev libcrypto++-dev
sudo apt-get install -y libboost-all-dev
# install pre-requesits for libdash
sudo apt-get install -y git-core cmake libxml2-dev libcurl4-openssl-dev
sudo apt-get install -y mercurial
sudo apt-get install -y tcpdump
sudo apt-get install -y sqlite sqlite3 libsqlite3-dev
sudo apt-get install -y libxml2 libxml2-dev
sudo apt-get install -y cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake pip
sudo python3 -m pip install --user cxxfilt
sudo apt-get install -y libboost-signals-dev libboost-filesystem-dev
sudo apt-get install -y libgtk2.0-0 libgtk2.0-dev
sudo apt-get install -y vtun lxc
sudo apt-get install -y gsl-bin libgsl-dev libgsl23 libgslcblas0
sudo apt-get install libgtk-3-dev 
sudo apt-get install pkg-config
sudo apt-get install doxygen graphviz
pip install setuptools
sudo apt-get install cmake libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake -y

git clone https://github.com/gjcarneiro/pybindgen.git pybindgen
git clone https://github.com/nyuwireless-unipd/ns3-mmwave.git

# install pybindgen for vis
cd pybindgen
sudo python setup.py install
cd ..

# install mercurial for BRITE
hg clone http://code.nsnam.org/BRITE
ls -la
cd BRITE
make
cd ..

# build ns-3/ndnSIM with brite and dash enabled
cd ns3-mmwave
sudo ./waf configure -d optimized
sudo ./waf -j4
