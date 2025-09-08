import { LightningElement } from 'lwc';

export default class ChildB extends LightningElement {

    clickhandler(event)
    {
        const myevent=new CustomEvent('message',{
            detail:{info:"this is from child component"}
        });
        this.dispatchEvent(myevent);
    }
}