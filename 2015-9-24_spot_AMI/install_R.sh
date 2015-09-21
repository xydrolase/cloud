# This script installs a fresh copy of R and its dependencies
# on a brand new AWS instance.

# For Amazon Linux, Cent OS, and other OS's that use yum:
sudo yum -y update
sudo yum -y install emacs gcc gcc-c++ gcc-gfortran git tex texlive texinfo

# For Ubuntu, comment the everything above and
# uncomment the two lines below.
# sudo apt-get -y update
# sudo apt-get -y install emacs gcc g++ gfortran git make make-doc texlive texinfo

# Install R. For a different version, do a find/replace and change
# "R-3.2.2" to the version you want.
wget https://cran.r-project.org/src/base/R-3/R-3.2.2.tar.gz
tar -xf R-3.2.2.tar.gz
cd R-3.2.2
./configure --with-x=no --with-readline=no
make
sudo make install
cd ..
rm -rf R-3.2.2*
