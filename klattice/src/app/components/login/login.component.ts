import { Component, OnInit } from '@angular/core';
import { FormGroup,  FormBuilder,  Validators} from '@angular/forms';
import { HttpClient} from '@angular/common/http';

// import { resolve } from 'path';

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
 
 onClickSubmit(username, password) {

  let formData: FormData = new FormData(); 


   var username= this.angForm.controls.username.value;
   var password = this.angForm.controls.password.value;

   formData.append('username', username); 
   formData.append('password', password); 

   alert('Your username is : ' + username);
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



