import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {

    isvisible=false;
    clickhandler(event)
    {
      this.isvisible=true;
    }
   
}