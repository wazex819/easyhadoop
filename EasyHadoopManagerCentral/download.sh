#!/bin/sh

yum -y install wget lrzsz pexpect

mkdir -p ./hadoop

cd ./hadoop && rm -rf *

if [ ! -f "hadoop-1.0.3-1.x86_64.rpm" ]; then
	wget http://113.11.199.230/hadoop/hadoop-1.0.4-1.x86_64.rpm
fi
if [ ! -f "jdk-6u35-linux-x64.rpm" ]; then
	wget http://113.11.199.230/jdk/jdk-6u37-linux-amd64.rpm
fi
if [ ! -f "hadoop-gpl-packaging-0.2.8-1.x86_64.rpm" ]; then
	wget http://113.11.199.230/resources/x64/hadoop-gpl-packaging-0.5.4-1.x86_64.rpm
fi
if [ ! -f "lzo-2.06.tar.gz" ]; then
	wget http://113.11.199.230/resources/lzo-2.06.tar.gz
fi
if [ ! -f "lzop-1.03.tar.gz" ]; then
	wget http://113.11.199.230/resources/lzop-1.03.tar.gz
fi
if [ ! -f "lzo-2.06-1.el5.rf.x86_64.rpm" ]; then
	wget http://113.11.199.230/resources/x64/lzo-2.06-1.el5.rf.x86_64.rpm
fi
if [ ! -f "lzo-2.06-1.el6.rfx.x86_64.rpm" ]; then
	wget http://113.11.199.230/resources/x64/lzo-2.06-1.el6.rfx.x86_64.rpm
fi
if [ ! -f "lzo-devel-2.06-1.el5.rf.x86_64.rpm" ]; then
	wget http://113.11.199.230/resources/x64/lzo-devel-2.06-1.el5.rf.x86_64.rpm
fi
if [ ! -f "lzo-devel-2.06-1.el6.rfx.x86_64.rpm" ]; then
	wget http://113.11.199.230/resources/x64/lzo-devel-2.06-1.el6.rfx.x86_64.rpm
fi

cd ..

echo "Download Complete, You can use PushFiles now"
