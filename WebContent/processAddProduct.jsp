<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%

	request.setCharacterEncoding("UTF-8");

	String productId = request.getParameter("productId"); // 상품 아이디
	String name = request.getParameter("name"); 		// 상품명
	String unitPrice = request.getParameter("unitPrice"); // 상품 가격
	String description = request.getParameter("description"); // 상품 설명
	String manufacturer = request.getParameter("manufacturer");// 제조사
	String category = request.getParameter("category");		 // 분류
	String unitsInStock = request.getParameter("unitsInStock"); // 재고수
	String condition = request.getParameter("condition");		 // 신상품 or 중고품 or 재생품
	
	Integer price;	
	
	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product(); //Product객체 내에 있는 set이란 메소드에다 각각 값을 셋팅 여기서 값은 위의 String에서 받아온 값 
	newProduct.setProductID(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);     
	newProduct.setCondition(condition);
	

	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");  //셋팅된 값이 addProduct를 통해 저장되고 sendRedirect를 통해 products.jsp로 리다이렉트됨.


%>