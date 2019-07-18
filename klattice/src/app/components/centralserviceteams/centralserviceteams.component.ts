import { Component } from '@angular/core';
import { DataService } from '../../data.service';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-centralserviceteams',
  templateUrl: './centralserviceteams.component.html',
  styleUrls: ['./centralserviceteams.component.css']
})
export class CentralserviceteamsComponent {

  title = 'Career Lattice';
  roleID = -1;
  roleName = '';
  roleSummary = '';
  roleLink = '';

  bandID = -1;

  data: DataService;

  constructor(dataService: DataService, private modalService: NgbModal) {
    this.data = dataService;
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

