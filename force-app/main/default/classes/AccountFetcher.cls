public class AccountFetcher {
private static final String ENDPOINT = 'https://jsonplaceholder.typicode.com/users';
    
    public void createUserFromApiData() {
        String responseBody = makeGetRequest();
        List<Object> users = parseResponseBody(responseBody);
        for (Object user : users) {
            Map<String, Object> userData = (Map<String, Object>) user;
            createAccount(userData);
        }
    }

    private String makeGetRequest() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(ENDPOINT);
        req.setMethod('GET');

        Http http = new Http();
        HTTPResponse res = http.send(req);
        return res.getBody();
    }

    private List<Object> parseResponseBody(String responseBody) {
        return (List<Object>) JSON.deserializeUntyped(responseBody);
    }

    private void createAccount(Map<String, Object> userData) {
        Account acc = new Account(Name = (String) userData.get('name'));
        insert acc;
    }
}