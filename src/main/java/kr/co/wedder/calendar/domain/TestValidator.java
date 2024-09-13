package kr.co.wedder.calendar.domain;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

//검증해주는 객체 
public class TestValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// Validator가 검증할 수 있는 클래스 타입을 확인
		return CompanyScheduleDto.class.isAssignableFrom(clazz);
		//clazz가 COmpanyScheduleDto 또는 그 자손인지 확인 
	}

	@Override
	public void validate(Object target, Errors errors) {
		//target: 검증할 객체, errors: 검증시 발생한 에러저장소
		//실제 객체의 상태를 검증함. 검증 로직 작성
		//문제가 있을 경우 . 'errors'객체에 에러를 등록할 수 있음
		System.out.println("TestValidator.validate()호출됨");
		
		CompanyScheduleDto dto = (CompanyScheduleDto) target;
		Integer scheduleId=dto.getScheduleId();
		
		//비었거나 공백이면 id라는 iv에 required라는 에러코드를 저장
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "scheduleId", "required");
	}
}
