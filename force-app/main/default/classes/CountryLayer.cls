public class CountryLayer {
	
    public static void makeCallout(String countryName){
        try{
            String endpoint = 'http://api.countrylayer.com/v2/name/'+countryName+'?access_key=275dd5efe49e49ea5cbeba8d54b8eadf ';
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint(endpoint);
            request.setMethod('GET');
            request.setTimeout(120000);
            
            HttpResponse response = http.send(request);
            
            if(response.getStatusCode() == 200){
                System.debug(response.getBody());
                String payload = response.getBody().substring(1,response.getBody().length()-1);
                
                Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(payload);
                
                List<Object> ex = (List<Object>)responseMap.get('altSpellings');
                System.debug(ex);
            }
            
            
        }catch(Exception e){
            
        }
    }
}