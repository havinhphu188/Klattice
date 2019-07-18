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

  getHeaders() {
      return (this.headers = {
      "Content-Type": "application/json"
      });
    }
    
    compareHash(textPassword, salt, hashedpassword){
      var result = bcrypt.compareSync(textPassword + salt, hashedpassword);
      return result;
    }

    createHash(textPassword, salt, saltInt){
      var hash = bcrypt.hashSync(textPassword + salt, saltInt);
      return hash;
    }
    
 onClickSubmit(username, password) {

  let formData: FormData = new FormData(); 
  var username= this.angForm.controls.username.value;
  var password = this.angForm.controls.password.value;

  var salt = bcrypt.genSaltSync(10);
  
  var hash = this.createHash(password, "EH189020", salt);

   //TESTCASE  -- positive
  var isValidLogin = this.compareHash("adminPass", "EH189020", "$2a$10$TRBNEkxNFP0bI49FooWXHuP80gs63w38X4lh2lvcuQfHOCNgWcbbK");
 //TESTCASE -- negative
  var notValidLogin = this.compareHash("adminPass", "EH189020", "$2a$10$TRBNEkxNFP0bI49FooWXHuP80gs63w38X4lh2lvcuQfH");
  console.log("isValidLogin TEST RS: true :" + isValidLogin);
  console.log("notValidLogin TEst RS: false :" + notValidLogin);

   console.log(hash);

   formData.append('username', username); 
   formData.append('password', hash); 


   alert('Your username is : '+ username);
   let params = {"username": username, "password":hash};
   
   this.headers = {
    "Content-Type": "application/json"
    }
    this.http.post('/api/userdetails', {params:params}, this.headers)
    .subscribe(response=>{

      console.log('repsonse ', response);

      var rsp = JSON.stringify(response);
      rsp = rsp.substring(11,12);
      
      if(rsp == 'a')
      {
        alert('whats happening admin  kid');
      }
      else if(rsp == 'e')
      {
        alert("whats happening employee kid");
      }
      else if(rsp == 'f')
      {
        alert("Failed");
        window.location.reload();
      }
    })
    
  }
}