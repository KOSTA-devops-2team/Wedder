const calendarDates = document.getElementById("calendarDates");
const currentMonthElement = document.getElementById("currentMonth");
const currentYearElement =document.getElementById("currentYear");
const prevBtn = document.getElementById("prevBtn");
const nextBtn = document.getElementById("nextBtn");
const currentHourElement=document.getElementById("currentHour");
const currentMinuteElement=document.getElementById("currentMinute");
const currentSecondElement=document.getElementById("currentSecond");

const today=new Date();
// 현재 날짜를 나타내는 Date 객체를 저장한다.
let currentMonth = today.getMonth();
/* 현재 월을 나타내는 값을 저장한다. getMonth() 메서드는 0부터 시작하는 월을 반환하므로
1월이면 0, 2월이면 1을 반환한다. */
let currentYear = today.getFullYear();
// 변수에 현재 연도를 나타내는 값을 저장한다.
let currentHour=today.getHours();
let currentMinute=today.getMinutes();
let currentSecond=today.getSeconds();


function renderCalendar(currentYear,currentMonth) {
	const firstDayOfMonth = new Date(currentYear, currentMonth, 1);
	const daysInMonth = new Date(currentYear, currentMonth + 1, 0).getDate();
	const startDayOfWeek = firstDayOfMonth.getDay();

	currentYearElement.textContent =currentYear;
	currentMonthElement.textContent = currentMonth + 1;
	calendarDates.textContent  = "";
	currentHourElement.textContent =`${currentHour}`;
	currentMinuteElement.textContent=`${currentMinute}`;
	currentSecondElement.textContent=`${currentSecond}`;

	// 빈 날짜(이전 달)
	for (let i = 0; i < startDayOfWeek; i++) {
		const emptyDate = document.createElement("div");
		emptyDate.classList.add("date", "empty");
		calendarDates.appendChild(emptyDate);
	}

	// 현재 달의 날짜
	for (let i = 1; i <= daysInMonth; i++) {
		const dateElement = document.createElement("div");
		dateElement.classList.add("date");
		dateElement.textContent = i;
		calendarDates.appendChild(dateElement);

	}
}

document.addEventListener("DOMContentLoaded", () => {
	renderCalendar(currentYear, currentMonth); // 초기 캘린더 렌더링
});

prevBtn.addEventListener("click", () => {
	currentMonth--;
	if (currentMonth < 0) {
		currentMonth = 11;
		currentYear--;
	}
	//
	// var calendarData1 = new Object();
	// calendarData1.year=currentYear;
	// calendarData1.month=currentMonth;
	//
	let calendarData1={
		year: currentYear,
		month: currentMonth
	}
	const jsonData=JSON.stringify(calendarData1);
	let test={}
	$.ajax({
		type: 'POST', // POST 요청
		url: '/calendar/list', // URL 경로
		headers:{"Content-Type":"application/json"}, //요청 헤더
		data: jsonData, // 객체를 JSON 문자열로 변환
		dataType: 'json', // 응답 형식
		contentType: 'application/json', // JSON 형식으로 데이터를 전송
		success: function(result) {
			test = JSON.parse(result);
			console.log(test); // 서버에서 받은 응답 출력
			renderCalendar(currentYear,currentMonth);
		},
		error: function() {
			console.log("Error occurred"); // 에러 처리
		}
	});
});
/*
1. 이전 버튼(prevBtn)을 클릭하면 현재 월을 이전 월로 변경하고, 연도가 바뀌어야 한다면 연도를 변경한다.
2. 변경된 월과 연도를 바탕으로 renderCalendar 함수를 호출하여 이전 월의 캘린더를 표시한다.
*/

nextBtn.addEventListener("click", () => {
	currentMonth++;
	if (currentMonth > 11) {
		currentMonth = 0;
		currentYear++;
	}

	var calendarData2 = new Object();
	calendarData2.year=currentYear;
	calendarData2.month=currentMonth;

	const jsonData=JSON.stringify(calendarData2);
	$.ajax({
		url: '/calendar/list', // URL 경로
		type: 'POST', // POST 요청
		contentType: 'application/json', // JSON 형식으로 데이터를 전송
		data: jsonData, // 객체를 JSON 문자열로 변환
		dataType: 'json', // 응답 형식
		success: function(result) {
			console.log(result); // 서버에서 받은 응답 출력
			renderCalendar(currentYear,currentMonth);
		},
		error: function() {
			console.log("Error occurred"); // 에러 처리
		}
	});

});

