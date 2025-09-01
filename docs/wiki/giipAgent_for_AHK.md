AHK를 활용하여 화면을 제어하기 위해서는 화면이 활성화 되어 있어야 합니다. 
WSF파일은 화면과는 상관없이 wsf파일을 실행하기 때문에 화면 제어가 없는 ahk스크립트는 실행되지만, 
화면 제어가 필요한 경우 giipAgent.ahk 파일을 구동해야 합니다. 

따라서 화면 제어용 giipAgent를 사용하는 경우는 다음과 같은 방법을 취합니다. 

1. giipAgent.wsf 스케쥴러를 멈춥니다.
2. Logical Server의 Usage로 등록한 이름을 Hostname과 동일하게 합니다.
3. giipAgent.ahk 및 giipAgentDownload.wsf 파일을 다운로드 받습니다. 
  - https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/ahk/giipAgent.ahk
    - 메인 giipAgent.ahk 파일
  - https://github.com/LowyShin/giip/blob/gh-pages/giipscripts/ahk/giipAgentDownload.wsf
    - 자동 giipAgent.wsf 파일 다운로드 하는 스크립트
    - 다운로드 후 <Your Secret Key> 부분에 Secret Key를 입력
    - Hostname과 같고 Secret Key가 같은 giipAgent를 다운로드 받게 됩니다.
4. 같은 디렉토리에 저장하고 giipAgent.ahk 를 더블클릭 하여 실행하면 끝

giipAgent.ahk 는 프로세스 형태로 떠있고 1분마다 giipAgent.wsf 파일을 실행시켜서 giip와 통신하게 되어 있습니다. 

윈도우즈 상태바에 표시가 되어 있으면 떠 있는 것입니다. 


ahk를 실행하기 위해서는 AutoHotKey를 설치해야 합니다. (http://www.autohotkey.com)

