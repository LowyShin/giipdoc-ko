KVS API를 이용하여 KVS를 저장한 뒤에 Trigger Management로 임계치를 설정하면 임계치를 체크하는 Log가 쌓입니다.
이 Log를 JSON으로 받을 수 있는 API를 이용하여 테이블로 표시하는 예제 입니다.

1. 사전준비
 * KVS API를 이용하여 데이터 저장
 * Logical Server Detail > Trigger Management 에서 Trigger 설정
 * 시간이 흘러 값을 축적
2. API호출 URL작성
 * 호출 형식
 * `http://secure.littleworld.net/api/attrib/get?jsoncallback=?`
 * [GetKVS API 상세 사양](https://github.com/LowyShin/giip/wiki/getKVStoJSON)
3. JSON HTML작성
 * 아래 URL에서 소스 파일 다운로드
 * https://github.com/LowyShin/giip/blob/gh-pages/CustomUI/giipKVSGet.html
 * 다운로드 받은 파일을 메모장에서 열어서 `<Secret Key>` 부분을 giip 웹 포털에서 찾아서 붙여넣기
 * 각 항목의 `<>` 표시를 KVS API에 맞추어 입력한 값에 맞게 적절하게 입력
4. 저장
 * JSON호출이기 떄문에 HTML파일로 저장하면 됩니다. 
 * PHP, ASP등의 서버 프로그램으로 개발하려면 그에 맞는 지식을 미리 습득하시기 바랍니다.
5. 완료!

생성된 HTML파일을 브라우저에서 호출하면 정상적으로 서버 리스트가 테이블 형태로 보이면 성공입니다.
API상세 페이지에서 보고 싶은 필드를 추가하면 테이블의 사양을 바꿀 수 있습니다. 

