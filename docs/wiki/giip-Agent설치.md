giip를 사용하기 위해서는 시스템에 Agent를 설치하여야 합니다.
이 가이드는 OS별 Agent 설치 및 설정을 안내합니다.

* [Windows용 AHK Agent 설치 방법](giipAgent_for_AHK)
* [대량 서버 등록을 위한 Linux용 giipAgent 다운로드 API](giipAgent_Download_Linux)
* [대량 서버 등록을 위한 Windows용 giipAgent 다운로드 API](giipAgent_Download_Windows)

## 1. Windows 시스템 등록

### Windows 시스템 Agent등록 동영상
이미지를 클릭하면 설치동영상으로 링크됩니다.
[![윈도우서버 에이전트등록](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-install-AgentInstall-Windows-Videocover.png)](https://youtu.be/lMo3gV6xlh8 "윈도우서버 에이전트등록")

giip의 기본 설정이 끝났다면 이제 System에 Agent를 등록 할 차례입니다.
giip 설치에서 설명한 바와 같이 등록한 서버에서 스크립트를 Download를 받게 되면 Windows의 Download 폴더에 저장되거나 사용자가 폴더 위치를 정할 수 있게 됩니다.
브라우저 특성상 download가 안될 경우 위 설명과 같이 스크립트를 펼쳐 복사한 문구를 “메모장”을 열어 저장 합니다.

Logical Server의 Usage또는 Hostname을 클릭하여 상세 화면으로 이동합니다.

![agent-logicalserverlist](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-logicalserverlist.png)


위의 Logical Server 상세 화면에서 하단에 있는 Windows용 giipAgent 스크립트 버튼을 클릭합니다. 

 다음은 giip에서 스크립트 문구를 펼친 화면입니다.

![agent-winscript](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-winscript.png)

스크립트 문구를 복사 후 윈도우 메모장에 붙혀 놓은 후 저장은 관리자가 편한 위치에 저장 할 수 있습니다. 단 windows이기 때문에 확장자를 wsf로 변경합니다. 파일 이름 역시 관리자가 알아 보기 쉽게 정하면 됩니다. 이때 Agent파일의 위치를 기억해 두십시요.
   
 <strong> ※ 특정 브라우저의 경우 정책에 의해 wsf파일이 다운로드가 되지 않습니다. </strong>  


아래 그림은 본 관리자가 Agent를 다운받아 저장 한 상태입니다.
본 집필자는 windows의 바탕화면에  Agent를 저장하였습니다.

파일을 등록 후 실행 시키면 .log 파일도 생성이 됩니다. 아직 실행이 되지 않으면 .log 파일은 생성되지 않습니다.
매뉴얼에서는 파일 명을 giipAgentWin.wsf로 정했습니다.

![agent-wallpaper](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-wallpaper.png)

이제 위까지 giip파일이 저장 되었다면, Windows의 스케줄러에 등록 합니다. 



***

### Windows 스케줄러 등록

스케줄러 등록은 Windows의 Version에 따라 찾아 들어가는 방식이 조금 다릅니다.
※ 본 매뉴얼은 windows 7 기준으로 설명 하고 있습니다.
 
스케줄러 들어가는 방법
 
“제어판 선택 > 관리도구 선택 > 작업 스케줄러 클릭”
(다시 한번 언급 하지만 O/S Version 별로 스케줄러 찾아가는 방식은 조금씩 다릅니다)
※ Windows 10 의 경우는 “시작 > 오른쪽마우스 클릭 > 제어판 선택 > 시스템 및 보안 클릭 > 관리도구 선택 > 작업 스케줄러 클릭” 입니다.

![agent-jobscheduler](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-jobscheduler01.png)


위와 같이 선택을 하면 작업 스케줄러에 들어 오게 됩니다.
 
스케줄러 까지 띄웠다면 생성한 giip 등록 및 실행을 합니다.
아래 그림은 스케줄러 상단 화면에서 마우스 오른쪽 버튼을 클릭 한 그림입니다.

![agent-jobscheduler](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-jobscheduler02.png)


위의 작업 스캐줄러 좌측 “작업 스케줄러 라이브러리”를 선택하고 우클릭하여 “작업만들기”를 선택합니다.
다음 그림은 작업 만들기를 했을 때 나오는 화면입니다.

![agent-newjob](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-newjob01.png)

위와 같이 새창이 열리면 우선 Agent의 이름을 정합니다.
본 필자는 이름을 giip_agent로 정했습니다. 그리고, 새 작업 만들기 창 중간의 보안 옵션에서  “사용자의 로그온 여부에 관계없이 실행(W)”를 Check 합니다.
다음은 새작업 만들기의 일반 부분을 입력한 그림입니다.

![agent-newjob](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-newjob02.png)


위 그림까지 됐다면, 그 다음은 트리거 탭으로 넘어갑니다.
다음은 트리거 탭 화면입니다.

![agent-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-trigger01.png)


위 트리거 탭에서 새로 만들기를 누르면 아래와 같은 새 트리거 만들기 창이 생성 되게 됩니다.

![agent-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-trigger02.png)


트리거를 설정합니다. 설정에서 “매일”을 선택하고 시작 시간은 “오전 12:00:00” 으로 설정합니다. 하단의 고급메뉴에서 “작업이 지연되는 최대 시간”, “작업 반복 간격”, “다음 기간 이상 실행되는 작업 중지”를 설정합니다.

설정에서 “매일(D)”는 매일매일 실행 하겠다는 의미이고, 시작 시간은 매일 00시 기준으로 하겠다는 의미입니다. 오후13시로 할 경우 매일 13시부터 시작 하겠다는 의미이므로 13시 이전 꺼는 check 안 하겠다는 내용이 됩니다.  작업 반복 간격(P)는 giip와 Check 하는 주기를 말합니다. 기본 1분으로 해놓고 스크립트에 의하여 시간 변경이 자유롭습니다.

완료 후 확인을 누르면 다음과 같이 트리거가 등록 됩니다. 

![agent-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-trigger03.png)


트리거 등록 후 “동작” 탭으로 넘어 갑니다.

![agent-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-trigger04.png)


“프로그램/스크립트(P)”에 giipAgent 스크립트 파일을 찾아 선택합니다.
“시작 위치”에 Agent파일이 있는 경로를 지적합니다. “프로그램/스크립트(P)”에 설정된 주소를 복사 후 Agent 전까지의 폴더를 지정 후 붙여넣기를 하면 됩니다.

![agent-trigger](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-trigger05.png)


"확인"버튼을 누르고 작업스케줄러 화면에서 우측 작업부분의 "실행 중인 모든 작업 표시"를 클릭하여 로그를 활성화합니다.

![03agent-Log01](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-Log01.png)


활성화되면 하단 그림에서와 같이 빨간 박스안의 탭이 "기록(사용 안 함)"에서 "기록" 으로 바뀝니다.

![03agent-Log02](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-Log02.png)


giip Agent의 설치가 완료 되었습니다.


## 에이전트 설치 확인

에이전트파일이 설치된 폴더에 아래와 같이 "giipQueAgent.log"이 생성되면 정상적으로 에이전트가 작동하는 것을 확인할 수 있습니다.

![AgentCheck](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-AgentCheck01.png)



***


## 2. Linux System 설정

### Linux 시스템 Agent등록 동영상
이미지를 클릭하면 설치동영상으로 링크됩니다.
[![리눅스서버 에이전트등록](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-install-AgentInstall-Linux-Videocover.png)](https://youtu.be/2F2yaTSV04A "리눅스서버 에이전트등록")

Linux System Agent 등록 역시 처음은 Windows와 동일하게 스크립트를 Download 받거나 스크립트 문구를 복사하여 붙여 놓으면 됩니다. 
다시 한번 설명 하겠습니다. 다음은 giip에서 스크립트 문구를 펼친 화면입니다.

![agent-linux](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-linux01.png)



위의 스크립트 문구를 복사 후 Linux의 vi 편집기를 열어 붙여 놓은 후 저장 합니다. 저장 위치는 관리자가 알 수 있도록 별도의 폴더를 만들어 저장시킨다. 저장 할 때의 확장자는 .sh로 합니다 
아래그림은 linux의 root 아래 giipAgent.sh로 만들어 놓은 그림입니다.

![agent-linux](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-linux02.png)



Linux의 경우 Windows와 같이 복잡하지 않고 위 그림처럼 Agent를 생성 하였다면, Crontab에 등록하여 사용 하면 됩니다.
 
Crontab 등록 방법은 우선 사용하는 Linux O/S에 crontab 이 설치가 되어 있어야 하며 명령어는 “crontab –e” 명령어로 넣으면 됩니다.


**(샘플)**

	“Crontab -e

	* * * * * sh /root/giipAgent.sh

	CTRL:wq!”


다음 그림은 실제 crontab에 등록된 화면입니다.

![agent-linux](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-linux03.png)



Crontab 등록 저장 후 확인 방법은 위 그림에서와 같이 crontab  -l 로 확인이 됩니다.

Agent 등록 시 주의하여야 할 사항은 windows의 경우 Password 변경 시 스케줄러에서도 같이 변경을 해줘야 됩니다. 주기적으로 Password변경이 있을 경우 Agent를 위한 별도의 Password를 지정해 주거나 지정이 어려울 경우 스케줄러에서도 같이 Password를 변경 해 주어야 합니다.

위와 같이 Agent 설정이 끝이 나면 giip의 LOGICAL SERVER로 돌아가서 등록된 서버들의 값을 제대로 갖고 오는지를 확인합니다.

![agent-linux](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-03agent-linux04.png)




***



