package kr.co.wedder.calendar.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyScheduleDto {
	
	private Integer scheduleId;
	private Integer companyId;
	private String companyName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date date;
	private String time;

	public CompanyScheduleDto(Integer companyId, String companyName, Date date, String time) {
		this.companyId = companyId;
		this.companyName = companyName;
		this.date = date;
		this.time = time;
	}

}
