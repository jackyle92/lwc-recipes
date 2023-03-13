import { api, LightningElement, wire } from "lwc";
import getInputMessage from "@salesforce/apex/Message.getInputMessage";

export default class WireDecorator extends LightningElement {
  @api inputWireMessage;
  @wire(getInputMessage) inputWireMessage;

  handleChange(event) {
    this.inputWireMessage = event.target.value;
  }
}