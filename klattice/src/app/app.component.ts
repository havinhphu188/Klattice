import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Role } from './classes/role';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {

  title = 'klattice';

  roles = this.http.get<Role[]>('/api/getroles');

  constructor(private http: HttpClient) {
    
    console.log(this.roles);
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