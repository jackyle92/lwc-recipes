public with sharing class LearningSFDevAPI {
  public static void callAPIRequest() {
    Http http = new Http();

    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    req.setMethod('GET');
    HttpResponse res = http.send(req);
    System.debug(res.getBody());

    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(
      res.getBody()
    );
    List<Object> animals = (List<Object>) results.get('animals');
    for (Object animal : animals) {
      System.debug(animal);
    }
  }

  public static void postRequest() {
    Http http = new Http();

    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    req.setMethod('POST');
    req.setHeader('Content-Type', 'application/json;charset=UTF-8');
    req.setBody('{"name": "mighty moose"}');
    HttpResponse response = http.send(req);

    if (response.getStatusCode() != 201) {
      System.debug(
        'The status code returned was not expected: ' + response.getStatusCode()
      );
    } else {
      System.debug(response.getBody());
    }
  }
}

// LearningSFDevAPI.callAPIRequest();