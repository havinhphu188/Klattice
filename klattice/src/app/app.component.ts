import { Component, EventEmitter, Input, Output } from '@angular/core';
import { DataService } from './data.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {

  title = 'klattice';
  data: DataService;

  constructor(dataService: DataService) {
    this.data = dataService;
  }

  
  
  
  //title = 'klattice';
  //roles = ROLES;
}

// const ROLES: Role[] = [
//   {
//     roleID: 1,
//     roleName: 'Software Engineer'
//   },
//   {
//     roleID: 2,
//     roleName: 'Marketing'
//   },
//   {
//     roleID: 3,
//     roleName: 'CEO'
//   },
//   {
//     roleID: 4,
//     roleName: 'Water boy'
//   }
// ];