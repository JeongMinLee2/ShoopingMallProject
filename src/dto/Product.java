package dto;

import java.io.Serializable;

public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productID; // 상품 아이디
	private String pname; // 상품명
	private Integer unitPrice; // 상품 가격
	private String description; // 상품 설명
	private String manufacturer;// 제조사
	private String category; // 분류
	private Long unitsInStock; // 재고수
	private String condition; // 신상품 or 중고품 or 재생품

	public Product() {
		super();
	}

	public Product(String productID, String pname, Integer unitPrice) {
		this.productID = productID;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long i) {
		this.unitsInStock = i;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

}
