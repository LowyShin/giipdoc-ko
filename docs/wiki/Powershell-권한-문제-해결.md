giip에서 Powershell 을 사용하면 다음과 같은 메시지가 뜨는 경우가 있습니다. 

![powershell err msg](https://github.com/LowyShin/giip/blob/gh-pages/images/ss/clientmsg/snmdc002errmsg.png)

이 시스템에서 스크립트를 실행할 수 없으므로 ...ps1 파일을 로드할 수 없습니다. 자세한 내용은 "get-help about_signing"을 참조하십시오.

이것은 외부에서 가져온 파일을 로컬PC에서 실행하는 경우 보안문제가 발생할 수 있기 때문에 실행하지 못하게 설정되어 있기 때문입니다. 
이 보안 이슈를 풀면 보안은 약화되나 giip에서 powershell 을 원격으로 기동시킬 수 있습니다. 

이런 메시지가 뜨는 클라이언트에서 다음 명령을 실행해 보세요. 

Dos Prompt라면 아래 명령을 실행하세요.

``` powershell -Command "Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force" ```

powershell prompt라면 아래 명령을 실행하세요. 

``` Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force ```

정상적으로 권한이 풀렸는지 확인은 아래 명령을 실행하세요. 

``` Get-ExecutionPolicy ```

RemoteSigned 라고 표시되면 정상입니다.
