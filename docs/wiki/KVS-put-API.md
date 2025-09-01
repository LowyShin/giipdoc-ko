## KVS Put API

* API 명
 * KVS Put
* URI
 * http://giip.littleworld.net/API/kvs/put
* 입력값
 * sk varchar(100)
   * giip 홈페이지의 Secret Key Management에 있는 Secret Key (서비스 생성후 나타남)
 * type varchar(32)
   * "lssn" 고정값 입력(차후 추가됨)
    * Logical Server의 일련번호 (logical server 상세 페이지에 lssn 값이 있음)
 * key varchar(100)
   * type에 해당하는 값
    * 현재는 lssn으로 고정했기 때문에 lssn값의 숫자를 넣으면 됨
 * factor varchar(32)
   * 체크할 부분 입력.
   * 여기에 입력한 값은 [[Trigger Management]]의 Factor부분에 자동으로 표시됨
   * 아무거나 입력해도 되는데, 카테고리로 묶이기 때문에 입력할 JSON데이터 셋의 테이블 명 같은 이름을 입력
 * value nvarchar(4000)
   * JSON 타입으로 자유롭게 입력 가능.
   * JSON 포맷이 에러가 발생해도 입력이 되지만, 조건 지정 및 출력시 잘못 출력될 수 있으니 주의.
* example
```shell
sk="<Secret Key>"
type="lssn"
key="55"
factor="NetworkTraffic"
value="[{\"NIC Name\":\"eth0\",\"Out bound\":30000},{\"NIC Name\":\"eth1\",\"Out bound\":10000}]"
qs="sk=$sk&type=$type&key=$lssn&factor=$factor&value=$valueJSON"
wget "http://giip.littleworld.net/API/kvs/put?$qs"
```
