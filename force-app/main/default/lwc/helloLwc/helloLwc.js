// import { LightningElement , track } from 'lwc';

// export default class HelloLwc extends LightningElement {
//     // @track name = 'Lightning Web Components';
//     // onNameChanged() {
//     //     this.name = this.template.querySelector('input').value;
//     // }
//     @track isChecked = false;
//     onCheckboxChanged() {
//         this.isChecked = this.template.querySelector('input').checked;
//     }
// }


import { LightningElement, track } from 'lwc';

export default class HelloLwc extends LightningElement {
    @track members = [
        {
            id: 1,
            name: 'sato',
        },
        {
            id: 2,
            name: 'suzuki',
        },
        {
            id: 3,
            name: 'tanaka',
        },
    ];
}