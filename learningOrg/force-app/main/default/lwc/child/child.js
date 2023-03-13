import { LightningElement } from 'lwc';

export default class Child extends LightningElement {
    showFooter = false;

    handleClick() {
        this.showFooter = !this.showFooter;
    }
}