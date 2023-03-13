public with sharing class CustomControllerSetMethod {
  public CustomControllerSetMethod() {
  }
  public String text;
  public String getText() {
    return text;
  }

  public void setText(String t) {
    text = t;
  }

  public Pagereference save() {
    return null;
  }
}