## KVS Put API

시스템의 정보 또는 앱, 서비스등의 정보를 JSON포맷으로 giip KVS에 저장할 수 있습니다. 
사양은 아래와 같습니다.

* API 명
  * KVS Put
* URI
  * http://giip.littleworld.net/API/kvs/put
* 입력값
  * sk varchar(100)
    * giip Secret key 관리 페이지에서 추가한 키를 넣습니다.
  * type varchar(32)
    * "lssn" 고정 값을 넣습니다.
  * key varchar(100)
    * lssn값을 입력합니다.
    * lssn은 Logical Server의 일련번호를 뜻합니다.(logical server상세 페이지에서 확인할 수 있습니다.)
  * factor varchar(32)
    * 체크하고자 하는 이름을 넣습니다. 테이블로 따지면 테이블명에 뜻하는 값을 넣으면 됩니다.
  * value nvarchar(512)
    * 자유롭게 JSON타입으로 입력합니다. JSON포맷이 다르면 입력이 되어도 출력되지 않으니 주의하시기 바랍니다.

* 예제 (Shell Script)
```shell
# User Variables ===============================================
factor="KVM"
Attrib="List"
DataCnt=`virsh list --all | grep [0-9] | wc -l`
valueJSON=`virsh list --all | grep [0-9] | awk '{print ",{\"ID\":\""$1"\", \"Name\":\""$2"\", \"State\":\""$3" "$4"\"}"}'`
valueJSON=`echo "{\"$factor-$Attrib\":$DataCnt,\"DATA\":[ $valueJSON ]}" | sed -e "s/\[ ,/\[ /g"`
#echo -e $valueJSON

# Send to KVSAPI Server =========================================
qs="sk=$sk&type=lssn&key=$lssn&factor=$factor-$Attrib&value=$valueJSON"
lwAPIURL="https://secure.littleworld.net/API/kvs/kvsput.asp"
if [ $DataCnt > 0 ]; then
	curl -k -w '\n' "$lwAPIURL" --data "$qs" -XPOST
fi
```

* 예제 (PHP)
```php
sk="fkewjfkelwjkfjwel";
type="lssn";
key="55";
factor="NetworkTraffic";
value="[{\"NIC Name\":\"eth0\",\"Out bound\":30000},{\"NIC Name\":\"eth1\",\"Out bound\":10000}]";
qs="sk=$sk&type=$type&key=$lssn&factor=$factor&value=$valueJSON";

$url = "http://giip.littleworld.net/API/kvs/put?$qs";
$curl = curl_init($url);
$options = array(
  //HEADER
  CURLOPT_HTTPHEADER => array(
      'Accept: application/json',
  ),
  //Method
  CURLOPT_POST => true,//POST
  //body
  CURLOPT_POSTFIELDS => http_buid_query($post_args), 
);

//set options
curl_setopt_array($curl, $options);
// request
$result = curl_exec($curl);

echo $result;
```

## Links

[[API]]