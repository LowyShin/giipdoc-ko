## giip API

giip는 API를 활용하여 시스템의 각종 정보를 취득하거나 시스템에 명령을 보낼 수 있습니다. 
API를 사용하기 위해서는 Logical Server를 Service Group에 추가를 해야하고, Service Group에 Secret Key를 만들어야 합니다. 

* [[매뉴얼 - Logical Server에 Service Group 추가]]
* [[매뉴얼 - Secret Key 추가]]

## giipAPI V2

[20250311] 새로운 API시스템을 오픈했습니다. 현재는 slack에 최적화 되어 있기 때문에 slack에서 사용해보시거나, slack용 api에 맞추어 Postman같은 곳에서 던지면 동일한 효과를 볼 수 있습니다. 

### Slack App에서 활용하기

Slack App을 추가해서 채팅으로 giip를 사용할 수 있습니다. 

Slack App에 추가할 내용

![スクリーンショット 2025-03-12 201859](https://github.com/user-attachments/assets/0872d7b0-fbf2-4ad3-a4a3-03205fe96332)

- command : `/gic`
- Request URL :
  ```
  https://giipfaw.azurewebsites.net/api/HttpTrigger1?code=<YOUR_FUNCTION_CODE>
  ```
  관리자 참고: 레포지토리에는 실제 Function Key를 절대 커밋하지 마세요. 기존 키가 노출되었을 가능성이 있으면 Azure에서 해당 Function Key를 즉시 회전(재발급)하세요.
- Short Description : `giip console command`

### 자신의 UserAppKey 등록
giip User Portal에서 giip_secret_key를 취득하여 slack메시지에 추가
```
 /gic AppTokenPut 'giip_secret_key', 'using_app', 'zonecode'
```
- giip_secret_key : giip Web Console > 환경 > 서비스 에서 서비스를 등록하면 Secret Key를 발행할 수 있습니다. 
- using_app : 사용할 app을 구분해서 저장할 수 있습니다. Slack에서 사용한다면 `slack`이라고 표기하면 됩니다.
- zonecode : Time Zone 시스템에서 사용하는 zone코드를 입력하면 됩니다. jp, kr, utc 등..

자신의 UserAppKey로 두 개의 SecretKey를 등록하면 마지막에 등록한 SecretKey로 업데이트가 됩니다.

secretkey는 project별로 나뉘어 있기 때문에 project별로 작업을 해야 하기 때문입니다.

### 유저 권한 추가하기

```
/gic giiptokenput @giiptoken
```
- giiptoken은 giip웹서비스에 로그인하여 giip의 기능을 사용할 때 필요한 유저의 access token을 이야기 합니다. 
- giiptoken을 등록하면 유저가 giip web console에서 사용할 수 있는 많은 기능을 사용할 수 있게 됩니다.

### 자신의 Key 및 정보 확인

```
/gic myinfo
```

### 전체 Command List
```
/gic cmdlist
``` 
- 특정 키워드로 시작하는 커맨드를 찾을 경우
```
/gic cmdlist 'kvs'
```

- 기타 도움말
```
/gic help
```

### 구 버전 : [[giipAPI v1.]]


