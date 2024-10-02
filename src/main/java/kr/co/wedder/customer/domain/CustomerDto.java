package kr.co.wedder.customer.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CustomerDto {
    private int customerId;
    private String id;
    private String password;
    private String name;
    private String phone;
    private String email;
    private Integer gender;
}
