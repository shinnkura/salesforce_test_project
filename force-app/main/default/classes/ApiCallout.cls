public class ApiCallout {
	public void makeGetRequest() {
        // Create a new HttpRequest object
        HttpRequest req = new HttpRequest();
        
        // Set the endpoint URL
        req.setEndpoint('https://jsonplaceholder.typicode.com/users');
        
        // Set the HTTP method to GET
        req.setMethod('GET');
        
        // Send the request and store the response
        Http http = new Http();
        HttpResponse res = http.send(req);
        
        // Output the response body to the debug log
        System.debug(res.getBody());
    }
}