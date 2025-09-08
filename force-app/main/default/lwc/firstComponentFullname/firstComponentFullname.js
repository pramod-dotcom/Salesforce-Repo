import { LightningElement } from 'lwc';

export default class FirstComponentFullname extends LightningElement {
    fname;
    lname;
    fullname;

    handleFirstName(event)
    {
       this.fname=event.target.value;
    }
    handleLastName(event)
    {
        this.lname=event.target.value;
    }
    handleClick(event)
    {
      this.fullname=this.fname + this.lname;  
    }
}