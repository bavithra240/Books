public class customer {
    private String name;
    private String accountNumber;
    private String address;
    private String email;
    private String phone;
    private String registrationDate;

    public customer(String name, String accountNumber, String address,
                    String email, String phone, String registrationDate) {
        this.name = name;
        this.accountNumber = accountNumber;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.registrationDate = registrationDate;
    }

    public String getName() { return name; }
    public String getAccountNumber() { return accountNumber; }
    public String getAddress() { return address; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getRegistrationDate() { return registrationDate; }
}
