import { Component } from '@angular/core';
import { FormGroup,  FormBuilder,  Validators} from '@angular/forms';
import { HttpClient} from '@angular/common/http';
import { Router } from '@angular/router';

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
              private http:HttpClient,
              private router: Router) {
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

   let params = {"username": username, "password":password};
   
   this.headers = {
    "Content-Type": "application/json"
    }
    this.http.post('/api/user-details', {params:params}, this.headers)
    .subscribe(response=>{
      var rsp = JSON.stringify(response);
      rsp = rsp.substring(11,12);
      
      if(rsp == 'a')
      {     
        this.router.navigate(['/home', username]);
      }
      else if(rsp == 'e')
      {
        this.router.navigate(['/home', username]);
      }
      else if(rsp == 'f')
      {
        window.location.reload();
      }
      this.signInStatus = rsp;
    })
    
  }
}