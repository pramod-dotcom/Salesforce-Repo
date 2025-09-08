import { LightningElement } from 'lwc';
import fetchAccounts from "@salesforce/apex/FetchContactrecords.fetchAccounts";
const columns = [
    { label: 'Account Name', fieldName: 'Name' },
    { label: 'Account Phone', fieldName: 'Phone' },
];
export default class FetchAccountRecords extends LightningElement {

    mycolom=columns;
    myarray=[];
    error;
    isvisible=false;
    clickhanlder()
    {
         this.isvisible=true;
        fetchAccounts().then((data)=>{
            this.myarray=data;
        }).catch((error)=>{
            this.error=error;
        })
    }
}