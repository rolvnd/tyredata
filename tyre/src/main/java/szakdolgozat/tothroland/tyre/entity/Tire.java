package szakdolgozat.tothroland.tyre.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Tire {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private Integer categoryId;
	private String meret;
	private String marka;
	private String tipus;
	private Integer keszlet;
	
	@OneToOne(fetch=FetchType.LAZY, optional=false)
	@JoinColumn(name="categoryId", nullable = false,insertable = false, updatable = false)
	private TireCategory tireCategory;
	
	public Tire(Long id, Integer categoryId, String meret, String marka, String tipus, Integer keszlet) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.meret = meret;
		this.marka = marka;
		this.tipus = tipus;
		this.keszlet = keszlet;
	}
	
	public Tire() {
		
	}


	public TireCategory getTireCategory() {
		return tireCategory;
	}

	public void setTireCategory(TireCategory tireCategory) {
		this.tireCategory = tireCategory;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getMeret() {
		return meret;
	}

	public void setMeret(String meret) {
		this.meret = meret;
	}

	public String getMarka() {
		return marka;
	}

	public void setMarka(String marka) {
		this.marka = marka;
	}

	public String getTipus() {
		return tipus;
	}

	public void setTipus(String tipus) {
		this.tipus = tipus;
	}

	public Integer getKeszlet() {
		return keszlet;
	}

	public void setKeszlet(Integer keszlet) {
		this.keszlet = keszlet;
	}
	
	@Override
	public String toString() {
		return "Tire id:"+id + "marka: "+marka + "tipus: "+tipus;
	}
	

}
