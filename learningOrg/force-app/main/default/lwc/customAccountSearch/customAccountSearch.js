import { LightningElement, track, api } from "lwc";
import getAccountData from "@salesforce/apex/AccountSearch.getAccountData";

export default class CustomAccountSearch extends LightningElement {
  @api searchKey;
  @track accounts;
  //get the value from text input
  handleSearchKey(event) {
    this.searchKey = event.target.value;
  }

  // fetch the account name on basis of searchkey
  searchAccountHandler() {
    // call apex method
    getAccountData({ textSearch: this.searchKey })
      .then((result) => {
        this.accounts = result;
      })
      .catch((error) => {
        this.accounts = null;
      });
  }
  cols = [
    { label: "Account Name", fieldName: "Name", type: "text" },
    { label: "Phone", fieldName: "Phone", type: "Phone" },
    { label: "Industry", fieldName: "Industry", type: "text" },
  ];
}