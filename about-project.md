
<h1 align = "center">
프로젝트를 만들면서 ...
</h1>

<div align="center">
	<img src = "https://readmeplants.com/get?name=Devxb&planet=eclipse"/>
</div>

<div align = "center">
<ul>
목차<br/><br/>
<li>
	소개
</li>
<li>
	프로젝트 (상) - 프로젝트의 초기 형태와 시작계기
</li>
<li>
	프로젝트 (중) - 테크스텍, 디자인패턴(with UML)
</li>
<li>
	프로젝트 (하) - 어려웠던 것들
</li>
<li>
	여담 - 이러한 유형의 앱을 개발하는데 알아두면 좋을점들
</li>
</ul>
</div>

<hr>

<introduce>
	<h3>소개 </h3>
	<span>
	안녕하세요 백엔드 개발자 Devxb입니다.😀 <br>
	프로젝트가 어느정도 윤곽이잡히면 작성해야겠다고 생각했는데, 생각보다 일찍 작성하게 되었습니다.  <br>
	'readmeplants'프로젝트에 대한 글이지만, 바로 직전에 했었던 '<a href="https://github.com/devxb/commitcombo">commitcombo</a>' 프로젝트도 함께 정리할려고 합니다
	</span>
</introduce>

<project1>
<h3>프로젝트 (상)</h3>
<span>
	프로젝트는, "깃허브 활동으로  <b>무언가</b>를 키운다면 어떨까?" 라는 생각으로 시작되었습니다. 
	<br> 초기에는, 동물을 키우는 프로젝트였습니다. (이름도 Github Damagochi 깃헙 - 다마고치 였음)
	<br>
	<br>
	(초기 프로젝트의 모습 - 동물 그리는게 상당히 어렵네요,,,)
	<br>
	<img src="https://user-images.githubusercontent.com/62425964/129449052-948c4117-7b38-4b34-897b-6d582f86b375.png"/>
	<br>
	<br>
	위 github damagochi를 구현하는데는 그림실력 외에도 기술적으로 큰 문제가 있었는데,
	<br><br> -깃허브는 Readme.md에 이미지를 올릴때, 서버에서 바로 가져오는것이아닌, camo proxy서버를 한번 우회해서 가져옵니다.
	<br> (서버 -> github camo proxy 서버 -> 클라이언트 이런 형태로 가져옴) 
	<br> 이런 방식때문에 readme에 작성된 텍스트와 오리를 겹치게 할수가 없었고, 저 오리를 움직일려면, 지나치게 큰 width값과 height값을 잡아야했습니다. 
	<br> (readme를 꾸미는것은 어디까지나 자신의 프로필을 보여주는 부수적인 영역이며 width와 height이 커져서 화면의 절반을 덮어버린다면 아무도 사용하지 않을것이라 생각했음)
	<br>
	<br>
이렇게 난항을 겪던중에 사용한 프레임워크 spring boot의 'spring'에서 영감을 얻어 동물에서 식물로	방향을 급하게 변경을 했고 탄생한 프로젝트임

</span>
</project1>
<hr>
<project2>
<h3>프로젝트 (중)</h3>

<span>
<b>테크스택</b><br>
<ul>
<li>
 - spring boot, jsp, mybatis, hikaricp, mysql, svg, html, css, graphql
</li>
<li>
- AWS EC2
</li>
</ul>
(테크스택에 대한 설명은 프로젝트(하) 어려웠던점에 서술했음)
</span>
<br><br>
<span>
<b>디자인 패턴과 UML</b>
<br><br>
<b>뷰 디자인</b> - (데코레이터패턴, 템플릿 메소드패턴, 스트레티지 패턴이 사용됨)
<br>아래는 UML(I는 인터페이스 C는 클래스 A는 앱스트랙 클래스임)
<img src = "https://user-images.githubusercontent.com/62425964/129449925-b321079d-ee92-41e2-86ea-5939ae6363f1.png"/>
<br><br>
<b> 전체 코드 디자인</b>
<br>
<img src="https://user-images.githubusercontent.com/62425964/129449867-8d554aaf-67a8-480f-bf41-8e70db7bfc82.png"/>
</span>
</project2>
<br>
<project3>
<h3> 프로젝트 (하)</h3>

