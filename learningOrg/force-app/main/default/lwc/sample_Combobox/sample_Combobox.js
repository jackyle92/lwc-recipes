import { LightningElement, track, api, wire } from "lwc";
import getPicklistValue from "@salesforce/apex/Sample_Controller.getPicklistValue";
import getListOfLeadRecords from "@salesforce/apex/Sample_Controller.getListOfLeadRecords";
import getListProduct from "@salesforce/apex/Sample_Controller.getListProduct";

export default class Sample_Combobox extends LightningElement {
  @track pickListValue;
  @api industryValue;
  @api value;
  @api showTable;
  @api cols;
  @track lstLead;

  // combobox UI
  @api productLists;

  @wire(getListProduct, { priceBookId: "01s5i00000DY48AAAT" })
  wireProductData({ error, data }) {
    if (data) {
      let options = [];
      for (let key in data) {
        options.push({ label: data[key], value: data[key] });
      }
      this.productLists = options;
      console.log("Success");
    } else if (error) {
      console.log("Error");
    }
  }
  @wire(getPicklistValue, {})
  WireObject_Type({ error, data }) {
    if (data) {
      let options = [];

      for (var key in data) {
        // Here key will have index of list of records starting from 0,1,2,....
        options.push({ label: data[key], value: data[key] });

        // Here Name and Id are fields from sObject list.
      }
      this.industryValue = options;
    } else if (error) {
      console.log("Error");
    }
  }

  handleChangeProduct() {}

  handleIndustryChange(event) {
    // get 5 record and show the table when choose value
    this.showTable = true;
    // this.str = ;
    console.log(event.target.value);
    getListOfLeadRecords({ industryValue: event.target.value })
      .then((result) => {
        console.log("result : " + result);
        this.lstLead = result;
      })
      .catch((error) => {
        // console.log("This is error!");
      });
    console.log("After assigned" + this.lstLead);
  }
  cols = [
    { label: "Id", fieldName: "Id", type: "Id" },
    { label: "Name", fieldName: "Name", type: "text" },
    { label: "Industry", fieldName: "Industry", type: "text" },
  ];
}