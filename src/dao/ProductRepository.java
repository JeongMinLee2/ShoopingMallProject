package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance; // instance �޼ҵ带 ���� ������ �޼ҵ� ��� ����
	}
	
	public ProductRepository() {
		
		Product phone = new Product("p123", "iPhone 12", 1100000);
		phone.setDescription("6.1��ġ, Super Retina XDR ���÷���,��� 12MP ī�޶� �ý���");
		phone.setCategory("iPhone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product laptop = new Product("p1234", "MacBook Pro 13��", 1690000);
		laptop.setDescription("13.3��ġ, 2560 x 1600 �⺻ �ػ�(227ppi),Apple M1 Ĩ");
		laptop.setCategory("Mac");
		laptop.setManufacturer("Apple");
		laptop.setUnitsInStock(600);
		laptop.setCondition("Secondhand");
		
		Product watch = new Product("p12345", "Apple Watch", 360000);
		watch.setDescription("44mm �Ǵ� 40mm ���̽� ũ��, Retina ���÷���, S5 ��� �ھ� SiP");
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
		
		//��ǰ ������ ����ϴ� �κп� ���� �޼ҵ� �߰�����
		public void addProduct(Product product) {	//Product�� product��ü�� �޾ƿ;���
			listOfProducts.add(product);
		
		
		}
}
