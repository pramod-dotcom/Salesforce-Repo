import { LightningElement,wire } from 'lwc';
import fetchContacts from "@salesforce/apex/FetchContactrecords.fetchContacts";

const columns = [
    { label: 'First Name', fieldName: 'FirstName' },
    { label: 'Last Name', fieldName: 'LastName' },
    { label: 'Phone', fieldName: 'Phone' },
    { label: 'Email', fieldName: 'Email' },
];
export default class ContactRecords extends LightningElement {

    colom=columns;
    mydata=[];
    error;
    @wire(fetchContacts)contacts({data,error})
    {
      if(data)
      {
        this.mydata=data;
        console.log(this.mydata);
        
      }else if(error)
      {
        this.error=error;
      }
    }
}