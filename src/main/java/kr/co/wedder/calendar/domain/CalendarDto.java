package kr.co.wedder.calendar.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalendarDto {
    private int currentYear;
    private int currentMonth;
}
