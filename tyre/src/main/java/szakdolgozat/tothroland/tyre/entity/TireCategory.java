package szakdolgozat.tothroland.tyre.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
	
@Entity
@Table(name="tire_category")
public class TireCategory {
		
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Long id;
		private String evszak;
		
		@OneToOne(fetch=FetchType.LAZY, cascade = CascadeType.ALL, mappedBy= "tireCategory")
		private Tire tire;

		
	public TireCategory(Long id, String evszak) {
		super();
		this.id = id;
		this.evszak = evszak;
		}
	
	public TireCategory() {
		
	}
		public Long getId() {
			return id;
		}
	
	
		public void setId(Long id) {
			this.id = id;
		}
	
	
		public String getEvszak() {
			return evszak;
		}
	
	
		public void setEvszak(String evszak) {
			this.evszak = evszak;
		}
	
	
		public Tire getTire() {
			return tire;
		}
	
	
		public void setTire(Tire tire) {
			this.tire = tire;
		}
		@Override
		public String toString() {
			return "TireCategory id:"+id + "evszak:"+evszak;
		}
	
}
	
	
