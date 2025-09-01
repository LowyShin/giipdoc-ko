# giipAPI V1

구버전 API문서는 여기로 옮겨졌습니다. 

### [giipAPI V2](./API.md)

## 기본 시스템 정보 취득 API
* [[getServerList]] : 보유 서버 리스트 출력
* [[SysInfoUpdate]] : 시스템 상세 정보 업데이트

## [[CQE]] (Command Queue Engine) 관련 API

CQE(Command Queue Engine)관련

- [[api/cqe/force]] : CQE에 올라간 Queue의 강제 실행
- [[api/cqe/queue/get]] : giipAgent가 Queue의 스크립트를 받을 때 사용하는 SP
- [[api/cqe/queue/add]]
- [[api/cqe/queue/listbylssn]]

## KVS관련

KVS(Key value store) 핸들링 관련

- [[api/kvs/attrib/get]]
- [[api/kvs/factor/get]]
- [[api/kvs/factorgroup/get]]
- [[api/kvs/flot/get]]
- [[api/kvs/put]] `-- KVS에 값을 넣는 API`
  * 샘플 스크립트 : https://github.com/LowyShin/giip/tree/gh-pages/giipscripts
- [[api/kvs/alldash]]

### KVS활용

* [getKVStoJSON](/LowyShin/giip/wiki/API---JSON-to-HTML-KVS(ko))
  * KVS에 넣은 값을 JSON형태로 받을 수 있습니다. 
  * 받은 정보를 바탕으로 HTML또는 Morris Graph등의 JSON을 지원하는 그래프 툴을 이용하여 그래프를 그릴 수도 있습니다.

## Logical Machine 관련

- [[api/lsvr/list]]
- [[api/lsvr/sysinfo/update]]
- [[api/lsvr/del]]

## JSON to Graph
* giip KVS API를 활용하면 일반적인 JSON 포맷의 다양한 그래프(morris, jplot, etc)툴을 활용하여 표현할 수 있습니다.
![alt text][giip-SS-morrisGraph]

## JSON to Table
* giip KVS API를 활용하면 HTML테이블로 표현할 수 있어 자신만의 대시보드등을 만들 수 있습니다.
![alt text][giip-SS-JSONTable]

## Messaging API
* 1607 Lowy, KVS API로 이동해서 더이상 Messaging API는 사용하지 않습니다.
* 그동안 설정된 것은 사용 가능하나 곧 기능은 사라질 예정입니다.

[giip-SS-morrisGraph]: /LowyShin/giip/blob/gh-pages/images/ss/giip-SS-morrisGraph.png "giip morris graph"
[giip-SS-JSONTable]: /LowyShin/giip/blob/gh-pages/images/ss/giip-SS-JSONTable.png "giip JSON table"