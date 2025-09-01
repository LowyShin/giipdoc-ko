# CQE Get

giipAgent가 CQE에 올라간 Queue 정보를 취득 (실행용)

- uri
  - api/cqe/queue/get
- input
  - sk varchar `-- Secret key`
  - lssn `-- Queue에 올라간 Job의 시리얼 번호`
  - hn `-- Hostname 호스트명이 바뀌었는지 체크용`
  - os `-- OS text. OS의 상태가 바뀌었는지 크롤해서 보냄`
- output 
  - 정상인 경우
    - os에 windows라는 표기가 있는 경우 `Queue의 번호 || 스크립트 내용` 형식으로 표시
    - windows가 아닌 경우 스크립트 내용이 그대로 표시
  - 비정상인 경우
    - RstVal `결과 코드`
    - SysMsg `시스템 메시지`
    - Data `결과 데이터 JSON`

## Links

- [[API]]