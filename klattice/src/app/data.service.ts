import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Role } from './classes/role';
import { Capability } from './classes/capability';
import { Band } from './classes/band';
import { Competency } from './classes/competency';
import { BandCompetency } from './classes/band-competency';
import { Title } from './classes/title';
import { BandTitle } from './classes/band-title';
import { Family } from './classes/family';
import { RoleFamily } from './classes/role-family';
import { Responsibility } from './classes/responsibility';
import { CapabilityLead } from './classes/capability-lead';

@Injectable({
  providedIn: "root"
})
export class DataService {

  constructor(private http: HttpClient) {}
  roles = this.http.get<Role[]>("/api/roles").toPromise();
  capabilities = this.http.get<Capability[]>("api/capability").toPromise();
  bands = this.http.get<Band[]>("api/bands").toPromise();
  competencies = this.http.get<Competency[]>("api/competency").toPromise();
  titles = this.http.get<Title[]>("api/title").toPromise();
  bandCompetencies = this.http.get<BandCompetency[]>("api/band-competency").toPromise();
  bandTitles = this.http.get<BandTitle[]>("api/band-titles").toPromise();
  families = this.http.get<Family[]>("api/families").toPromise();
  capabilityLeads = this.http.get<CapabilityLead[]>("api/capability-lead").toPromise();
  roleFamilies = this.http.get<RoleFamily[]>('api/role-families').toPromise();
  loginDetails = this.http.get<JSON>("api/user-details");
  responsibilities = this.http.get<Responsibility[]>("api/responsibilities").toPromise();

  addRole(newRole: Role): any {
    this.http.post<Role>('api/add-role', newRole).subscribe(c => {console.log(c)});
    this.refreshRole();
  }

  editRole(oldRole: Role): any {
    this.http.put<Role>('api/edit-role', oldRole).subscribe(c => {console.log(c)});
    this.refreshRole();
  }
  
  deleteRole(roleID){
    let params = {'roleID': roleID};
    this.http.post('/api/delete-role', {params:params})
      .subscribe(response => {
        alert(response);
      })
    this.refreshRole();
  }

  refreshRole (){
    this.roles = this.http.get<Role[]>('api/roles').toPromise();
    this.roleFamilies = this.http.get<RoleFamily[]>('api/role-families').toPromise();
  }
}
