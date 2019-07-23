import { Pipe, PipeTransform } from '@angular/core';
import { Role } from './classes/role';

@Pipe({
  name: 'filterAdminRole'
})
export class FilterAdminRolePipe implements PipeTransform {

  transform(roles: Role[], familyID: number, capabilityID: number, bandID: number, roleName: string): any {
    console.log(familyID);
    console.log(capabilityID);
    console.log(roles);
    if (!roles) return [];
    if (familyID){
      //require connection between familyID and role to filter directly on front-end.
      roles = roles;
    }
    if (capabilityID){
      roles = roles.filter(r => {
        return r.capability_id == capabilityID
      });
    }
    if (bandID) {
      roles = roles.filter(r => {
        return r.band_id == bandID
      });
    }
    if (roleName) {
      roles = roles.filter(r => {
        return r.role_name.toLowerCase().includes(roleName.toLowerCase());
      })
    }
    return roles;
  }

}
