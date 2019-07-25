import { Directive } from '@angular/core';
import { Validator, NG_VALIDATORS, AbstractControl } from '@angular/forms';

@Directive({
  selector: '[appSharepoint]',
  providers: [{ provide: NG_VALIDATORS,
                useClass: SharepointDirective, multi:true}]
})
export class SharepointDirective implements Validator {

  constructor() { }

  validate(control: AbstractControl): {[key:string]: any } | null {
    if (control.value == null) return null;
    var sharepointLink = "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/"

    return sharepointLink == control.value.slice(0, sharepointLink.length) ? null : {notSharePointLink: true};
  }
}
