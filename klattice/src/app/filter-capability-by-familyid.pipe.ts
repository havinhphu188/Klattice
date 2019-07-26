import { Pipe, PipeTransform } from '@angular/core';
import { Capability } from './classes/capability';

@Pipe({
  name: 'filterCapabilityByFamilyid'
})
export class FilterCapabilityByFamilyidPipe implements PipeTransform {

  transform(capabilities: Capability[], filterID: number): any {
    if(!capabilities) return [];
    if(!filterID) return capabilities;

    return capabilities.filter(c => {
      return c.family_id == filterID
    })
  }

}
