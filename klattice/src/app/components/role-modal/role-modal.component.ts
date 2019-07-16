import { Component } from '@angular/core';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-role-modal',
  templateUrl: './role-modal.component.html',
  styleUrls: ['./role-modal.component.css']
})

export class RoleModalComponent {

  title = "Test title";
  jobTitle = "Software Engineer";

  constructor() {}

  // open(content) {
  //   this.modalService.open(content, {size: 'lg', ariaLabelledBy: 'modal-basic-title'})
  // }

}
