# 개요

이 가이드는 SaaS형 giip 서비스에 자신의 서버를 등록 및 설정하는 방법을 안내합니다.
등록 옵션에 대한 설명과 기능설정의 예제가 포함되어 있습니다.


On-Premise형 설치에 대해서는 직접 문의 주시기 바랍니다. 
* [문의하기](https://github.com/LowyShin/giip/wiki/Contact-Us)

### 등록 동영상
이미지를 클릭하면 설치동영상으로 링크됩니다.
[![giip등록](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-install-Web-Videocover.png)](https://youtu.be/oILjyV1h4OE "giip등록")

## 프로그램 접속

Internet Explorer 의 URL 에 접속할 IP 및 도메인을 쳐서 첫 페이지로 들어가게 됩니다.
Test 사용자의 경우 아래에서 왼쪽 상단의 GIIP 로그를 클릭하여 첫 login페이지로 이동을 합니다. (On-premise에서는 처음 URL을 치고 들어오면 login 화면으로 넘어갑니다.) 

![Install Mainpage01](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-mainpage01.png)

 우측 상단의 “Sign in” 버튼을 클릭하여 구글 로그인을 합니다.구글 계정을 기본으로 운영하며 개인정보는 giip에서 보관하지 않습니다. 로그인 정보를 잃어버리신 경우는 구글의 계정관리에서 해결하시기 바랍니다.

![Install_Mainpage02](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-mainpage02.png)

giip는 기본적으로 google의 인증 API를 사용하여 google계정이 있어야 Test 사용이 가능합니다. (On-Premise로 제공되는 제품은 google계정이 없이도 사용이 가능하게 되어 있습니다.)

로그인이 되었으면 Dashboard가 표시될 것입니다. 로고 또는 Customer 박스 테두리를 클릭하여 Customer Management에 들어갑니다.

![Install_mainpage03](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-mainpage03.png)


***

##프로그램 환경설정

giip의 초기 “Dash Board”의 화면에서 각각의 기능은 메뉴설명 항목을 참조하세요.
(메뉴설명 [https://github.com/LowyShin/giip-ko/wiki/%EB%A9%94%EB%89%B4%EC%84%A4%EB%AA%85](메뉴설명))

Dash Board 화면에서는 현재 등록 되어 서비스 되어지고 있는 고객 관리를 한눈에 할 수 있게 되어 있습니다 위 화면 상단에 giip logo를 누르게 되면 “Customer Manage” 화면으로 넘어가게 됩니다.

다음은 Customer Manage 화면입니다.

![Install_Customerlist01](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-customerlist01.png)

Customer Manage 는 전체 서비스의 가장 큰 단위로 관리 또는 그룹을 지을 때 사용합니다. 가장 많이 사용하는 예로는 SI 사업자나 IDC사업자들이 여러 회사의 시스템을 관리해줄 때 그룹으로 분류하여 사용합니다. 사용자가 On-premise 로 사용할 때에는 단독으로 사용하기 때문에 자기 회사만 등록하고 나면 다시 등록을 요하지는 않습니다. 


***

## customer 등록

처음 고객을 등록 하기 위해서는 화면에서 Add Customer를 눌러 Customer등록페이지로 들어갑니다.

![Install_Customerlist02](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-customerlist02.png)

아래는 Customer 등록 화면입니다.

![Install_Customerlist03](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-customerlist03.png)

**1. 고객 정보 입력란**
    
- Customer Code : 고객 구분 코드, 다른 화면에서의 고객 구분 시 사용

- Customer Name : 고객 이름 등록란

**2. 입력 하고 난 고객에 대한 등록 버튼**

**3.  취소 버튼**

해당 페이지에서 Code와 Name는 같은 레벨에 위치합니다. 즉 Code는 Name이고 Name는 Code인 셈입니다. 둘을 따로 표기 한 이유는 회사명이 길어질 때 다른 화면에서 다 볼 수 없으므로 짧게 나타내어 주기 위해서 입니다. 그러므로 Customer Code만 기재하여줘도 상관은 없습니다.
Insert record 를 눌러주면 해당 그룹이 등록되게 됩니다.

아래는 고객이 등록되고 나면 보여주는 화면입니다.

![Install_Customerlist04](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-customerlist04.png)

빨간색 테두리에 있는 부분이 현재 등록된 부분입니다.
CSn은 관리 코드로써 위와 같이 동일 Code의 이름이 중복으로 발생했을 때 관리자가 관리하기 편하기 위해 나타내어진 Code입니다. 
 생성된 그룹에 대한 세부 정보는 CCode에 생성된 Code를 누르면 해당 Customer의 상세 정보를 볼 수 있습니다. 

다음은 고객 상세 정보를 나타내는 화면입니다.

![Install_Customerlist05](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-customerlist05.png)

위 고객 상세 정보에서 Modify를 누르고 들어가면 고객 상세정보를 더 넣거나 수정을 할 수 있습니다.
Delete 를 누르면 생성된 고객 정보를 지울 수 도 있게 됩니다.
위 화면에서 Modify를 누르면 아래의 화면으로 넘어가게 됩니다.
아래 화면에서는 CSn 코드 부분을 제외하고 모든 정보를 수정 할 수 있게 하였습니다.

![Install_customerlist06](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-customerlist06.png)

고객 정보 수정이 끝나고 나면 Update record른 눌러 저장을 합니다.
저장이 끝나면 다시 Customer 등록 화면으로 갑니다.


***

## Secret Key 등록

Customer Manage 등록이 끝나고 나면 그 다음 서비스 등록으로 이어집니다.
서비스 등록은 서비스 별로 Secret Key를 발급하여 관리 할 수 있게 합니다. 한 서비스 그룹에 대하여 여러 번의 Secret Key를 발급 할 수 있으나 관리 되고 있는 시스템의 key와 항상 일치 하여야 합니다. 보안상, 관리자 외의 사람이 Secret Key를 알고 있을 때 폐기하고 새로 발급 할 수 있습니다.

다음은 서비스 그룹을 등록하도록 하겠습니다.

![Install_Secretkey01](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-secretkey01.png)

서비스 그룹을 등록하기 위해서는 우측 상단의 풀다운 메뉴에서 생성한 Customer를 선택한 후  하단의 Add Service Group 버튼을 클릭합니다.

 다음은 Service Group 등록화면입니다.

![Install_Secretkey02](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-secretkey02.png)

위 화면에서 Service code를 등록합니다. Service code 와 Service Name, Service Desc는 위 Customer Manage에서와 같이 고객이 분류를 하기 위함입니다.
위 분류 내용을 넣고 Insert record를 누르면 해당 서비스가 등록이 됩니다. 서비스가 등록이 되면 SecretKey Add를 눌러 Secret key를 발급 받습니다.
아래 그림은 Secret key를 발급 받은 화면입니다.

![Install_Secretkey03](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-secretkey03.png)

상단의 화면 오른편의 SecretKey Add를 누르면 중앙 빈칸에 위와 같은 Secret key가 발급 됩니다.
SecretKey Add옆의 Delete를 누르면 해당 서비스 자체가 사라지게 됩니다. SecretKey 가 생성되고 나면 SecretKey 버튼은 SecretKey Renew로 변경됩니다.
SecretKey Renew 버튼을 누르면 이미 생성된 Secret Key가 변경이 됩니다.
Secret Key를 삭제하거나 변경을 할 때에는 서비스 되고 있는 시스템의 Secret Key를 함께 변경해야 합니다. 시스템의 Secret Key를 변경하는 방법은 LOGICAL SERVER 에서 해당 서비스 그룹의 서버로 들어가서 맨 아래 부분의 Scripts를 열어 Secret Key를 변경 후 각 서버 마다 복사를 합니다. Secret key 변경 방법은 추후 다시 설명 하기로 하겠습니다.
위 화면에서 Add IDC Info. 버튼을 누르게 되면 SERVICE PROVIDER 의 Data Center등록 화면으로 넘어가게 되고, Add Logical Server버튼을 누르면, LOGICAL SERVER의 Server 등록 화면으로 넘어가게 됩니다.


***

## SERVICE PROVIDER 등록

SECRETKEY까지 등록이 끝나면 Service Provider를 등록 합니다. Service Provider 를 등록하는 이유는 각 시스템들의 POP을 구분하기 위함입니다.

아래는 SERVICE PROVIDER 첫 화면입니다.

![Install_Serviceprovider01](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-serviceprovider01.png)

위 화면에서 Add Data Center Info.를 클릭하여 현재 받고 있거나 받으려는 Data Center나 Cloud를 등록 할 수가 있습니다.

아래 그림은 Data Center 정보를 입력 하는 화면입니다.

![Install-Serviceprovider02](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-serviceprovider02.png)

Type는 Data Center와 Cloud를 구분 할 수 있고, IDC Code는 다른 코드와 마찬가지로 사용하는 곳의 장소나 위치를 Code로 표시하고, IDC Name는 실제 Name를 기록하여 줍니다. Location은 내가 받고있는 서비스의 국가를 표시 할 수 있고, URL을 넣어서 해당 Data Center나 위치 정보들을 기록하고 Insert record를 눌러 저장을 하거나 Cancel을 눌러 취소를 할 수 있습니다.

![Install-Serviceprovider03](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-serviceprovider03.png)

위 그림 Service Provider 에서 Add Rack Info.를 누르면 아래와 같이 Rack정보를 넣을 수 있습니다.

![Install-Serviceprovider04](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-serviceprovider04.png)

Insert record를 눌러 저장합니다.



***

## LOGICAL SERVER 등록

지금까지 시스템을 등록하기 위한 환경설정이 완료 되었으면, 지금부터는 실제적으로 서비스 및 감시가 될 System을 등록할 수가 있습니다.
아래는 Logical Server 등록 화면입니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver01.png)

위 그림에서 Add Logical Server를 누르고 들어가서 System을 등록합니다. 
아래 그림은 Logical Server 를 등록하는 화면입니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver02.png)

해당 화면에서는 Label과 그룹 정보만 기입하면 System의 정보는 기본 스크립트에서 모두 취득이 가능하게 됩니다.


**1. Label:** 관리자가 확인 할 수 있는 용도 또는 호스트 명을 기입합니다. Server의 경우 호스트 명은 자동으로 갖고 올 수 있으니 서비	스 용도별로 기입하는 걸 추천합니다.

**2. Service Group:** 현재 등록하고 있는 System이 포함 되는 그룹
                      
해당 그룹 설정을 해야 같은 그룹의 Secret Key를 사용할 수 있습니다. Service Group는 기존에 생성한 그룹을 매핑하여 사용하여도 되고, Add Group을 눌러 신규로 생성 해도 됩니다. Add Group를 누를 경우 Customer Manage텝의 Add Service로 넘어갑니다. 

**3. Insert record:** 그룹까지 매핑이 되었다면, Insert record를 눌러 저장을 합니다.

**4. Logical Server List:** Logical Server로 되돌아 가 현재 등록되어 있는 System 의 등록 정보내용을 보여줍니다.


Logical Server 등록 화면에서 Add Service는 Customer Manage텝의 Add Service 등록으로 넘어 가고 All Disk Usages는 현재 등록된 전체System의 사용중인 Disk List가 보여지며, All IP Usages 는 사용중인 전체 IP List를 보여 줍니다.

아래 그림은 Logical Server 화면입니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver03.png)

해당 System이 등록되면 위와 같이 표시 되는데 빨간표시 부분을 누르면 현재 등록하려는 해당 System의 상세 등록 화면으로 넘어가집니다.

상세 화면은 다음과 같이 나옵니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver04.png)

 첫 System을 등록 후 System상세 페이지로 넘어가면 다음과 같이 나오지는 않습니다. 해당 정보는 스크립트 등록에 의하여 해당 System으로부터 갖고 오는 정보를 보여 줍니다. 각 등록되는 System마다 내가 원하는 정보를 따로 따로 볼 수도 있습니다. 처음 설정을 진행하게 되면 System 상세 페이지는 각각 빈칸으로 보이게 됩니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver05.png)

