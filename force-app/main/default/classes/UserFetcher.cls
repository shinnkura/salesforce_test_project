public class UserFetcher {
    private static final String ENDPOINT = 'https://jsonplaceholder.typicode.com/users';

    public void createUserFromApiData() {
        String responseBody = makeGetRequest();
        List<Object> users = parseResponseBody(responseBody);
        Map<String, Object> user = (Map<String, Object>) users[0];
        createAccount((String)user.get('name'));
    }

    private String makeGetRequest() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(ENDPOINT);
        req.setMethod('GET');

        Http http = new Http();
        try {
            HTTPResponse res = http.send(req);
            return res.getBody();
        } catch (Exception e) {
            System.debug('HTTP request failed with message: ' + e.getMessage());
            return null;
        }
    }

    private List<Object> parseResponseBody(String responseBody) {
        if (responseBody == null) {
            return new List<Object>();
        }
        return (List<Object>) JSON.deserializeUntyped(responseBody);
    }

    private void createAccount(String name) {
        Account acc = new Account(Name = name, BillingCity = 'rosia');
        try {
            insert acc;
        } catch (Exception e) {
            System.debug('Account creation failed with message: ' + e.getMessage());
        }
    }
}