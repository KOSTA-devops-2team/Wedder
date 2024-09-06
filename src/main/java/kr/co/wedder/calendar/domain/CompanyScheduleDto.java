package kr.co.wedder.calendar.domain;

import java.sql.Time;
import java.util.Date;
import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CompanyScheduleDto {
	
	private Integer schedule_id;
	private Integer company_id;
	private String company_name;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy.MM.dd")
	private Date date;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "HH:mm:ss")
	private Time time;
	
	public CompanyScheduleDto() {
	}

	public CompanyScheduleDto(Integer company_id, String company_name, Date date, Time time) {
		this.company_id = company_id;
		this.company_name = company_name;
		this.date = date;
		this.time = time;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		CompanyScheduleDto that = (CompanyScheduleDto) o;
		return Objects.equals(schedule_id, that.schedule_id) && Objects.equals(company_id, that.company_id) && Objects.equals(company_name, that.company_name) && Objects.equals(date, that.date) && Objects.equals(time, that.time);
	}

	@Override
	public int hashCode() {
		return Objects.hash(schedule_id, company_id, company_name, date, time);
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



	@Override
	public String toString() {
		return "CompanyScheduleDto [schedule_id=" + schedule_id + ", company_id=" + company_id + ", company_name="
				+ company_name + ", date=" + date + ", time=" + time + "]";
	}

	

	
	
	
}
