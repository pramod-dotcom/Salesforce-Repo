import { LightningElement,api } from 'lwc';

export default class Child extends LightningElement {
     results;
    @api 
    doadd(num1,num2)
    {
       this.results=parseInt(num1)+parseInt(num2);
       
    }
    clikchabdler(event)
    {
        const myevent=new CustomEvent('result',{detail:{result:this.results}});
        this.dispatchEvent(myevent);
    }
}