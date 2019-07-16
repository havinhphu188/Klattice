import { Component, OnInit } from '@angular/core';
import { FormGroup,  FormBuilder,  Validators} from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})


export class LoginComponent {
  title = 'Angular Login Form';
  angForm: FormGroup;
  http: any;
  constructor(private fb: FormBuilder) {
   this.createForm();
 }
 createForm() {
  this.angForm = this.fb.group({
     username: ['', Validators.required ],
     password: ['', Validators.required ]
  });

  
}
 
 onClickSubmit(username, password) {

  let formData: FormData = new FormData(); 
   formData.append('username', username); 
   formData.append('password', password); 

   alert('Your username is : ' + username);
   
    this.http.post('/api/userdetails', this.angForm.value)
    .subscribe((response)=>{
      console.log('repsonse ',response);
    })
  }


  

  


  
}



