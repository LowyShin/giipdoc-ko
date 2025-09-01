## 사용자 관리(USER MANAGE)

giip의 인증은 giip 설치부분에서 설명 한 바와 같이 Google API를 사용하고 있습니다. 단 온-프레미스를 사용하는 user는 Google 인증을 사용 하지 않아도 됩니다.

다음 그림은 USER MANAGE 탭으로 넘어 갔을 때의 화면입니다.

![service-user](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-user01.png)


처음 login을 하고 들어오면 위 화면에 자신의 계정만 보이게 됩니다.
위 그림에서 Add User을 눌러 신규 사용자를 추가 할 수 있으며, 해당 버튼을 누르면 User를 추가 할 수 있는 화면이 나옵니다.

![service-user](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-user02.png)


1. 사용자의 ID를 넣습니다.
2. 신규로 추가할 User의 mail을 넣습니다.
   (신규로 추가할 User의 Mail은 Google 메일 이어야 합니다. 이유로는 giip가 Google인증을 사용하기 때문입니다. 단, 온-프레미스 일 경우에는 일반 ID를 써도 상관 없습니다.)

위 그림과 같이 추가 화면에 들어가게 되면 “Insert User In My Company”, 와 "Invite My Company” 두 개의 입력 창이 뜨게 됩니다.
Insert User In My Company는 자신이 관리 하고 있는 업체 및 그룹의 관리자의 이동이나 Group 영역을 확장 할 수 있습니다.
즉 회사나 group 별 로 관리자가 나눠져 있을 때 해당 관리자의 User ID를 복사 하여 붙여 놓고 해당 버튼을 누르면 해당 User는 신규 Group이나 타 Group까지 관리 할 수 있게 됩니다. 

아래 예제는 giip_beginner Group에 있는 Test 관리자가 타 Group 관리까지 하는 예제 화면입니다.

![service-user](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-user03.png)

![service-user](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-user04.png)


위 예제 와 같이 실행 하면 해당 관리자 ID는 두 Group의 System을 다 관리 할 수 있는 권한이 생깁니다.
 
Invite My Company는 신규 User 추가 시 사용됩니다. 신규 관리자의 E-mail을 적어 보내고 해당 사용자가 수락을 하면 해당 Group의 관리자 권한이 생깁니다.
온-프레미스가 아닌 경우 Google 인증에 따르므로 Google 계정만 있으면 별도의 Password 생성은 하지 않습니다.

**(예제)**

![service-user](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-04service-user05.png)


먼저 관리자를 등록할 때에는 어느 Group의 관리자로 할지 정하여야 합니다. 그리고, 해당 Google 인증 mail을 등록해서 전송 시킵니다.




***