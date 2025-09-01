### Specification

* URI
  * /API/lsvr/sysinfo/update
* Input Parameter
  * at
    * Secret Key
  * lssn
    * Logical server's serial number
  * hn
    * HostName
  * mf
    * Manufacturer
  * cpuname
    * CPU Model Name
  * mem
    * Total Memory
  * os
    * OS Version
  * mfsn
    * Manufacturer Serial Number (H/W Serial number)
* Output
  * None
* example
```shell
# Get System Variables =========================================
hn=`uname -n`
echo "hostname : $hn"
mf=`dmidecode --type 1 |grep 'Product Name'`
mfsn=`dmidecode --type 1 |grep 'Serial'`
cpuname=`cat /proc/cpuinfo  | grep 'model name' | awk -F\: 'NR==1 {print $2}'`
echo "CPU : $cpuname "
os=`head -n 1 /etc/issue`
echo "OSver. : $os"
mem=`free -mot | awk '/Mem/{print $2}'`
#mem=`expr $(($mem*1024*1024))`
echo "mem : $mem"
cpunum=`cat /proc/cpuinfo | grep processor | wc -l`

# Send to API Server =========================================
qs="at=$at&lssn=$lssn&hn=$hn&mf=$mf&cpuname=$cpuname&cpunum=$cpunum&mem=$mem&os=$os&mfsn=$mfsn"
APIURL="http://giip.littleworld.net/API/lsvr/sysinfo/update?$qs"
wget "$APIURL" -O giipAPISYS.txt
```