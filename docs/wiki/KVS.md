[⇒[en]](https://github.com/LowyShin/giip/wiki/KVS)

### 개요

KVS(Key Value Store)는 표준으로 자리잡은 용어로 비정형 데이터 저장용으로 많이 사용되는 저장 공간을 뜻합니다. 

![KVS screenshot](https://github.com/LowyShin/giip/raw/gh-pages/images/v2/giip-ss-20200325-kvs.png)

giip의 KVS는 RDBMS와 연동하여 비정형 데이터를 연결 관리할 수 있는 스토어를 제공합니다.
RESTful API를 경유하여 어떠한 비정형 데이터도 저장이 가능합니다. 
시스템 정보에서 앱개발시의 로그 정보까지 모두 쉽게 저장하세요.

* [KVS put API Spec](KVS 입력 API)

KVS에 저장된 데이터는 Logical Server 상세 정보의 [[Trigger management]] 페이지에서 보실 수 있습니다.


### Examples
* Windows PowerShell(ps1)
  * [Powershell 로 기본 정보를 KVS로 저장(한글)](KVS_PowerShell_Sysinfo_Put)
* Linux Shell Script(sh)
  * [특정 프로세스 체크 저장(영어)](https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/kvsPutProcChk.sh)
  * [디스크 사용량 저장](https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/kvsPutDiskUsageLinux.sh)
  * [Netstat의 커넥션 타입별 통계 저장](https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/kvsPutNetstatConnCnt.sh)
  * [ps -ef 커맨드로 lsyncd 프로세스 체크](https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/kvsPutProcChk_lsyncd.sh)
  * [ps -ef 커맨드로 nginx 프로세스 체크](https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/kvsPutProcChk_nginx.sh)
  * [오래된 lsync 로그파일 삭제후 로깅](https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/kvsPutExecDelFiles)

