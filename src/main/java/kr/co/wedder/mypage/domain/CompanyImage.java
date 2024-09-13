package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class CompanyImage {
	private Integer img_id;
	private Integer img_seq;
	private String img_url;
	private Integer  company_id;
	
	public CompanyImage() {
	}

	public CompanyImage(Integer img_id, Integer img_seq, String img_url, Integer company_id) {
		this.img_id = img_id;
		this.img_seq = img_seq;
		this.img_url = img_url;
		this.company_id = company_id;
	}

	public Integer getImg_id() {
		return img_id;
	}

	public void setImg_id(Integer img_id) {
		this.img_id = img_id;
	}

	public Integer getImg_seq() {
		return img_seq;
	}

	public void setImg_seq(Integer img_seq) {
		this.img_seq = img_seq;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, img_id, img_seq, img_url);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompanyImage other = (CompanyImage) obj;
		return Objects.equals(company_id, other.company_id) && Objects.equals(img_id, other.img_id)
				&& Objects.equals(img_seq, other.img_seq) && Objects.equals(img_url, other.img_url);
	}

	@Override
	public String toString() {
		return "CompanyImage [img_id=" + img_id + ", img_seq=" + img_seq + ", img_url=" + img_url + ", company_id="
				+ company_id + "]";
	}
	
	
}
