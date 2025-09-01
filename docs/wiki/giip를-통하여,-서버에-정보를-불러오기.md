## 리눅스 서버의 사양에 대한 정보를 파악

###스크립트 링크
* https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/getSysInfo_Cent7.sh
* https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/sh/getSystemInfoLinux.sh

###설명
* giip서버에 등록되어진 서버에 대한 정보(hostname, cpu, OSver, 

![powershell err msg](https://github.com/LowyShin/giip/blob/gh-pages/images/ss/clientmsg/snmdc002errmsg.png)




``` powershell -Command "Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force" ```

powershell prompt라면 아래 명령을 실행하세요. 

``` Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force ```

정상적으로 권한이 풀렸는지 확인은 아래 명령을 실행하세요. 

``` Get-ExecutionPolicy ```


![powershell err msg](https://github.com/LowyShin/giip/blob/gh-pages/images/ss/clientmsg/snmdc002errmsg.png)
RemoteSigned 라고 표시되면 정상입니다.