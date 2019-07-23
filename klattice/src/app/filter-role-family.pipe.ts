import { Pipe, PipeTransform } from '@angular/core';
import { RoleFamily } from './classes/role-family';

@Pipe({
  name: 'filterRoleFamily'
})
export class FilterRoleFamilyPipe implements PipeTransform {

  transform(rolefamilies: RoleFamily[], filterID: number): any {
    if (!rolefamilies) return [];
    if (!filterID) return rolefamilies;

    return rolefamilies.filter(rf => {
      return rf.family_id == filterID
    })
  }

}
