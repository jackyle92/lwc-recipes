import { LightningElement, api } from "lwc";

export default class ParentComponent extends LightningElement {
  @api recordId;
  @api objectApiName;
  handleChange() {
    this.template.querySelector("c-child-component").changeGreeting();
  }
}