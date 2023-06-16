public class AccountMgr {
	public static ID addAccount (String NameToInsert, String BillingCityToInsert) {
        Account acc = new Account (Name = NameToInsert, BillingCity = BillingCityToInsert);
        insert acc;
        return acc.Id;
    }
}