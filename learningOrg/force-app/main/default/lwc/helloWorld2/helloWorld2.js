import { LightningElement, api } from 'lwc';

export default class HelloWorld2 extends LightningElement {
    name = '';
    @api announcement = "I 'm coding web components.";
    get resultOfCalculator() {
        return 0;
    }
    handleInput(event) {
        this.name = event.target.value;
    }
    firstName = 'Jacky';
    lastName = 'Lee';
    get uppercaseFullName() {
        const fullName = `${this.firstName} ${this.lastName}`;
        return fullName.trim().toUpperCase();
    }
    // render the array, use for:each={array}
    contacts = [
        {
            Id: 'w34234234534',
            Name: 'Jacky Lee',
            Title: 'Coo'
        },
        { Id: '003192301009134555', Name: 'Michael Jones', Title: 'CTO' },
        { Id: '003848991274589432', Name: 'Jennifer Wu', Title: 'CEO' }
    ];

    isTemplateOne;
    onHandleCheckbox(event) {
        this.isTemplateOne = event.target.checked;
        console.log(this.isTemplateOne);
    }
}