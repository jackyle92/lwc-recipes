import { LightningElement } from 'lwc';

export default class HelloConditionalRedering_One extends LightningElement {
    areDetailsVisible = false;

    handleChange(event) {
        this.areDetailsVisible = event.target.checked;
    }
}