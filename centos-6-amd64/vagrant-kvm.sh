# Requires
#    base.sh (for kernel-devel, gcc*, make, dkms and wget)

# NFS Client
yum -y install nfs-utils nfs-utils-lib

# 9p (virtfs) Support
P9_VERSION=2.6.38.5
yum -y install unzip
wget -O /tmp/centos-9p-master.zip https://github.com/antst/centos-9p/archive/master.zip
unzip -d /tmp /tmp/centos-9p-master.zip
mv /tmp/centos-9p-master /usr/src/centos-9p-${P9_VERSION}
dkms add -m centos-9p -v ${P9_VERSION}
dkms build -m centos-9p -v ${P9_VERSION}
sudo dkms install -m centos-9p -v ${P9_VERSION}
