public class FetchAndDisplayData {
    public class User {
        public Integer id;
        public String name;
        public String email;
    }

    public static void fetchDataAndDisplay() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://jsonplaceholder.typicode.com/users');
        req.setMethod('GET');

        Http http = new Http();
        HttpResponse res = http.send(req);

        if (res.getStatusCode() == 200) {
            List<User> users = (List<User>) JSON.deserialize(res.getBody(), List<User>.class);

            User firstUser = users[0];

            Contact newContact = new Contact();
            newContact.LastName = firstUser.name; 
            newContact.Email = firstUser.email;

            insert newContact;
        }
    }
}