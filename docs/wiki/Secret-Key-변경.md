## 3. Secret Key 변경


상황에 따라 Secret Key를 변경해야 할 경우 서비스되고 있는 시스템의 Secret Key를 함께 변경해야 합니다. 시스템의 Secret Key를 변경하는 방법은 Logical Server 에서 해당 서비스 그룹의 Secret key를 변경한 다음 변경된 Secret Key를 복사한 뒤 서버에 설치된 Agent Scripts를 열어 변경된 복사하면 됩니다.

다음은 Secret Key를 변경하는 화면입니다.
 
![agent-Secretkey_Renew](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-Secretkey_Renew01.png)


상단의 서비스 그룹을 선택한 후 Secret Key 아이콘을 선택합니다.

![agent-Secretkey_Renew](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-Secretkey_Renew02.png)


오른쪽 빨간 박스 안의 Renew SecretKey 버튼을 선택하면 위와 같이 새로운 Secret Key 생성됩니다. 생성된 Secret Key를 복사합니다.

이제 서버에 설치된 Secret Key를 변경합니다.

다음은 Windows Server에 설치된 Agent의 스크립트입니다.

![agent-Secretkey_Renew](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-Secretkey_Renew03.png)


Agent Scripts 상단에서 위화면과 같이  반전표시된 코드 부분을 찾습니다.
빨간 밑줄 부분이 Secret Key 입니다. 화면과 같이 변경한 Secret Key 넣고 저장하면 Secret Key 변경이 완료됩니다.


다음은 Linux에 설치된 Agent의 스크립트입니다.

![agent-Secretkey_Renew](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-Secretkey_Renew04.png)


Agent Scripts 상단에서 위화면의 붉은색 밑줄 코드 부분을 찾습니다.
빨간 밑줄 부분이 Secret Key 입니다. 화면과 같이 변경한 Secret Key 넣고 저장하면 Secret Key 변경이 완료됩니다.




***