var testData2=new Object();
	testData2.name="jiwon";
	testData2.age=20;
	testData2.test="success";
	testData2.year= "currentYear";
	testData2.month= "currentMonth+1";
const jsonData=JSON.stringify(testData2);
$(document).ready(function() {
	$.ajax({
		type: 'POST', // POST 요청
		url: 'calendar/test', // URL 경로
		contentType: 'application/json', // JSON 형식으로 데이터를 전송
		data: jsonData, // 객체를 JSON 문자열로 변환
		dataType: 'json', // 응답 형식
		success: function(result) {
			console.log(result); // 서버에서 받은 응답 출력
		},
		error: function() {
			console.log("Error occurred"); // 에러 처리
		}
	});
});

// 공휴일을 추가하는 방법
//객체를 배열로 추가한다.

//음력 사용 변수
const calendar= new KoreanLunarCalendar();	// 음력 일수를 사용하고자 하는 달력
var year=null;//음력->양력 (json파일) 년을 뽑은 거
var month=null;//음력->양력 (json파일) 달을 뽑은 거
var day=null;//음력->양력 (json파일) 일을 뽑은 거

// 음력 사용 메소드
function getYear(){
	year=calendar.getSolarCalendar().year;
	return year;
}
function getMonth(){
	month=calendar.getSolarCalendar().month;
	return month;
}
function getDay(){
	day=calendar.getSolarCalendar().day;
	return day;
}
function ymd(){
	year=getYear();
	month=getMonth();
	day=getDay();
}

//양력 사용 휴일
function getHolidays(year){
	const holidays=[];
	var lunarYear=year;

	//양력 기준 명절,공휴일들
	//1월 1일 3월 1일, 5월 5일, 6월 6일, 8월 15일, 10월 3일, 10월 9일 , 12월 25일
	holidays.push(new Date(year,0,1)); //신정(1월 1일)
	holidays.push(new Date(year,2,1));  //삼일정(3월 1일)
	holidays.push(new Date(year,4,5));
	holidays.push(new Date(year,5,6));
	holidays.push(new Date(year,7,15));
	holidays.push(new Date(year,9,3));
	holidays.push(new Date(year,9,9));
	holidays.push(new Date(year,11,25));

	//음력 기준 공휴일 추가
	if(lunarYear%4==0){
		//설날
		calendar.setLunarDate(lunarYear, 1, 1,true);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);

		//부처님 오신날
		calendar.setLunarDate(lunarYear, 4, 8,true);
		ymd();
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);

		//추석
		calendar.setLunarDate(lunarYear, 8, 15,true);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);
	}
	else{
		//설날
		calendar.setLunarDate(lunarYear, 1, 1,false);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);

		//부처님 오신날
		calendar.setLunarDate(lunarYear, 4, 8,false);
		ymd();
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);

		//추석
		calendar.setLunarDate(lunarYear, 8, 15,false);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);
	}


	return holidays;
}
//음력 함수 테스트중
//2024년 윤년 기준
/*
			1월 1일 신정(양)

			2월 9일~2월 12일 설날

			3월 1일 삼일절(양)
			5월 5일 어린이날(양)

			5월 15일 부처님 오신날

			6월 6일 현충일 (양)
			8월 15일 광복절(양)

			9월 14일 ~18일 추석

			10월 3일 개천절(양)
			10월 9일 한글날(양)
			12월 25일 성탄절(양)
*/
function getlunarholidays(lunarYear){
	const holidays=[];

	if(lunarYear%4==0){
		//설날
		calendar.setLunarDate(lunarYear, 1, 1,true);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);

		//부처님 오신날
		calendar.setLunarDate(lunarYear, 4, 8,true);
		ymd();
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);

		//추석
		calendar.setLunarDate(lunarYear, 8, 15,true);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);
	}
	else{
		//설날
		calendar.setLunarDate(lunarYear, 1, 1,false);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);

		//부처님 오신날
		calendar.setLunarDate(lunarYear, 4, 8,false);
		ymd();
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);

		//추석
		calendar.setLunarDate(lunarYear, 8, 15,false);
		ymd();
		holidays.push(new Date(year,month-1,day-1));
		console.log(year,month,day-1);
		holidays.push(new Date(year,month-1,day));
		console.log(year,month,day);
		holidays.push(new Date(year,month-1,day+1));
		console.log(year,month,day+1);
	}

	return holidays;
}

const testData = {
	name: "jongwon",
	age: 20,
	test: "success"
}
