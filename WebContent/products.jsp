<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" integrity= sha384-ggoyr0ixcbmqv3xipma34md+dh/1fq784/j6cy/ijtquohcwr7x9jvorxt2mzw1t crossorigin="anonymous">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">						<!-- 웹 사이트 내에서 특색있는 부분 지정을 위해 사용 -->
		<div class="container">					<!-- 화면의 크기에 따라 폭조절을 도와줌 -->
			<h1 class="display-3">상품목록</h1>	<!-- 텍스트 크기를 키워줌 -->
		</div>
	</div>
	<%	//스트립틀릿태그
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts(); //상품정보 입력한거 불러옴	
	%>
		
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i=0; i<listOfProducts.size(); i++) { //listOfProducts의 값들을 product클래스에 하나씩 값을 저장
					Product product = listOfProducts.get(i);
			%>
				<div class="col-md-4">
					<img src="./resources/images/<%=product.getFilename()%>" style="width: 100%"></img>
					<h3><%=product.getPname() %></h3>
					<p><%=product.getDescription() %>
					<p><%=product.getUnitPrice() %>
					<p><a href="./product.jsp?id=<%=product.getProductID()%>" class="btn btn-secondary" role="button">상세정보</a>
				</div>
			<%
				}
			%>
		
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>