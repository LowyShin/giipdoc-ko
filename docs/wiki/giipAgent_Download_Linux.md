Linux는 wget등을 활용하여 다운로드를 진행하면 됩니다. 

커맨드는 다음과 같습니다. 

```shell
wget "http://giip.littleworld.net/api/agent/getbylabel?op=giipAgentlinux&sk=<SecretKey>&lb=<LabelName>" -O giipAgent.sh
```

* <SecretKey> : Service Group 메뉴에서 생성된 Secret Key 를 입력합니다.
* <LabelName> : Logical Server를 만들었을 때의 Label Name 을 입력합니다. (OS에 따라 한글이 인식되지 않는 경우가 발생할 수 있으니 가급적 영문으로 입력하시는 것을 추천합니다.)

서버 수량이 많은 경우 위의 커맨드를 대량으로 복사하여 SecretKey 와 LabelName을 맞추어 프로그래밍을 하시면 됩니다. 
만약 서버 등록시 hostname으로 LabelName을 등록했다면 다음 스크립트를 이용하시면 편리하게 다운로드 받으실 수 있습니다. 
물론 Service Group이 여러개 인 경우 각 서버에 맞는 SecretKey를 맞춰주셔야 합니다. 

```shell
#!/bin/sh
sk="<SecretKey>"
hostname=`hostname`
wget "http://giip.littleworld.net/api/agent/getbylabel?op=giipAgentlinux&sk=$sk&lb=$hostname" -O giipAgent.sh
```
