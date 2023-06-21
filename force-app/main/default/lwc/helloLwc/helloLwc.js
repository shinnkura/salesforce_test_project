import { LightningElement , track } from 'lwc';

export default class HelloLwc extends LightningElement {
    @track name = 'Lightning Web Components';
    onNameChanged() {
        this.name = this.template.querySelector('input').value;
    }
}