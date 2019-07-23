import { Component } from "@angular/core";
import { FormGroup, FormBuilder, Validators } from "@angular/forms";
import { HttpClient } from "@angular/common/http";
import { Router } from "@angular/router";
import { DataService } from "src/app/data.service";

@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.css"]
})
export class LoginComponent {
  title = "Angular Login Form";
  angForm: FormGroup;
  headers: any;

  data: DataService;

  constructor(
    private fb: FormBuilder,
    private http: HttpClient,
    private router: Router,
    private dataService: DataService
  ) {
    this.data = dataService;
    this.createForm();
  }
  createForm() {
    this.angForm = this.fb.group({
      username: ["", Validators.required],
      password: ["", Validators.required]
    });
  }
  signInStatus = "f";
  getHeaders() {
    return (this.headers = {
      "Content-Type": "application/json"
    });
  }

  successfulLogin(isAdmin, username) {
    this.data.loginDetails.subscribe(value => {
      value["isAdmin"] = isAdmin;
      value["loggedIn"] = true;
      value["username"] = username;
      console.log(value);
    });
  }

  onClickSubmit(username, password) {
    let formData: FormData = new FormData();

    let params = { username: username, password: password };

    this.headers = {
      "Content-Type": "application/json"
    };
    this.http
      .post("/api/userdetails", { params: params }, this.headers)
      .subscribe(response => {
        var rsp = JSON.stringify(response);
        rsp = rsp.substring(11, 12);

        if (rsp == "a") {
          this.successfulLogin(true, username);
          //this.router.navigate(["/home", username]);
          window.location.reload();
        } else if (rsp == "e") {
          this.successfulLogin(false, username);
          //this.router.navigate(["/home", username]);
          window.location.reload();
        } else if (rsp == "f") {
          alert("Failed");
          window.location.reload();
        }
        this.signInStatus = rsp;
      });
  }
}
