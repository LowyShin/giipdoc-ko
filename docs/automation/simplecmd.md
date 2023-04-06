# Simple Command

서버 상세보기에서 간단한 명령을 입력하면 자동으로 Queue에 올라가서 서버에서 실행을 해주는 기능입니다. 

기본적으로 커맨드 스크립트 생성 -> Queue에 올리기 를 합친 기능이기 때문에 커맨드를 입력할 때마다 자동으로 Automation > Script List에 하나씩 추가 됩니다. 
즉, 너무 많이 사용하면 관리가 어렵기 때문에 사용할 때마다 지우거나 하는 식으로 관리를 해야 합니다. 
자주 사용하는 명령등은 이름을 바꾸어 재사용하거나 할 수 있으므로 일부러 처리후 삭제는 하고 있지 않습니다. 

## 구조

1. 스크립트 생성

- 생성 처리 파일 : `/ctrl/Automation/ctrlScrProc.asp`
  - 처리후 서버 상세에서 오기 때문에 lssn이 있는 경우 이므로 강제로 Queue에 올리기로 처리
  - `/ctrl/Automation/ctrlScrQueueProc.asp?op=scmd&mssn=" & dbmssn & "&lssn=" & lssn & "&interval=1&repeat=0&active=1`
    - op : scmd (심플 커맨드용 명령)
    - mssn : 스크립트 Sn
    - lssn : 서버 Sn
    - interval : 주기(분). 정수만 가능하므로 초 단위로는 되지 않음. 1분 보다 짧게 하고 싶은 경우는 giipAgent에서 여러번 실행하도록 하게 하는 수 밖에 없음.  
    - repeat : 재처리 여부. 0이면 한 번만 실행. 1을 넣으면 주기적으로 실행함. 
    - active : 활성화 여부. 1 이면 실행, 0이면 실행 안함. (등록만 하고 실행 안하는 경우가 있기 때문)

2. Queue에 올리기

- `/ctrl/Automation/ctrlScrQueueProc.asp`
  - op : scmd

3. Queue를 force로 강제 실행

- 바로 실행 하도록 지시하기 위해서 다시한 번 호출하고 force옵션 처리함.
  - `/ctrl/Automation/ctrlScrQueueProc.asp?op=force&mslsn=" & dbmslsn & "`
    - mslsn : 등록후에 받은 queue 의 Sn
