## 개요

KVS로 지정된 JSON데이터의 특정 값을 비교하여 일정 수준을 벗어나면 알람 또는 액션을 취하는 기능


## 사용법

* [Logical Server] 클릭
* [Logical Server] 리스트에서 라벨을 클릭
* [Logical Server] 상세 정보에서 중간 쯤에 [[Trigger Management]] 버튼을 클릭
* 아래와 같은 트리거 관리 페이지로 이동함

![alt text][Trigger Management]

* Key
 * 풀다운 메뉴1
    * "lssn" (고정)
    * Logical Server를 의미함
 * 풀다운 메뉴2
    * logical Server를 선택하면 선택된 Logical Server로 필터가 됨.
* Factor
 * 풀다운 메뉴
    * KVS에서 사용하는 Factor. (테이블명과 같은 개념)
 * [Filter] 버튼
    * 클릭하면 해당 조건으로 필터된 로그가 맨 아래에 나타남
* Trigger
 * 입력 박스1
    * KVS에서 각 로우(JSON의 경우 데이터 묶음)안에 있는 세부 항목명을 입력
    * 위의 [Filter] 버튼을 클릭하여 아래에 로그가 나타나면 그 안에서 로그를 선택해서 복사해서 붙여넣으면 편리함
    * 'giipLogDate'라고 입력하면 최종 로그가 찍힌 날짜를 기준으로 조건판단 가능.
    * 만약 giipLogDate > 900 이라고 입력하면 최종 입력값이 15분을 초과한 경우 알람 또는 액션을 취할 수 있음
 * 풀다운 메뉴
    * 연산 기호를 선택
 * 입력 박스2
    * 조건 기준을 입력.
    * 위의 예 처럼 900 등을 입력하여 KVS데이터와 비교.
    * 글자를 넣을 수 있지만, 그렇게 되면 '=' 기호만 인식되고 나머지는 인식되지 않음
 * [Filter] 버튼
    * 클릭하게 되면 조건 값이 있을 경우 아래 로그에서 조건에 해당하는 로우는 노란 표시가 됨
* Action (조정중)
 * 풀다운 메뉴
    * 조건에 만족할 때 실행할 스크립트를 선택
    * 스크립트는 Automation의 스크립트 관리에서 등록한 것 중에 선택
    * 5분에 한 번씩 조건을 검색하여 해당 한 경우 Script를 한 번 실행하도록 되어 있음.
* Mail
 * 입력 상자
    * 이메일 주소 입력
    * 유저를 여러명 입력하고 싶은 경우 메일링 리스트를 만든 뒤에 메일링 리스트를 입력하여 해결
 * Check box
   * 체크를 해야만 조건이 만족할 때 메일 발송을 함
* SMS (유료 고객만 지원)
 * 입력박스
   * SMS수신 전화번호
 * Check box
   * 체크를 해야만 조건이 만족할 때 메일 발송을 함
* [Add Trigger] 버튼
   * 위의 조건으로 트리거를 시작하고자 하는 경우 클릭
   * 동일 조건으로 여러번 등록 가능

트리거를 설정하고 저장한 경우 해당 조건으로 그래프나 테이블을 작성할 수 있습니다.
![alt text][Trigger Graph]

X : 날짜
Y : 조건 데이터

[Trigger Management]: /LowyShin/giip/blob/gh-pages/images/ss/giip-SS-TriggerAdd01.png "giip Trigger Management"

[Trigger Graph]: /LowyShin/giip/blob/gh-pages/images/ss/giip-SS-TriggerAdd01-Graph.png "giip Trigger Graph"

