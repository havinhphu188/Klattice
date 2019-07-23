import { Component, OnInit, Input} from '@angular/core';
import { DataService } from '../../data.service';
import { Role } from 'src/app/classes/role';
import { FormsModule } from '@angular/forms'

@Component({
  selector: 'AdminRoleComponent',
  templateUrl: './admin-role.component.html',
  styleUrls: ['./admin-role.component.css']
})
export class AdminRoleComponent implements OnInit {

  @Input() role: Role;
  submitted = false;

  family_id: null;

  constructor(dataService: DataService) {
    this.data = dataService;
  }


  filter_capability_id = null;
  formShow = false;
  data: DataService;

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

  clearFilterCapability() {
    this.filter_capability_id = null;
  }

  ngOnInit() {
    this.newRole = new Role();
  }

  addRole(addForm): void {
    if (addForm.valid) {
      this.submitted = true;
      console.log(this.newRole);
      console.log(this.data.roles);
      this.data.addRole(this.newRole);
      console.log(this.data.roles);
    } else {
      console.log('Form is invalid');
    }
  }

}
