package kr.co.wedder.customer.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.wedder.customer.dao.CustomerDao;
import kr.co.wedder.customer.domain.CustomerDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/log")
public class LoginController {
	@Autowired
	CustomerDao customerDao;

	@GetMapping("/login")
	public String loginForm() {
		return "/customer/loginForm";
	}

	@PostMapping("/login")
	public String login(String id, String password, String toURL, boolean rememberId,
						HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

		//1. id와 pw를 확인
		//2-1. 일치않으면
		// 아이디가 입력되지 않았을 경우
		if (id == null || id.trim().isEmpty()) {
			String msg = URLEncoder.encode("아이디를 입력해 주세요.", "utf-8");
			return "redirect:/log/login?msg=" + msg;
		}

		if (password == null || password.trim().isEmpty()) {
			String msg = URLEncoder.encode("비밀번호를 입력해 주세요.", "utf-8");
			return "redirect:/log/login?msg=" + msg;
		}

		if(!loginCheck(id, password)) {
			String msg = URLEncoder.encode("id 또는 password가 일치하지 않습니다.", "utf-8");
			return "redirect:/log/login?msg=" + msg + "&id=" + URLEncoder.encode(id, "utf-8");
		}

		//2-2. 일치하면 로그인 후 화면(홈화면)으로 이동

		//2-2-1. 쿠키를 생성
		//2-2-2. 응답헤더에 저장
		if(rememberId) {
			Cookie cookie = new Cookie("id", id);
			response.addCookie(cookie);

			//2-3-1. 쿠키를 삭제
			//2-3-2. 응답헤더에 저장
		} else {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

		//3. 세션
		// 세션 객체 얻어오기
		HttpSession session = request.getSession();
		// 세션 객체에 id를 저장
		session.setAttribute("id", id);
		CustomerDto customerDTO = customerDao.findById(id);
		if (customerDTO != null) {
			session.setAttribute("customerId", customerDTO.getCustomerId());
			session.setAttribute("customerEmail", customerDTO.getEmail());
			session.setAttribute("customerName", customerDTO.getName());
			session.setAttribute("customerTel", customerDTO.getPhone());
		}
		System.out.println("Session Customer ID: " + session.getAttribute("customer_id")); // 확인 로그


		//4. 뷰이동
		toURL = toURL==null || toURL.equals("") ? "/" : toURL;
		return "redirect:" + toURL;
	}

	private boolean loginCheck(String id, String password) {

		CustomerDto customerDTO = customerDao.findById(id);
		if(customerDTO ==null) return false;
		return customerDTO.getPassword().equals(password);
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//세션을 종료
		session.invalidate();
		//홈으로 이동
		return "redirect:/";
	}
}