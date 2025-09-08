import { LightningElement } from 'lwc';

export default class Parent extends LightningElement {
    showresult;
    number1;
    number2;
    changehandlre(event)
    {
        this.number1=event.target.value;
    }
     changehandlre2(event)
    {
        this.number2=event.target.value;
    }
    clickhandler(event)
    {
        this.refs.calucation.doadd(this.number1,this.number2);
        alert('numbers sent to child compoennt');
    }
    handlerevent(event)
    {
this.showresult=event.detail.result;
    }
}