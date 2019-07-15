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
}
