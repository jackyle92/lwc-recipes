import { LightningElement, track, api } from "lwc";
import showListOfProduct from "@salesforce/apex/ListOfProduct.showListOfProduct";

export default class ShowingProductList extends LightningElement {
  numberOfRows;
  @track products;

  handleChange(event) {
    this.numberOfRows = event.target.value;
  }

  handleShowProduct() {
    showListOfProduct({ limitNum: this.numberOfRows })
      .then((result) => {
        this.products = result;
        console.log("This is successfull!!!");
        console.log(result);
      })
      .catch((error) => {
        console.log("This is failed :( :( ");
      });
  }
  cols = [
    {
      label: "Product Name",
      fieldName: "Name",
      type: "text",
    },
  ];
}