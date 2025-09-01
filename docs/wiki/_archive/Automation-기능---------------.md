## AUTOMATION 기능

Automation 부분은 실제적으로 giip의 가장 핵심이라 할 수 있는 부분입니다.
앞단의 모든 부분이 해당 Automation 기능으로 관리되고 있기 때문입니다.
아래 그림은 Automation을 눌렀을 때 나오는 화면입니다. 

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation01.png)


위 그림의 List는 현재 각 System에서 돌아가고 있는 스크립트의 내용입니다.
물론 처음 설정에 들어가는 관리자는 해당 List는 보이지 않습니다. 
처음 설정에 들어가는 관리자는 본인이 등록을 해야 해당 List가 보여집니다.
**“1”** Add a Que는 등록된 스크립트와 등록된 System의 매핑과 옵션을 주는 페이지로 이동을 하게 됩니다. **“2”** Script List는 스크립트를 등록하는 페이지로 이동을 하게 된다. 
처음 System을 설정 하고 등록하는 관리자라면 **“2”** Script List 에서 먼저 시작”을 하여야 합니다.

다음 그림은 Script List를 눌렀을 때의 화면입니다.

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation02.png)


위 그림에 나와있는 리스트는 필자가 등록한 스크립트 List들입니다.
다시 말하지만 처음 등록하는 관리자라고 한다면 해당 List는 나오지 않고, Add a Script 와 Que Management 버튼 만 보일 것입니다.
 
**1. msName:** 관리자가 만든 스크립트의 이름입니다. 해당 생성된 이름을 누르면 이미 생성된 스크립트의 수정 화면으로 변경됩니다. 

다음 그림은 **“1”**을 눌렀을 때의 화면입니다.

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation03.png)


위와 같이 스크립트를 수정 또는 삭제가 가능합니다.

**2. msType:** 관리자가 만든 스크립트의 확장자입니다. O/S환경에 따라 확장자가 달라 집니다.
 
**3. msPrice:** 금액 표시란입니다. 향후 다양한 스크립트들이 생성 되면 관리자들이 자신이 만든 스크립트를 팔 수도 있고 다른 관리자의 스크립트를 사서 사용 할 수 있게 됩니다. 현재는 모두 Open 되어 있다.
 
**4. msPer:** 관리자가 만든 스크립트가 공개용인지 비공개 용인지 표시가 나타나는 부분입니다. 비공개용은 Private로 표시되고, 공개용은 Public로 표시 됩니다.
 
**5. msRegdt:** 마지막으로 스크립트를 수정한 시간이 나옵니다.
 
Script List 화면에서 “Add aScript” 버튼을 눌러 스크립트 생성 화면으로 넘어가 스크립트를 생성합니다.

아래 그림은 스크립트 생성 화면입니다.

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation04.png)


**1. Script Name:** 생성될 스크립트의 이름을 생성합니다. 최대한 알아보기 쉽게 합니다.
 
**2. Script Type:** 스크립트의 확장자를 선택합니다. 각각의 O/S 환경에 맞게 확장자를 정합니다.
 
**3. Script Detail:** 해당 스크립트의 설명을 기재합니다. 
    
**4. Script Source:** 사용할 스크립트를 제작합니다.

 ※ 샘플 스크립트 참조 : [https://github.com/LowyShin/giip/tree/gh-pages/giipscripts/](https://github.com/LowyShin/giip/tree/gh-pages/giipscripts/)

**5. Permission:** 생성할 해당 스크립트의 용도 즉 공개 할 것인지 내부 관리자만 사용 할 것인지를 정합니다.
 
**6. Price:** 공개용으로 판매 할 경우 해당 스크립트의 가격을 생성해 놓습니다.(향후 오픈마켓을 시작할때 서비스 예정)
 
해당 스크립트의 작성이 완료 되면 “Insert record ” 를 눌러 저장 후 list로 돌아갑니다.
 
다시 Automation의 List 화면에서 이제 “Add Queue”를 눌러 관리자가 생성한 스크립트를 각각의 서버의 용도에 맞게 매핑 시킵니다.


아래 그림은 Add a Queue” 버튼을 눌렀을 때의 화면입니다.

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation05.png)


**1. Script Name:** 사용할 스크립트를 정합니다. 오른편의 역 삼각형을 누르면 관리자가 생성한 스크립트의 List들이 나오게 되고 그 중에 선택을 하면 됩니다.
 
