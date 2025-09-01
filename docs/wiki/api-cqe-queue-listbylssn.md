# List by lsSn

lssn에 올라간 모든 Queue를 가져오는 api

- uri
  - api/cqe/queue/listbylssn
- method
  - GET/POST
- input
  - sk `-- secret key`
  - lssn `-- lsSn, Logical machine의 SN`
- output
  - mssn `-- Script SN`
  - lssn `-- Logical machine SN`
  - mslsn `-- Queue SN`
  - interval `-- interval minute`
  - active `-- 1 : active, 0 : deactive`
  - lastdate `-- 마지막 실행 일시`
  - regdate `-- 등록일시`
  - CName `-- 프로젝트명`
  - LSUsage `-- Logical Machine의 용도`
  - msName `-- 스크립트 명`

## Links

- [[API]]