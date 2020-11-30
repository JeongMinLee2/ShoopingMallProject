package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance; // instance 메소드를 통해 동일한 메소드 사용 가능
	}
	
	public ProductRepository() {
		
		Product phone = new Product("p123", "iPhone 12", 1100000);
		phone.setDescription("6.1인치, Super Retina XDR 디스플레이,듀얼 12MP 카메라 시스템");
		phone.setCategory("iPhone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product laptop = new Product("p1234", "MacBook Pro 13형", 1690000);
		laptop.setDescription("13.3인치, 2560 x 1600 기본 해상도(227ppi),Apple M1 칩");
		laptop.setCategory("Mac");
		laptop.setManufacturer("Apple");
		laptop.setUnitsInStock(600);
		laptop.setCondition("Secondhand");
		
		Product watch = new Product("p12345", "Apple Watch", 360000);
		watch.setDescription("44mm 또는 40mm 케이스 크기, Retina 디스플레이, S5 듀얼 코어 SiP");
		watch.setCategory("Watch");
		watch.setManufacturer("Apple");
		watch.setUnitsInStock(800);
		watch.setCondition("refurbished");
		
		listOfProducts.add(phone);
		listOfProducts.add(laptop);
		listOfProducts.add(watch);

	}

		public ArrayList<Product> getAllProducts() {
			return listOfProducts;
		}
		
		public Product getProductById(String productID) {
			Product productById = null;
			
			for(int i=0; i<listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i);
				if(product != null && product.getProductID() !=null && product.getProductID().equals(productID)) {
					productById = product;
					break;
				}
			}
			return productById;
		}
		
		//상품 정보를 등록하는 부분에 대한 메소드 추가했음
		public void addProduct(Product product) {	//Product의 product객체를 받아와야함
			listOfProducts.add(product);
		
		
		}
}
