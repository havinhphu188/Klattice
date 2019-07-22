import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {
  constructor(private route: ActivatedRoute) { }

  username: string;

  ngOnInit() {
    this.username = this.route.snapshot.paramMap.get('username');
  }

  title = "Career Lattice"

}
