import { Component } from '@angular/core';
import { DataService } from '../../data.service';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';
import { HttpClient} from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-salesandmarketing',
  templateUrl: './salesandmarketing.component.html',
  styleUrls: ['./salesandmarketing.component.css']
})
export class SalesandmarketingComponent {

  title = 'Career Lattice';
  roleID = -1;
  roleName = '';
  roleSummary = '';
  roleLink = '';

  bandID = -1;

  data: DataService;
  headers:any;

  constructor(dataService: DataService, private modalService: NgbModal,  private http:HttpClient,
    private router: Router) {
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
}

}

