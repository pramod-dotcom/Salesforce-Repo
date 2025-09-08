import { LightningElement,api } from 'lwc';

export default class ChildComponentX extends LightningElement {
    @api parentData;
    childmessage='this message is fromchild component';
    handlesendevent()
    {
        const event=new CustomEvent('childmes',{detail:this.childmessage});
        this.dispatchEvent(event);
    }

}