package kr.co.wedder.customer.domain;

import java.util.Objects;

public class CustomerDTO {
    private int customerId;
    private String id;
    private String password;
    private String name;
    private String phone;
    private String email;
    private Integer gender;

    // 기본 생성자
    public CustomerDTO() {
    }

    // 모든 필드를 포함한 생성자
    public CustomerDTO(String id, String password, String name, String phone, String email, Integer gender) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.gender = gender;
    }

    // Getter 및 Setter 메서드
    public int getCustomerId() {
        return customerId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer isGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    // `toString` 메서드
    @Override
    public String toString() {
        return "CustomerDTO{" +
                "customerId=" + customerId +
                ", id='" + id + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", gender=" + gender +
                '}';
    }

    // `equals` 메서드
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CustomerDTO that = (CustomerDTO) o;
        return Objects.equals(gender, that.gender) &&
                Objects.equals(id, that.id) &&
                Objects.equals(password, that.password) &&
                Objects.equals(name, that.name) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(email, that.email);
    }

    // `hashCode` 메서드
    @Override
    public int hashCode() {
        return Objects.hash(id, password, name, phone, email, gender);
    }
}
