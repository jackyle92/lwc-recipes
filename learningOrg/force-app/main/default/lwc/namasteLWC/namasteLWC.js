import { LightningElement, wire, api } from "lwc";
import Id from "@salesforce/user/Id";
import { getRecord } from "lightning/uiRecordApi";
import NAME_FIELD from "@salesforce/schema/User.FirstName";

export default class NamasteLWC extends LightningElement {
  error;
  @api firstName;
  @api username;
  @api email;
  @wire(getRecord, { recordId: Id, fields: [NAME_FIELD] }) wireuser({
    error,
    data,
  }) {
    if (error) {
      this.error = error;
    } else if (data) {
      // assign user name
      this.firstName = data.fields.FirstName.value;
    }
  }
  boolCheck() {
    return true;
  }

  bindingCheck() {
    return true;
  }
  handleChange(event) {
    console.log("event: " + event);
    if (event.target.label === "Name") {
      this.username = event.target.value;
    }
    if (event.target.label === "Email") {
      this.email = event.target.value;
    }
  }
}