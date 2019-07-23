import { Component, OnInit } from "@angular/core";
import { ActivatedRoute } from "@angular/router";
import { DataService } from "src/app/data.service";
import { HttpClient } from "@angular/common/http";

@Component({
  selector: "app-navbar",
  templateUrl: "./navbar.component.html",
  styleUrls: ["./navbar.component.css"]
})
export class NavbarComponent implements OnInit {
  data: DataService;
  headers: any;
  username: string;
  signInStatus: string;
  title = "Career Lattice";

  constructor(
    private route: ActivatedRoute,
    private dataservice: DataService,
    private http: HttpClient
  ) {
    this.data = dataservice;
  }

  ngOnInit() {
    this.data.loginDetails.subscribe(x => {
      this.username = x["username"];
    });
  }

  signUserOut() {
    this.http.post("/api/signout", "").subscribe(res => {
      this.resetLogInDetails();
      window.location.reload();
    });
  }

  resetLogInDetails() {
    this.data.loginDetails.subscribe(value => {
      value["isAdmin"] = false;
      value["loggedIn"] = false;
      value["username"] = null;
    });
  }
}
