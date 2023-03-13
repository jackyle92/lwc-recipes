import { LightningElement, api } from "lwc";

export default class ChildComponent extends LightningElement {
  // public property
  @api greeting;

  // public method
  @api changeGreeting() {
    this.greeting = "Greetings change from Parent Component button click";
  }
}