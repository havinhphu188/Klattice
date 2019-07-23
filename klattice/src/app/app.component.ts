import { Component, OnInit } from '@angular/core';
import { DataService } from './data.service';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';
import { Band } from './classes/band';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit {
  title = 'Career Lattice';
  roleID = -1;
  roleName = '';
  roleSummary = '';
  roleLink = '';

  bandID = -1;

  data: DataService;

  isLoggedIn: boolean;

  constructor(dataService: DataService, private modalService: NgbModal) {
    this.data = dataService;
  }

  ngOnInit() {
    this.isLoggedIn = this.data.isLoggedIn;
  }

  openModal(content, id, name, summary, link) {
    this.roleID = id;
    this.roleName = name;
    this.roleSummary = summary;
    this.roleLink = link;
    this.modalService.open(content, {size: 'lg', ariaLabelledBy: 'modal-basic-title'});
  }

  openCompModal(competencyModal, band_id) {
    this.bandID = band_id;
    this.modalService.open(competencyModal, {size: 'lg', ariaLabelledBy: 'modal-basic-title'});
  }

}
