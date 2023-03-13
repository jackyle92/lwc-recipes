import { LightningElement, wire } from "lwc";
import getAccountList from "@salesforce/apex/AccountApex.getAccountList";

export default class HelloForEach2 extends LightningElement {
  @wire(getAccountList, {}) accountList;
}