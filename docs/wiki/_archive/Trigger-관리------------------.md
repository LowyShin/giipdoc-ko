## 트리거 관리(TRIGGER MANAGE)


Trigger 기능은 각각의 System 마다 할 수 있으며, 설정에 의해 알림을  Mail과 문자 두 가지로 발송이 가능합니다. Message 기능은 단순히 기록을 저장하여 History를 남기게 할 수도 있고, Message 발생과 동시에 문자나 메일로 담당자에게 알려 줄 수도 있습니다.
다음은 Logical Server의 서버 상세정보를 봤을 때 Trigger 부분에 대한 설명입니다. 아래 그림에서 **“1”**을 보게 되면 관리 되고 있는 Trigger의 정보를 표시하고 **“2”**에서 정보의 변화를 그래프로 알 수 있습니다.

![service-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-trigger01.png)


위 그림 자동 실행 관리 화면에서 **“3”**의 “Trigger Management”를 누르면 아래와 같이 Check Server 등록과 설정을 할 수 있는 화면이 나옵니다.


![service-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-trigger02.png)


**1. KVS Filter:** 트리거를 추가 입력부분입니다.

**2. Triggerd Factor:** 기존에 설정된 트리거정보와 트리거로 설정된 값을 가저온 정보를 그래프로 표시합니다.

**3. Raw Data:**  트리거로 가져온 정보 log를 표시합니다.



다음 그림은 Tigger 입력 화면입니다.

![service-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-trigger03.png)


**1. Key:** Trigger대상 System을 등록 할 수 있습니다. 첫번째 탭 오른쪽의 역삼각형을 누르면 아래 그림과 같이 등록된 System들이 나열되어 보입니다. 두번째 탭의 오른쪽의 역삼각형을 누르면 서비스그룹을 선택 할 수 있습니다. “Goto Server Detail” 버튼은 해당 서버의 상세정보 페이지로 이동합니다.

**2. Factor:**    

**3. Trigger:** 기준을 설정합니다. 관리자에게 Message를 보내는 기준을 설정합니다. 아래 그림과 같이 부등호로 해당 값과 비교하여 보냅니다.   붉은색 박스 부분에 해당 임계 치 값을 설정합니다.   


![service-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-trigger04.png)


**4. Action:** 기 작업한 스크립트를 리스트에서 선택합니다.

**5. Email:** 관리자가 받을 E-mail을 적습니다. 해당 E-mail 로 경고 Message 가 보내어 집니다.

**6. SMS:** 관리자 핸드폰을 적습니다. 해당 Phone 으로 경고 Message 가 보내어 집니다. **(※유료서비스)**

**7. Add Trigger:** 기록된 내용을 저장합니다.



***







