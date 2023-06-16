public class CreateAccoutn {
	@AuraEnabled
    public static String createNewAccount(String name) {
        Account newAccount = new Account();
        newAccount.Name = name;
        insert newAccount;
        return newAccount.Id;
    }
}