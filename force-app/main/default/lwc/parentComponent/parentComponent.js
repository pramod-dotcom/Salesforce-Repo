import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
    fname;
    lname;
    fullname;
    firstnamehandler(event)
    {
        this.fname=event.target.value;
    }
     lastnamehandler(event)
    {
        this.lname=event.target.value;
    }
    clickhandler(event)
    {
     this.fullname=`${this.fname} ${this.lname}`;
    }
}