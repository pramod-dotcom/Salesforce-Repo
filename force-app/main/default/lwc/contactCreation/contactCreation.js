import { LightningElement } from 'lwc';
import getcontact from '@salesforce/apex/ContactCreationclass.createcontacts';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class ContactCreation extends LightningElement {

    fname;
    lname;
    phone;
    email;

    changehandler(event)
    {
        let{name,value}=event.target;
        if(name==='fn')this.fname=value;
        if(name==='ln')this.lname=value;
        if(name==='pn')this.phone=value;
        if(name==='em')this.email=value;

    }
    clickhandler(event)
   {
      getcontact({
        firstname:this.fname,
        lastname:this.lname,
        phone:this.phone,
        emails:this.email
       }).then(()=>{
            this.showToast('Record Creation','The record has been created successfully','success');
            this.template.querySelectorAll('lightning-input').forEach(input=>{
            input.value='';
        });
       
       }).catch(()=>{
        alert('error');
       })
   }
   showToast(title,message,variant) {
        const event = new ShowToastEvent({
            title: title,
            message: message,
            variant:variant
                
        });
        this.dispatchEvent(event);
    }
}