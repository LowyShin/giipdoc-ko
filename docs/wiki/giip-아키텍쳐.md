![alt text][giipArchitecture]

giip는 철저하게 MSA(Micro Service Architecture)를 기반으로 설계되어 있습니다. 
그리고 모든 feature는 독립적으로 서비스화 할 수 있도록 독립적으로 설계되어 있습니다. 
또한 각 파트너에서 giip와 협력하여 콤포넌트의 일부가 되거나 
giip가 파트너의 콤포넌트의 일부가 되기도 합니다. 

giip는 순수하게 엔드유저가 필요한 모든 것을 
콤포넌트의 조합만으로 제공 가능하도록 설계하는 것을 목적으로 하고 있습니다. 

![alt text][giipMessageQueue]

CQE(Command Queue Engine)과 MQE(Message Queue Engine)의 설계를 예로 듭니다. 
CQE는 왼쪽 트리로 MQE는 오른쪽 트리로 MSA에 맞게 완전히 독립되어 있으며,
CQE는 순수하게 명령을 머신에 하달하는 역할을 합니다. 

CQE는 스케쥴러를 기반으로 조건에 맞는 처리를 중앙에서 컨트롤 할 수 있어, 
특정 머신에서 스케쥴이 돌기 어려운 상황이라면 바로 다른 머신에 명령을 하달하여 
서버의 여유, 장애에 상관없이 명령을 하달하고 처리할 수 있는 유연성을 가진 엔진입니다.
 
MQE는 KVS(Key Value Store)의 기준에 맞는 데이터만 있다면 Queue stack에 올리고 이를 다양한 형태로 보여줄 수 있습니다. 
예시는 표시를 메일로 처리하였지만, 이를 대시보드, 메신저 등으로 처리가 쉽도록 JSON으로 컨트롤 하고 있습니다. 
대량의 메시징 엔진을 사용하지 않더라도 필요하면 MQE만을 가지고 자사 전용 메시징 서비스 또는,
서버와의 정보 교환 용도로 사용하실 수 있습니다. 

[giipArchitecture]: /LowyShin/giip/blob/gh-pages/images/ss/giip_architecture_1607.png "giip Architecture"
[giipMessageQueue]: /LowyShin/giip/blob/gh-pages/images/giip-MessageQueArchitecture.jpg "giip Message Queue"
