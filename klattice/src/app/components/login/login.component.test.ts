// require('zone.js');
// import 'reflect-metadata';
// import { Component } from  "@angular/core";
// import {inject, beforeEachProviders} from  "@angular/core/testing";

// var chai = require('chai');
// var spies = require('chai-spies');
// chai.use(spies);
// var assert = chai.assert;
// var expect = chai.expect;

// import { LoginComponent } from '../../components/login/login.component';
// import { FormGroup,  FormBuilder,  Validators} from '@angular/forms';
// import { HttpClient} from '@angular/common/http';
// import { Router } from '@angular/router';
// import { RouterTestingModule } from '@angular/router/testing';

// //import { Service } from '../app/service';


// describe('App Component Test',() => {
//     var loginComponent = null;
//     //beforeEachProviders( () => [Service]);

//     beforeEach(inject([FormBuilder, HttpClient, Router],(FormBuilder, HttpClient, Router)=>{
//       loginComponent = new LoginComponent(FormBuilder, HttpClient, Router);
//     }));

//     // Check if an Employee can login
//     it('Employee login check',()=>{
//         loginComponent.onClickSubmit("employee", "empPass")
//         expect(location.path).toBe('/home/employee');
        

//     });

//     it('Chai Spy',()=>{
//         var spy = chai.spy(app.callOnSpy);
//         spy();
//         expect(spy).to.have.been.called().once;
//     });

// });