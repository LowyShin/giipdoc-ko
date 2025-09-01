# Secret Key 추가

Secret Key는 각 서비스 별 패스워드와 같은 기능을 합니다. 

서비스 단위로 하나의 SecretKey를 공유하며 Secret Key를 바꾸게 되면 바꾼 서비스 내의 모든 Job이 실행되지 않습니다. 
Secret Key는 보통 Instance에 LSSN과 같이 사용하고 있기 때문에 LSSN이 가지고 있는 서비스의 Secret Key가 변경되면 Instance역시 가동하지 않게 됩니다. 

Secret Key의 Renew시에는 충분한 주의를 하시기 바랍니다. 

## Secret Key 생성 방법

1. 환경설정 > 서비스 로 메뉴 이동
2. 서비스 추가(서비스가 추가 되어 있는 경우 패스)
3. 서비스명 오른쪽에 있는 [Create Key] 버튼 클릭
   - 생성에 시간이 걸릴 수 있으니 화면이 바뀔 때 까지 기다려주세요. 
4. SKey 부분에 32자의 코드를 취득

### Note

- 이미 SKey가 생성되어 있는 경우 [Renew Key] 버튼이 활성화 되어 있음. [Renew Key]를 누르면 새로운 키가 발급되기 때문에 기존 사용한 모든 스크립트 및 에이전트에서 Serect Key를 변경해야 함. 


