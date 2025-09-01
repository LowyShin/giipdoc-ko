JSON으로 받은 서버 리스트를 이용하여 테이블로 표시하는 예제 입니다. 

1. 사전준비
 * Customer 생성
 * Service 생성
 * Secret Key 발급
 * Logical Server 추가
 * Logical Server의 기본정보 취득 스크립트 등록 및 실행
2. API호출 URL작성
 * 호출 형식
 * `http://secure.littleworld.net/api/lsvr/list?sk=<Secret Key>`
 * [API 상세 사양](getServerList)
3. JSON HTML작성
 * 아래 URL에서 소스 파일 다운로드
 * https://github.com/LowyShin/giip/blob/gh-pages/CustomUI/giipLSvrList.html
 * 다운로드 받은 파일을 메모장에서 열어서 `<Secret Key>` 부분을 giip 웹 포털에서 찾아서 붙여넣기
4. 저장
 * JSON호출이기 떄문에 HTML파일로 저장하면 됩니다. 
 * PHP, ASP등의 서버 프로그램으로 개발하려면 그에 맞는 지식을 미리 습득하시기 바랍니다.
5. 완료!

생성된 HTML파일을 브라우저에서 호출하면 정상적으로 서버 리스트가 테이블 형태로 보이면 성공입니다.
API상세 페이지에서 보고 싶은 필드를 추가하면 테이블의 사양을 바꿀 수 있습니다. 

