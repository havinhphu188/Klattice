import { Component, OnInit, Input} from '@angular/core';
import { DataService } from '../../data.service';
import { Role } from 'src/app/classes/role';

@Component({
  selector: 'AdminRoleComponent',
  templateUrl: './admin-role.component.html',
  styleUrls: ['./admin-role.component.css']
})
export class AdminRoleComponent implements OnInit {

  @Input() role: Role;
  submitted = false;

  constructor(dataService: DataService) {
    this.data = dataService;
  }
  
  formShow = false;
  data: DataService;

  public newRole: Role;

  openForm() {
    if (this.formShow == false)
      this.formShow = true;
    else
      this.formShow = false;
  }

  ngOnInit() {
    this.newRole = new Role();
  }
}
