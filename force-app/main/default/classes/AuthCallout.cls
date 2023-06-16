public class AuthCallout {
   public void basicAuthCallout(){
     HttpRequest req = new HttpRequest();
     req.setEndpoint('https://jsonplaceholder.typicode.com/users');
     req.setMethod('GET');
  
     Http http = new Http();
     HTTPResponse res = http.send(req);
  
     List<Object> users = (List<Object>) JSON.deserializeUntyped(res.getBody());
     Map<String, Object> user = (Map<String, Object>) users[0];
     System.debug(user.get('name'));
  
     Account acc = new Account(Name = (String)user.get('name'), BillingCity = 'rosia');
     insert acc;
   }
}