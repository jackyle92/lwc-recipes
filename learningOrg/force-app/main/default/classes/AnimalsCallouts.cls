public with sharing class AnimalsCallouts {
    public AnimalsCallouts() {

    }

    public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest req = new HttpRequest();

        req.setMethod('GET');
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        HttpResponse res = http.send(req);

        // If the request is successful, parse the JSON response
        if(res.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals: ');
            for (Object animal: animals) {
                system.debug(animal);
            }
        }
        return res;
    }


    public static HttpResponse makePostCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if(response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }
        return response;
    }
}