위 그림은 Logical Server Information을 따로 갖고 온 그림입니다.

- **Sn:** System을 구별하기 위한 코드. 자동으로 등록되어 지고 임의로 변경이 되지 않습니다.

- **HostName:** 스크립트가 등록되어 지면 해당 System의 HostName를 갖고 와서 보여줍니다. 처음에는 등록한 관리자의 IP정보가 보여집니다.

- **Usage:** System을 등록할 때 관리자가 정해준 이름이 보여지고 수정이 가능합니다.

- **Note:** System의 별도 코멘트를 기재 할 수 있습니다.

- **CPU:** 관리되고 있는 System의 CPU를 보여줍니다.

- **CPUs:** 관리되고 있는 System의 CPU 수를 보여줍니다.

- **RAM:** 관리되고 있는 System의 ram을 보여 줍니다.

- **OS Ver.:** O/S의 언어가 무엇인지를 나타내어 줍니다.

- **OS Language Code:** O/S 언어의 코드를 보여줍니다.

- **Manufacturer:** 해당 System의 제조사가 어디인지를 보여줍니다.

- **Domain Name:** 어느 도메인 그룹에 속해 있는지를 표기합니다.

- **Group Code:** 해당 System이 어느 Group에 속한 지를 표기합니다.

- **(cloud)Data Center:** 해당 System이 어느 곳에 있는지를 표기합니다.

