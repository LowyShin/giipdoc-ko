# CQEForce

[[CQE]]에 올라간 Queue의 번호를 지정하여 강제 즉시 실행을 요청하는 api

- uri
  - api/cqe/force
- input
  - sk varchar `-- Secret key`
  - mslsn `-- Queue에 올라간 Job의 시리얼 번호`
- output 
  - RstVal `결과 코드`
  - SysMsg `시스템 메시지`
  - Data `결과 데이터 JSON`

## Links

- [[API]]