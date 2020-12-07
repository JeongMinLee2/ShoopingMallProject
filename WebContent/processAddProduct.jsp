<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%

	request.setCharacterEncoding("UTF-8");

	String filename="";
	String realFolder ="C:\\upload"; 	//웹 어플리케이션 상의 절대 경로
	String encType = "utf-8";			//인코딩 타입
	int maxSize = 5 * 1024 * 1024;			//최대 업로드될 파일의 크기 5Mb
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId"); // 상품 아이디
	String name = multi.getParameter("name"); 		// 상품명
	String unitPrice = multi.getParameter("unitPrice"); // 상품 가격
	String description = multi.getParameter("description"); // 상품 설명
	String manufacturer = multi.getParameter("manufacturer");// 제조사
	String category = multi.getParameter("category");		 // 분류
	String unitsInStock = multi.getParameter("unitsInStock"); // 재고수
	String condition = multi.getParameter("condition");		 // 신상품 or 중고품 or 재생품
	
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
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	
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
	newProduct.setFilename(fileName);
	

	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");  //셋팅된 값이 addProduct를 통해 저장되고 sendRedirect를 통해 products.jsp로 리다이렉트됨.


%>