- **Physical Server:** 해당 System의 Rack정보를 입력할 수 있는 화면으로 넘어갑니다.

- **Customer:** 해당 System이 어느 Customer에 속한 지를 표기합니다.

- **Last Checked:** 해당 System의 정보를 마지막으로 갱신한 시간이 표기됩니다.

그림에서 
1.Logical Server List를 누르게 되면 Logical Server의 List화면으로 이동하게 되고, 
2.Modify를 누르게 되면 상세 화면의 정보를 기입 할 수 있다. 
3.Delete을 누르면 해당 System을 삭제 할 수 있습니다.


Modify를 누르면 아래와 같이 변경할수 있는 화면이 나옵니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver06.png)

위 그림에서 Save를 누르면 해당 정보가 저장 되어 지고, Back를 누르면 저장되지 않고 이전 화면으로 넘어가게 됩니다.


아래 그림은 System 상세페이지 하단 부분입니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver07.png)

위 그림에서 해당 System의 O/S정보에 맞는 스크립트를 Download 받아 저장합니다. 브라우저 화면에서 Download 이 되지않을 경우 해당 스크립트를 펼쳐 스크립트 문구를 복사(Ctrl+a, Ctrl+c) 하여 해당 System의 메모장이나 vi편집기에 등록을 합니다.

스크립트 등록은 Agent 설치부분에서 설명합니다.
위 스크립트를 해당 System에 등록을 하게 되면 비로서 giip와 해당 System이 기본 통신을 할 수 있게 됩니다.


위에서 IP 정보 부분은 스크립트 실행에 의하여 모두 갖고 오지만 네트워크 장비처럼 스크립트 실행을 할 수 없는 System에서 관리 할 수 있게 수동으로도 IP를 입력 할 수 있게 하였습니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver08.png)

아래는 IP 수동입력 화면입니다.

![Install-Logicalserver](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-02install-logicalserver09.png)

