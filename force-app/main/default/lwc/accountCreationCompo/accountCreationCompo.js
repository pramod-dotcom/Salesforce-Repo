import { LightningElement } from 'lwc';
import getaccountCreation from "@salesforce/apex/AccountCreationUsingApex.accountCreation";

export default class AccountCreationCompo extends LightningElement {

    accountName;
    accountPhone;

    handleName(event)
    {
        this.accountName=event.target.value;
    
}
handlePhoneNumber(event)
{
    this.accountPhone=event.target.value;
}
handleClick(event)
{
getaccountCreation({accName: this.accountName,phoneNumber:this.accountPhone})
.then(()=>{
    alert('Account has been created successfully');
}).catch(()=>{
    alert('there is an error creating account');
})
}
}