import { Component, OnInit, Input} from '@angular/core';
import { DataService } from '../../data.service';
import { Role } from 'src/app/classes/role';
import { FormsModule } from '@angular/forms'
import { HttpClient} from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'AdminRoleComponent',
  templateUrl: './admin-role.component.html',
  styleUrls: ['./admin-role.component.css']
})
export class AdminRoleComponent implements OnInit {

  @Input() role: Role;
  submitted = false;

  family_id: null;
  summary_link_pattern = "^https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/";

  constructor(dataService: DataService,private http:HttpClient,
    private router: Router) {
    this.data = dataService;
  }
  


  formShow = false;
  data: DataService;
  headers:any;

  public newRole: Role;

  openForm() {
    if (this.formShow == false)
      this.formShow = true;
    else
      this.formShow = false;
  }

  cancelForm() {
    this.formShow = false;
    this.family_id = null;
    this.newRole = new Role();
  }

  clearCapability() {
    this.newRole.capability_id = null;
  }

  ngOnInit() {
    this.newRole = new Role();
  }

  addRole(addForm): void {
    if (addForm.valid) {
      this.submitted = true;
      this.data.addRole(this.newRole);
    } else {
      console.log('Form is invalid');
    }
  }
  deleteRole(roleID){
    confirm("are you sure");
    if(confirm){
      let params = {"roleID": roleID};
      alert(roleID);
      this.headers = {
        "Content-Type": "application/json"
        }
      this.http.post('/api/delete-role', {params:params}, this.headers)
        .subscribe(response=>{
          alert(response);

         })
    }
    window.location.reload();
}

}
