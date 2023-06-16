public class AccountController {
    public List<Account> getAccounts() {
        return [SELECT Name, BillingCity, BillingState FROM Account LIMIT 10];
    }
}