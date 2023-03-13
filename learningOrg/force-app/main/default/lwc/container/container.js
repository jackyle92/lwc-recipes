import { LightningElement } from 'lwc';

export default class Container extends LightningElement {
    addOneMore = true;
    handleSlotChange() {
        console.log('New slotted content has been added or removed!');
    }
}