import { Component, Input } from '@angular/core';
import { DataService } from '../../data.service';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent {

  @Input()
  isAdmin: boolean;

  data: DataService;

  constructor(dataService: DataService, private modalService: NgbModal) {
    this.data = dataService;
  }

}
