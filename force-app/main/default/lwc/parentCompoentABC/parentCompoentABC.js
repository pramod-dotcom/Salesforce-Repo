import { LightningElement } from 'lwc';

export default class ParentCompoentABC extends LightningElement {

    message='this message is from parent component';
    handleChildValue;
    handleCustomEvent(event)
    {
        this.handleChildValue=event.detail;
    }
    
}