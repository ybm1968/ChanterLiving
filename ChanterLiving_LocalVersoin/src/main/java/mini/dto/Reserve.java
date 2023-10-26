package mini.dto;

import java.io.Serializable;

public class Reserve implements Serializable {
	
private static final long serialVersionUID = 1L;
	
	private String reserve_num;
	private String id;
	private String product_id;
	private String date;
	private String product_address;
	private Integer size;
	private String name;
	private Integer phone;
	
	
	public Reserve() {
	}

	public String getReserve_num() {
		return reserve_num;
	}

	public void setReserve_num(String reserve_num) {
		this.reserve_num = reserve_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getProduct_address() {
		return product_address;
	}

	public void setProduct_address(String product_address) {
		this.product_address = product_address;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Reserve [reserve_num=" + reserve_num + ", id=" + id + ", product_id=" + product_id + ", date=" + date
				+ ", product_address=" + product_address + ", size=" + size + ", name=" + name + ", phone=" + phone
				+ "]";
	}


}


