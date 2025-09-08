import { LightningElement } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';

export default class AccountCreationLDS extends LightningElement {
    fields=[NAME_FIELD,PHONE_FIELD];
    handleSubmit(event)
    {
        alert('record is created');
    }
}