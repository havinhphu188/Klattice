import { Component, EventEmitter, Input, Output } from '@angular/core';
import { DataService } from './data.service';
import { RoleModalComponent } from './components/role-modal/role-modal.component'

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

  openModal() {
    console.log("It worked");
  }

}
