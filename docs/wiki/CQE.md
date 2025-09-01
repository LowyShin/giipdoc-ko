# CQE(Command Queue Engine)

## 개요

CQE는 디바이스에서 실행할 Command를 관장하는 Queue Engine입니다. 

AWS Lambda 또는 RabbitMQ와 같은 MQTT 방식을 사용하되 제로부터 만들어진 giip 전용 엔진 입니다. 

API로 표준화 되어있기 때문에 자유롭게 워크플로를 만들면 워크플로에 맞추어 자동으로 이기종간 업무 처리를 연속으로 수행할 수 있습니다.

각 디바이스에서 실행할 Script 또는 Command를 Script Repository에 등록한 뒤에 이 Command를 Queue에 올리면 자동으로 실행하고자 하는 Device가 가져가서 실행하는 구조 입니다. 

CQE를 사용하면 다양한 자동화를 할 수 있습니다. 

CQE는 자동화를 위한 스크립트 또는 명령의 등록 관리와 스케쥴러에 올라간 스크립트(Queue)의 관리의 두 가지로 나뉩니다. 

## 구조

- lssn : Device의 일련번호. CQE는 Device위에서 실행이 되기 때문에 실행할 Device의 일련번호가 필요합니다. 
- mssn : 스크립트 및 커맨드를 저장하는 레포지터리에 등록된 스크립트의 일련번호
- mslsn : 스크립트를 Queue에 올리면 생성되는 일련번호로 device에서 실행할 때 사용하는 번호

## 스크립트 등록

1. Top 메뉴에서 Automation 아이콘 클릭
* 아래의 Script Managment 버튼 클릭
* Add Script 버튼 클릭
* Script 또는 명령 등록
  * 스크립트는 기존 사용하는 스크립트를 등록하고 확장자를 맞추시면 됩니다. 
  * bat또는 sh로 선택하고 커맨드라인 명령을 그대로 입력하면 그대로 실행됩니다. 
* 아래쪽의 private, lp 부분은 현재 사용하지 않으니 그대로 두고 저장합니다.

## Queue 등록

등록된 스크립트를 서버를 지정하여 실행하는 용도입니다. 
특정 상태에서 실행을 하고 싶다면 우선 

## 기본 활용

* [[CustomVariables 활용]]

## API 

* [[getQueueListbyLssn]] : Logical Server에서 가동중인 Queue List 취득
* [[Enforce Queue]] : Queue 강제 실행

