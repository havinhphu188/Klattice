import { Component, OnInit, Input} from '@angular/core';
import { DataService } from '../../data.service';
import { Role } from 'src/app/classes/role';
import { FormGroup } from "@angular/forms";
import { FormsModule } from '@angular/forms'
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'AdminRoleComponent',
  templateUrl: './admin-role.component.html',
  styleUrls: ['./admin-role.component.css']
})
export class AdminRoleComponent implements OnInit {

  @Input() role: Role;
  submitted = false;

  family_id: null;
  angForm: FormGroup;

  constructor(dataService: DataService, private modalService: NgbModal) {
    this.data = dataService;
  }

  filter_capability_id = null;
  formShow = false;
  data: DataService;

  public newRole: Role;
  public selectRole: Role;

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
    this.data.refreshRole();
    this.modalService.dismissAll();
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
      this.data.addRole(this.newRole);
      this.formShow = false;
      this.family_id = null;
      this.newRole = new Role();
    } else {
      console.log('Form is invalid');
    }
    this.modalService.dismissAll();
  }

  editRole(addForm): void {
    if (addForm.valid) {
      this.submitted = true;
      this.data.editRole(this.newRole);
      this.formShow = false;
      this.family_id = null;
      this.newRole = new Role();
    } else {
      console.log('Form is invalid');
      this.data.refreshRole();
    }
    this.modalService.dismissAll();
  }

  modalState = 'edit';
  editSet = false;

  openAddRoleModal(addRole) {
    this.modalService.open(addRole, {
      size: 'lg',
      ariaLabelledBy: 'modal-basic-title'
    });
    this.modalState = 'add';
  }

  openEditRoleModal(editRole, role) {
    this.modalService.open(editRole, {
      size: "lg",
      ariaLabelledBy: "modal-basic-title"
    });
    this.selectRole=role;
    this.newRole = role;
    this.modalState = 'edit';
    this.editSet = true;
  }

  openViewRoleModal(viewRole, role) {
    if (this.editSet == false){
      this.modalService.open(viewRole, {
        size: "lg",
        ariaLabelledBy: "modal-basic-title"
      });
      this.selectRole = role;
      this.modalState = 'view';
    } else {
      this.editSet = false;
    }
  }

  deleteRole(roleID){
    confirm('Are you sure?');
    if (confirm) {
      this.data.deleteRole(roleID);
    }
    window.location.reload();
  }

}
