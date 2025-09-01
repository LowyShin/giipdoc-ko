### Specification

* URI
  * /API/lsvr/list
* Input Parameter
  * sk
    * Secret Key
* Output Value
  * LSLSSN
    * Logical Server Serial Number for giip
  * LSHostName
    * Hostname
  * LSUsage
    * Usage(Label) text
  * LSSpecCPUS
    * Logical Server CPU number
  * LSOSVer
    * OS Version
  * LSOSLangCode
    * OS Language Code (not available yet)
  * SDSn
    * Domain information data identify number
  * SDName
    * Domain Name
  * PSLabelName
    * Physical Server Label
  * LSNIFGlobal
    * Global IP address
  * PSSN
    * Physical server identify number
  * CGSn
    * Service group identify number
  * CGCode
    * Service Group Code
  * CSn
    * Customer information identify number
  * lsRegdt
    * Logical server registrated date
  * psRegdt
    * Physical server registrated date
  * lsChkdt
    * Last checked date
  * lsChkInterval
    * Logical server check interval
  * lsStat
    * Logical server last status
  * isn
    * IDC information identify number
  * IName
    * IDC name
  * ICode
    * IDC code for recognizing by user
  * IAddr
    * IDC location(country code)
  * CName
    * Customer name

### example
```shell
# Get System Variables =========================================
sk="<your secret key>"

# Send to API Server =========================================
qs="sk=$sk"
APIURL="http://giip.littleworld.net/API/lsvr/list?$qs"
wget "$APIURL" -O giipAPISYS.txt
```

### HTML Sample
* https://github.com/LowyShin/giip/blob/gh-pages/CustomUI/giipLSvrList.html