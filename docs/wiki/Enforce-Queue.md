## 개요

Queue에 올려놓고 조건이 맞으면 실행시키고 싶은 Job이 있을 겁니다. 
대부분은 Trigger Management에서 실행하면 되기 때문에 문제가 없지만, 
스크립트에서 강제로 Job을 호출하고 싶은 경우도 있지요. 

이런 경우 아래 API를 호출하면 Enforce Job버튼을 누른 것과 동일한 기능을 수행합니다. 

Queue에 올라가 있는 Job번호인 mslsn값은 giip홈페이지에서 찾을 수 있습니다. 


### Specification

* URI
  * `http://giip.littleworld.net/API/cqe/force?sk=<sk>&mslsn=<mslsn>`
* Input Parameter
  * sk
    * Secret Key
  * mslsn
    * Queue serial number
    * You must add queue to logical server and you can get mslsn value from queue detail page.
* Output
  * RstVal
    * Result value
  * SysMsg
    * System messages.
