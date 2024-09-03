package kr.co.wedder.calendar.domain;

import java.sql.Time;
import java.util.Date;
import java.util.Objects;

public class CompanySchedule {
	
	private Integer schedule_id;
	private Integer company_id;
	private String company_name;
	private Date date;
	private Time time;
	private boolean is_booked;
	
	public CompanySchedule() {
	}

	public CompanySchedule(String company_name, Date date, Time time, boolean is_booked) {
//		super();
		this.company_name = company_name;
		this.date = date;
		this.time = time;
		this.is_booked = is_booked;
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, company_name, date, is_booked, schedule_id, time);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompanySchedule other = (CompanySchedule) obj;
		return Objects.equals(company_id, other.company_id) && Objects.equals(company_name, other.company_name)
				&& Objects.equals(date, other.date) && is_booked == other.is_booked
				&& Objects.equals(schedule_id, other.schedule_id) && Objects.equals(time, other.time);
	}

	public Integer getSchedule_id() {
		return schedule_id;
	}

	public void setSchedule_id(Integer schedule_id) {
		this.schedule_id = schedule_id;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public boolean isIs_booked() {
		return is_booked;
	}

	public void setIs_booked(boolean is_booked) {
		this.is_booked = is_booked;
	}

	@Override
	public String toString() {
		return "CompanySchedule [schedule_id=" + schedule_id + ", company_id=" + company_id + ", company_name="
				+ company_name + ", date=" + date + ", time=" + time + ", is_booked=" + is_booked + "]";
	}
	
	
}
