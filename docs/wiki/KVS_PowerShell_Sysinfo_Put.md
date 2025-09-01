## powershell 소스
https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/ps1/KVSPutSysInfo.ps1


## 등록 순서

- [Automation] > [Script List] > [Add Script] 로 스크립트 등록 페이지 접속
- 스크립트 등록
    - Script Name : 적절한 스크립트명 입력
    - Script Type : ps1 선택
    - Script Desc : 적절한 설명 입력
    - Script Source : 아래 URL에 있는 소스를 그대로 입력
        - https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/ps1/KVSPutSysInfo.ps1
    - 나머지는 무시하고 저장
- [Logical Server] > 서버이름 클릭
- 서버 상세 정보에서 맨아래에 [Add Queue] 클릭
- Script를 위에서 등록한 스크립트로 선택하고 그냥 저장
    - 기본은 5분마다 반복으로 스크립트 실행하는 것임
    - 자세한 설정은 Queue관리 참조
- 저장이 완료되면 서버 상세 정보의 맨 아래쪽에 파란색 바탕으로 Queue가 생성 된 것을 확인할 수 있음
- 스크립트 이름을 클릭하여 Queue상세보기 화면으로 이동
- 설정 후부터 5분이 지나면 Queue가 올라감
    - Ready라고 한 줄이 아래쪽에 표시
    - 즉시 실행하고 싶은 경우는 [Enforce Job]을 클릭하면 즉시 Queue에 올라감
- 일정 시간(약 2분 이내)이 지나면 SendOK라고 표시가 바뀌는데 서버가 이 스크립트를 가져간 것임
- 서버 이름 옆의 [Server Detail]버튼을 클릭하여 서버 상세보기로 이동
- 중간 쯤에 있는 [Trigger Management] 버튼을 클릭하여 Trigger 관리 페이지로 이동
- Trigger 관리 페이지에서 Factor 부분에 있는 풀다운 메뉴에서 Sysinfo 라는 팩터가 있는지 확인후 있으면 선택
    - 이미 선택되어 있으면 옆의 [filter] 버튼 클릭
    - 풀다운 메뉴에 Sysinfo 가 없으면 스크립트가 정상적으로 giip MQE에 값을 던지지 못한 경우임
    - JSON 데이터가 틀려도 저장은 되지만, JSON값을 읽어 처리하는 기능에서 에러 발생할 수 있음
    - 예제 스크립트에서 factor가 Sysinfo로 되어 있는데 다른 Factor를 사용하게 되면 변경한 Factor로 표시됨





