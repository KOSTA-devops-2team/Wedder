package kr.co.wedder.config;

import kr.co.wedder.payment.domain.PaymentKeysDto;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:application.properties")
public class PayKeysConfig {
    @Value("${imp.api.kakao}")
    private String kakaoPayKey;


    @Bean
    public PaymentKeysDto payKeysDto() {
        PaymentKeysDto payKeysDto = new PaymentKeysDto();
        payKeysDto.setKakaoPayKey(kakaoPayKey);
        return payKeysDto;
    }
}
