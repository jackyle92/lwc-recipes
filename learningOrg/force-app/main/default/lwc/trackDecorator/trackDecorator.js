import { LightningElement, api } from "lwc";

export default class TrackDecorator extends LightningElement {
  @api inputMessage;
  handleChange(event) {
    console.log("event.target.value" + event.target.value);
    this.inputMessage = event.target.value;
  }
}