**2. Logical Server:** 선택한 스크립트를 어느 시스템에 적용할지를 선택합니다. 위 “1”과 마찬가지로 오른편의 역 삼각형을 누르게 되면 등록되어 있는 시스템들이 나오게 됩니다. 그 중에서 선택하면 적용됩니다.
 
**3. Interval: Check** 간격을 의미한다. 해당 스크립트가 얼마 마다 작동하여 시스템의 값을 가져올지 주기를 정합니다. 
 
**4. Repeat:** Check를 얼마나 반복 할지를 정합니다. One-time일 경우에는 한번만 실행 하고 Recursive는 위 Interval의 주기에 맞게 계속 반복 하게 됩니다.
 
**5. Start Date:** 해당스크립트를 언제부터 시작 할지를 정합니다

**6. Status:** 해당 스크립트를 계속 사용할 것인지 정할 수 있습니다. Active일경우 계속 동작 하게 되고 Disable일 경우 해당 스크립트는 동작 하지 않습니다.

**7. Custom Variables:** 해당 시스템이 어느 그룹인지 표기 할 수 있습니다. 
 
위와 같은 설정을 등록하고 나면 “Insert  Que” 버튼을 눌러 Que를 등록합니다.
위와 같이 등록이 완료 되면 처음 Automation의 List 에 표기됩니다.

다음 아래 그림은 Automation 의 각 항목별 세부 내용입니다.

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation06.png)


**1. Script Name:** 운영되고 있는 스크립트의 이름이 나타냅니다. 해당 이름을 누르게 되면, 해당 스크립트의 수정 페이지(스크립트와 System 매핑 페이지)로 넘어가게 됩니다. 
수정 페이지에는 그 동안 실행 된 스크립트 Que에 대한 Log를 볼 수 있습니다.


![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation07.png)


**2. Logical Server:** 현재 운영중인 System의 이름이 나타내어 집니다. 해당 이름은 클릭이 가능하고 클릭 시 Logical Server의 세부 정보로 넘어갑니다.
 
**3. Interval:** 해당 System이 얼마 간격으로 정보를 갱신하는지 갱신 주기를 알 수 있습니다. 
 
**4. Repeat:** 해당 스크립트가 계속 반복적으로 돌아가는지 아님 1회성인지를 나타내어 줍니다.
 
**5. Register Date:** 해당 스크립트가 언제부터 동작 되었는지가 기록됩니다.
 
**6. Last Executed:** 해당 스크립트가 마지막으로 업데이트한 시간이 기록됩니다. 여기서 말한 업데이트란 System으로부터 정보를 갱신한 시간을 말합니다.
 
**7. Status:** 해당 스크립트가 동작 중에 있는 것인지 더 이상 동작 하지 않는 것인지가 색으로 나타납니다. 컴퓨터 모양의 아이콘을 눌러 상태를 변경 할 수 있다. 파란색은 정상 동작 중에 있는 것이고 하얀 색은 Disable 상태이다. 
 
**8. Func:** 해당 시스템이 어느 그룹인지 표기 할 수 있습니다. 아이콘은 변경, 삭제, 소스 보기 입니다.
 


다음은 위 그림 Script Name인 **“1”**을 눌렀을 때의 설명입니다.  

![service-Automation](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-Automation08.png)


**1. Update Queue:** 스크립트의 수정이 끝나면 해당 버튼을 눌러 정보를 갱신 시킵니다.
 
**2. Delete Queue:** 버튼을 누르면 해당 스크립트 내용이 삭제됩니다.
 
**3. List:** 현 상태 값의 변화를 주지 않고 List 목록으로 빠져 나갑니다. 

**4. Enforce Job:** 해당스크립트를 해당 시스템에 주기와 상관 없이 다시 실행 시킵니다.

**5. LSUsage:** 관리자가 구분하기 위하여 정해 놓은 이름입니다. 서버의 표시명 등을 기입하면 여기에 표시됩니다.
 
**6. LSHostName:** 시스템의 호스트 이름입니다. 이 부분은 서버에서 자동으로 가져 옵니다.
 
**7. Que Send:** giip의 JOB에서 실행할 시간이 되면 Ready로 변경됩니다. Ready상태인 경우 서버가 스크립트를 가져갈 수 있는 상태가 되고 서버가 스크립트를 가져가면 Send OK 로 표시되고 Send Date에 서버에서 가져간 일시가 표시됩니다.   

**8. Reg Date:** 스크립트가 Que List에 등록된 일시가 표시됩니다. 서버에서 가져갈 준비가 된 시간을 의미합니다.
 
**9. Send Date:** 서버에서 스크립트를 가져간 일시를 표시합니다. 




***