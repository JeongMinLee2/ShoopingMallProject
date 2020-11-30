<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity= sha384-ggoyr0ixcbmqv3xipma34md+dh/1fq784/j6cy/ijtquohcwr7x9jvorxt2mzw1t crossorigin="anonymous">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">						
		<div class="container">					
			<h1 class="display-3">상품 정보</h1>	
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id); // dao객체에다가 상품 id에 대한 정보를 product에 저장
	%>
	
	<!-- 18줄의 product정보 출력 -->
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductID() %></span>
				<p><b>제조사</b> : <%=product.getManufacturer() %>
				<p><b>분류</b> : <%=product.getCategory() %>
				<p><b>재고 수</b> : <%=product.getUnitsInStock() %>
				<h4><%=product.getUnitPrice() %>원</h4>
				<p><a href="#" class="btn btn-info">상품 주문</a> <a href="./products.jsp" class="btn btn-secondary">상품 목록</a>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="footer.jsp" />
</body>
</html>