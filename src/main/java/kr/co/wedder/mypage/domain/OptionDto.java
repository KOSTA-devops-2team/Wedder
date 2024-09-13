package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class OptionDto {

	private Integer option_id;
	private Integer hall_id;
	private Integer studio_id;
	private Integer dress_id;
	private Integer makeup_id;
	private Boolean option_name;
	private Integer option_price;
	
	public OptionDto() {
	}

	public OptionDto(Integer option_id, Integer hall_id, Integer studio_id, Integer dress_id, Integer makeup_id,
			Boolean option_name, Integer option_price) {
		this.option_id = option_id;
		this.hall_id = hall_id;
		this.studio_id = studio_id;
		this.dress_id = dress_id;
		this.makeup_id = makeup_id;
		this.option_name = option_name;
		this.option_price = option_price;
	}

	public Integer getOption_id() {
		return option_id;
	}

	public void setOption_id(Integer option_id) {
		this.option_id = option_id;
	}

	public Integer getHall_id() {
		return hall_id;
	}

	public void setHall_id(Integer hall_id) {
		this.hall_id = hall_id;
	}

	public Integer getStudio_id() {
		return studio_id;
	}

	public void setStudio_id(Integer studio_id) {
		this.studio_id = studio_id;
	}

	public Integer getDress_id() {
		return dress_id;
	}

	public void setDress_id(Integer dress_id) {
		this.dress_id = dress_id;
	}

	public Integer getMakeup_id() {
		return makeup_id;
	}

	public void setMakeup_id(Integer makeup_id) {
		this.makeup_id = makeup_id;
	}

	public Boolean getOption_name() {
		return option_name;
	}

	public void setOption_name(Boolean option_name) {
		this.option_name = option_name;
	}

	public Integer getOption_price() {
		return option_price;
	}

	public void setOption_price(Integer option_price) {
		this.option_price = option_price;
	}

	@Override
	public int hashCode() {
		return Objects.hash(dress_id, hall_id, makeup_id, option_id, option_name, option_price, studio_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OptionDto other = (OptionDto) obj;
		return Objects.equals(dress_id, other.dress_id) && Objects.equals(hall_id, other.hall_id)
				&& Objects.equals(makeup_id, other.makeup_id) && Objects.equals(option_id, other.option_id)
				&& Objects.equals(option_name, other.option_name) && Objects.equals(option_price, other.option_price)
				&& Objects.equals(studio_id, other.studio_id);
	}

	@Override
	public String toString() {
		return "optionDto [option_id=" + option_id + ", hall_id=" + hall_id + ", studio_id=" + studio_id + ", dress_id="
				+ dress_id + ", makeup_id=" + makeup_id + ", option_name=" + option_name + ", option_price="
				+ option_price + "]";
	}
	
	
}
