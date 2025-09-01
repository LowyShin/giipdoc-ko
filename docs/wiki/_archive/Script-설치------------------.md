## Script 설치

### Script설치 동영상(System Information Script, wsf파일)
이미지를 클릭하면 설치동영상으로 링크됩니다.
[![스크립트 등록](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-SysInfoScript-wsf-Videocover.png)](https://youtu.be/msHuldQ4IcM "스크립트 등록")

이 가이드는 giip에 script의 설치 및 설정을 안내합니다.


메인 메뉴에서 서버를 선택하면 보이는 화면에서 상단 아이콘 중 우측 끝에 있는 Automation 아이콘을 클릭하여 관리화면으로 이동합니다.

![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script01.png)


하단의 Script List 버튼을 클릭하여 Script Management 화면으로 이동합니다.

![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script02.png)


하단의 Add a Script 버튼을 클릭합니다.

![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script03.png)


다음은 Add a Script 버튼을 눌렀을떄 화면입니다.

![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script03_01.png)


스크립트를 작성하여 저장합니다.
- **Script Name:** 스크립트 명을 정합니다.
- **Script Type:** 스크립트 파일 타입을 지정합니다.

![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script04.png)

- **Script Detail:** 스크립트에 대한 정보들 기록합니다.
- **Script Source:** 스크립트 소스를 작성하는 곳입니다.

![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script05.png)

- **Permission:** 스크립트의 공개, 판매 여부 결정(향후 서비스 예정)
- **Price:** 개인이 스크립트를 만들어서 판매 할 경우 가격을 정할 수 있습니다. (향후 서비스 예정)


***


### (예제)

시스템 정보를 가져오는 스크립트로 예제를 사용해 보겠습니다. 
(Windows 시스템을 대상으로 한 예제입니다.) 


Script Name은 [시스템 정보 취득] 등의 알아보기 쉬운 이름을 적고, Script Type 은 wsf로 설정합니다.
Script Detail에 스크립트의 용도를 기술합니다. Script Source 부분에 아래의 스크립트를 복사하여 넣습니다.   

※ Script 참조 : [https://github.com/LowyShin/giip/tree/gh-pages/giipscripts](https://github.com/LowyShin/giip/tree/gh-pages/giipscripts)

	<job id="giipSysInfoUpdate.v1.00">
	<script language="VBScript">
	' System Variables =============================================
	at = "{{sk}}"
	lsSn = {{lssn}}
	' ==============================================================
	strComputer = "." 
	Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\CIMV2") 
	
	' Basic Info ====================================================
	Set colItems = objWMIService.ExecQuery( _
	    "SELECT * FROM Win32_ComputerSystem",,48) 
	For Each objItem in colItems 
	    DNSHostName = objItem.DNSHostName
	    Manufacturer = objItem.Manufacturer
	    NumberOfProcessors = objItem.NumberOfProcessors
	    TotalPhysicalMemory = objItem.TotalPhysicalMemory
	Next
	
	' CPU ============================================================
	Set colItems = objWMIService.ExecQuery( _
	    "SELECT * FROM Win32_Processor",,48) 
	For Each objItem in colItems 
	    CPUName = objItem.Name
	Next

	' OS ====================================================
	Set colItems = objWMIService.ExecQuery( _
	    "SELECT * FROM Win32_OperatingSystem",,48) 
	For Each objItem in colItems 
	    OSName = objItem.Caption
	Next
	
	' NIC Info ====================================================
	
	Set colItems = objWMIService.ExecQuery( _
	    "SELECT * FROM Win32_NetworkAdapter",,48) 
	For Each objItem in colItems 
		NetConnectionID = objItem.NetConnectionID
		NICName = objItem.Name
		InterfaceIndex = objItem.InterfaceIndex
	
		if NetConnectionID <> empty then
			fv = "at=" & at & "&lsSn=" & lsSn & _
				"&nc=" & NetConnectionID & _
				"&nn=" & NICName & _
				"&ii=" & InterfaceIndex
			lwURL = "http://giip.littleworld.net/API/LSvrNICInfoInput.asp?" & fv
			lwHTTPRst = lwGetHTTP (lwURL, "GET", "", "utf-8", "text")
		end if
	Next
	
	' Network ====================================================
	Set colItems = objWMIService.ExecQuery( _
	    "SELECT * FROM Win32_NetworkAdapterConfiguration",,48) 
	For Each objItem in colItems 
	    If isNull(objItem.IPAddress) Then
	    Else
			if isNull(objItem.IPAddress) Then
				NICIP = "-"
			else
				NICIP = Join(objItem.IPAddress, ",") 
			end if
			if isNull(objItem.IPSubnet) Then
				NICSM = "-"
			else
				NICSM = Join(objItem.IPSubnet, ",")
			end if
			if isNull(objItem.DefaultIPGateway) Then
				NICGW = "-"
			else
				NICGW = Join(objItem.DefaultIPGateway, ",")
			end if
			if isNull(objItem.DNSServerSearchOrder) Then
				NICDNS = "-"
			else
				NICDNS = Join(objItem.DNSServerSearchOrder, ",")
			end if
			InterfaceIndex = objItem.InterfaceIndex
	
			fv = "at=" & at & "&lsSn=" & lsSn & _
				"&ip=" & NICIP & _
				"&sm=" & NICSM & _
				"&gw=" & NICGW & _
				"&ii=" & InterfaceIndex & _
				"&dns=" & NICDNS
			lwURL = "http://giip.littleworld.net/API/LSvrNICIPInfoInputV141120.asp?" & fv
			lwHTTPRst = lwGetHTTP (lwURL, "GET", "", "utf-8", "text")
				
	    End If
	Next
	
	if TotalPhysicalMemory <> empty then
		TotalPhysicalMemory = round(TotalPhysicalMemory / 1024 / 1024, 0)
	end if
	
	if at <> empty and lsSn <> empty then
		fv = "at=" & at & "&lsSn=" & lsSn & "&hn=" & DNSHostName & "&mf=" & Manufacturer & "&cpunum=" & NumberOfProcessors & _
			"&cpuname=" & CPUName & "&mem=" & TotalPhysicalMemory & "&disk=" & LogicalDiskDesc & "&os=" & OSName
		lwURL = "http://giip.littleworld.net/API/LSvrInput.asp?" & fv
		lwHTTPRst = lwGetHTTP (lwURL, "GET", "", "utf-8", "text")
	end if
	
	Function lwGetHTTP(url, meth, fv, charset, output)
	 Dim xmlHttp
	 Set xmlHttp = CreateObject("MSXML2.serverXMLHTTP")
	 xmlHttp.Open meth, url, False
		if charset = "utf-8" then
			xmlHttp.setRequestHeader "Content-Type", " text/html; charset=utf-8"
		else
			xmlHttp.setRequestHeader "Content-Type", " text/html"
		end if
	 if fv = empty then
	   xmlHttp.Send
 	else
	   xmlHttp.Send fv
	 end if
	 txtData = xmlHttp.responseText
	 htmlData = xmlHttp.responsebody
		if output = "html" then
			lwGetHTTP = htmlData
		else
			lwGetHTTP = txtData
		end if
	End Function
	
	</script>
	</job>



![Script-Script](https://github.com/LowyShin/giip-ko/blob/gh-pages/images/giip-ko-manual-05Script-Script06.png)


Insert record를 클릭합니다.

이제 Script List에 등록 되었습니다.


***


작성된 스크립트는 아직 작동하지 않습니다. 작성된 스크립트가 실행되려면 Queue에 스크립트가 등록되어야 실행이 가능합니다.




