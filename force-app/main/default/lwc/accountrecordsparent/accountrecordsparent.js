import { LightningElement,wire } from 'lwc';
import FetchAccounts from "@salesforce/apex/accountClass.getaccounts";
const columns = [
    { label: 'Account Name', fieldName: 'Name' },
    { label: 'Account Phone', fieldName: 'Phone' },
];

export default class Accountrecordsparent extends LightningElement {
    colom=columns;
    mydata=[];
    error;
    selectedrowid;
@wire(FetchAccounts)accounts({data,error})
{
    if(data)
    {
        this.mydata=data;
    }
    else if(error)
    {
        this.error=error;
    }
}
handleRowselection(event)
{
    let selectedrows=event.detail.selectedRows;
    this.selectedrowid=selectedrows[0].Id;
}

}