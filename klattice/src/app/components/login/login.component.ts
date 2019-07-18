import { Component, OnInit } from '@angular/core';
import { FormGroup,  FormBuilder,  Validators} from '@angular/forms';
import { HttpClient} from '@angular/common/http';
import * as bcrypt from 'bcryptjs';

//import { saltedHash} from '../../../../../api/SHA.js';
//const bcrypt = require('bcrypt');

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent {
  title = 'Angular Login Form';
  angForm: FormGroup;
  headers:any;
  
  constructor(private fb: FormBuilder,
              private http:HttpClient) {
   this.createForm();
   
 }
 createForm() {
  this.angForm = this.fb.group({
     username: ['', Validators.required ],
     password: ['', Validators.required ]
  });

  
}
  signInStatus = 'f';
  getHeaders() {
      return (this.headers = {
      "Content-Type": "application/json"
      });
    }

 onClickSubmit(username, password) {

  let formData: FormData = new FormData(); 

   alert('Your username is : '+ username);
   let params = {"username": username, "password":password};
   
   this.headers = {
    "Content-Type": "application/json"
    }
    this.http.post('/api/userdetails', {params:params}, this.headers)
    .subscribe(response=>{
      var rsp = JSON.stringify(response);
      rsp = rsp.substring(11,12);
      
      if(rsp == 'a')
      {
        alert('Admin signed in');
      }
      else if(rsp == 'e')
      {
        alert("Employee signed in");
      }
      else if(rsp == 'f')
      {
        alert("Failed");
        window.location.reload();
      }
      this.signInStatus = rsp;
    })
    
  }
}