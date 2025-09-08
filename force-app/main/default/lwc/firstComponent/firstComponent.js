import { LightningElement } from 'lwc';

export default class FirstComponent extends LightningElement {
    myvalue;
    myarray=[];
    changehandler(event)
    {
       this.myvalue = event.target.value;
       console.log(this.myvalue);    
    }
    handleClick(event)
    {
        this.myarray=[...this.myarray,this.myvalue];
        this.template.queryselectorAll('lightning-input').foreach(input=>{
            input.value='';
        })
    }
}