package dto;

import java.io.Serializable;

public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productID; // ��ǰ ���̵�
	private String pname; // ��ǰ��
	private Integer unitPrice; // ��ǰ ����
	private String description; // ��ǰ ����
	private String manufacturer;// ������
	private String category; // �з�
	private Long unitsInStock; // ����
	private String condition; // �Ż�ǰ or �߰�ǰ or ���ǰ

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