<h4>어려웠던것들</h4>
1. <b>DB연결 속도 문제</b>
<br> 사실 이 문제는 이전 프로젝트인 'commitcombo'때 부터 고민했던 문제다. DB에서 데이터를 가져오는시간이 너무 오래걸린다 생각하여 속도를 체크해보니, DB연결부분에서만 전체 연결시간의 약 2/3이 걸렸다. 결국, 속도를 향상시킬려면 연결을 끊지 않아야한다고 생각해서,
<br>(이전 플젝에서) DB  connection 인스턴스를 싱글턴으로 만들고, connection을 끊지않은채, 매 요청마다 기존에 있던 연결에서 statement를 가져오는 식으로 속도를 상승 시켰다 (지금 생각해보면 이 방식이 thread safe한가? 에 대한 의문이 들긴 하지만, 당시의 내가 테스트해보고 구현하지않았을까 라고 믿고있다. 실제로 이렇게하고 약 4개월동안 오류가 발생하지않았다!)
<br><br> 이번 플젝에서도 이렇게 할려고 코드를 구현하던중에, connection pool이라는 것을 알게되어서, hikaricp를 이용해 속도를 향상시켰다. connection pool을 이용하면, DB연결객체를 미리 여러개 만들어놓고 요청이 들어올때마다 connection pool에서 꺼내 쓰는 방식인데, 정말 획기적인것 같다. (왜 이걸몰랐지?) 
<br>
<br>
2. <b> svg가 사파리에서 지나치게 blur처리되는 오류 </b>
<br>이 버그는 <a href = "https://dlwnsdud205.tistory.com/246"> 내 블로그 </a> 에도 해결법을 자세히 정리했는데, 원인을 찾기까지 시간이 꽤 걸렸었다. (이 버그는 원인을 파악하고나니, 완벽하게 해결할방법이 없어서 타협을 했었다.. ) 원인과 해결은 위 링크를 타고 들어가서 보자
<br>
<br>
3. <b>데코레이터 패턴이 싱글턴으로 만들어지며 발생한 버그</b>
<br>데코레이터 패턴을 이용할때, 각 데코레이터들을 컴포넌트로 만들고, 스프링부트에 관리를 전가(이 때문에 싱글톤으로 만들어짐)했는데, 이 때문에, 무한루프가 발생하는 오류가 있었다. <br>
(데코레이터들의 필드에 초기화 되지않은 데코레이터 필드가 계속참조되면서, A -> B -> C -> A -> B -> C -> ... 이런식으로 무한반복되는 문제였음)
<br> 데코레이터 팩토리에서 데코레이터들을 DI 받지않고 하나하나 등록해서 만들거나, 옵저버 패턴을 직접 구현하는 방법이 있긴했지만, 가장 간단하고 편한 방법인 컴포넌트를 프로토타입으로 만들고, 코드로 주입을 받으면서 해결했다.
<br>
<br>
4. <b>Github RESTAPI의 너무 적은 분당 쿼리량 제한</b>
<br> 이 문제 또한, "commitcombo"부터 했던 고민이다.
<br> Github에서는 자사에서 만든 API로 정보를 제공해주는데, 처음에는 쓰기편한 RESTAPI를 사용했었다. 
<br> RESTAPI를 사용할시, 쿼리량이 분당 10회로 제한되는데, 이 쿼리량으로는, (정보량이 많은)유저 한명의 정보도 가져오지못했다. 다른 방법을 알아보다 깃허브에서 GraphQL도 지원한다는것을 알게되었다.
<br>
<br>GraphQL은 시간당 5000번은 점수를 주기때문에, 유저 정보를 넉넉하게 가져올수있었다.
<br>추가적으로 DB에 날짜 스킴을 넣어서 하루에 한번만 API를 가져와 DB를 업데이트해주는 방식으로 API 점수를 아껴줬다.(더불어 속도향상까지)
</project3>
<br>
<hr>
<end>
<h3> 여담 </h3>
<h4> 이러한 형태의 앱을 개발할때 미리 알고있으면 좋은것들 </h4>
깃허브를 꾸미는 애플리케이션은 나온지 얼마 되지않았고, 때문에 정보를 찾기가 상당히 어렵다. 
<br> 첫 개발당시 나는, mazzasumnida 팀의 [solved.ac tier] 프로젝트를 보며 전체적인 기술흐름을 이해하고, 나머지는 github 문서<b>(github graphql api, gfm- 깃허브 마크다운 지원 태그 목록등)</b>를 보며 공부했다.
<br>
<br> 1. <b>깃허브에서 이미지를 보여주는 방식</b>
<br> 이건 알면 쉬운데 모르면 상당히 어렵다. 깃 허브는 [클라이언트 -> github camo서버 -> 우리의 서버] 이런 플로우로 이미지를 우회해서 보여준다. 이미지를 우클릭하고 "새 탭에서 이미지 열기"를 클릭하면 camo.github~~와 같은 URL을 볼수있을것이다. 
<br> 이 camo서버에서 이미지에대한 캐시를 가지고있어서 클라이언트에서 재 요청시 서버까지 도달하지않고, camo 서버에서 이미지를 가져와 보여준다. 이 때문에, 클라이언트 정보 업데이트가 필요할때, (서버에 요청이 오질않으니) 업데이트할수가없다. <b>이를 방지하기위해서 cache-control을 원하는 시간으로 설정해주자.</b>
<br>
<br>2. <b>Github API 사용</b>
<br> github의 robots.txt를 보면, 크롤링행위 대부분이 막혀있는것을 볼수있다. 즉, 우리는 사용자 정보를 가져오기위해서, 웹페이지를 파싱하면안되고, 깃허브 api를 사용해야한다.(이 방식이 더 빠르기도 하다)
<br> 깃허브는 RESTAPI와 Graphql 두가지를 제공한다는것을 알고있자. 
<br>일반적으로, Graphql이 더 유연하고, 더 정확한 정보를 가져올수있으며, 더 많은 정보를 요청할수있다. 
<br> <b>하지만, RESTAPI는 사용하기 편하다</b> 상황에 따라 적절한 방식을 선택하도록하자
<br>
<br>3. <b>Github에서 지원하지 않는 태그들</b>
<br> 이건  <a href="https://github.github.com/gfm/"> github markdown spec </a> 여기를 참조해라 
</end>