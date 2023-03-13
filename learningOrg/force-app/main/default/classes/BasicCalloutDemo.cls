public with sharing class BasicCalloutDemo {
  public BasicCalloutDemo() {
  }
  public static HttpResponse makeGetCallout() {
    Http http = new Http();

    // Create HTTP request
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://demo-basic-app.herokuapp.com/api/animals');
    request.setMethod('GET');
    System.debug(request);

    // Send the request and get the Http response
    HttpResponse response = http.send(request);
    System.debug(response);

    // Process the success response
    if (response.getStatusCode() == 200) {
      System.debug(response.getBody());
    }
    return response;
  }
}

// HttpResponse response = BasicCalloutDemo.makeGetCallout();