## CustomVariables

Logical Server마다 설정한 기본 스크립트 중에 서버마다 다른 변수 처리를 하거나 할 필요가 있는 경우 {{CustomVariables}} 를 활용하면 됩니다. 

Script Source 내부에 {{CustomVariables}} 라고 표기하면 이 부분이 Queue를 추가할 때 [Custom Variables] 에 기입했던 내용으로 대체 됩니다. 

예를 들어 다음과 같은 Script를 만들었습니다. 

```shell
a=3
echo "$a"
{{CustomVariables}}
echo "$a"
```

그리고 이 스크립트를 Queue로 등록할 때 [Custom Variables] 항목에 다음과 같이 넣습니다. 

```shell
a=9
```

이렇게 하면 처음 echo는 3이 찍히지만, 다음 echo는 9가 찍히게 됩니다. 

