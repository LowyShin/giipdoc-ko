### Specification

* URI
  * `http://giip.littleworld.net/API/CQE/queue/listbylssn?sk=<sk>&lssn=<lssn>&gk=sk`
* Description
  * 지정한 Logical Server에 등록되어 있는 Queue 리스트를 표시
* Input Parameter
  * sk
    * Secret Key
  * lssn
    * Logical Server일련번호
    * Logical Server의 상세 화면에서 확인 가능
  * gk
    * 'sk' 고정값
* Output
  * text/JSON
    * "mssn": 스크립트 일련번호
    * "lssn": Logical Server 일련번호
    * "mslsn": Queue 일련번호
    * "interval": 동작 주기
    * "repeat": 반복여부, 1 : 1회성, 2 : 반복
    * "active": 사용여부, 1 : enabled, 0 : disabled
    * "lastdate": 최종 실행날짜 (예 : "2016-11-10 13:24:38")
    * "regdate": Queue 등록일 (예 : "2016-07-28 23:31:00")
    * "CName": Customer 이름
    * "LSUsage": Logical Server 라벨
    * "LSHostName": Logical Server의 Hostname
    * "msName": Script 이름
  * Data Sample
```
jsoncallback({
  "items": [ 
    {
        "mssn": "1",
        "lssn": "123",
        "mslsn": "123",
        "interval": "5",
        "repeat": "2",
        "active": "1",
        "lastdate": "2016-11-10 13:24:38",
        "regdate": "2016-07-28 23:31:00",
        "CName": "Littleworld",
        "LSUsage": "DB01",
        "LSHostName": "DB01",
        "msName": "[02][Linux][01][giip/sh] Sys Info Update for Linux"
    }
  ]
})
```

* Queue List를 Select 태그에 넣는 샘플
  * https://github.com/LowyShin/giip/blob/gh-pages/CustomUI/giip_Client_Select.html
