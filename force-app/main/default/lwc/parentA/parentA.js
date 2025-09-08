import { LightningElement } from 'lwc';

export default class ParentA extends LightningElement {
    childinfo;
    eventhandler(event)
    {
this.childinfo=event.detail.info;
    }
}