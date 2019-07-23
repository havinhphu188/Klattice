import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';

import { FormsModule,ReactiveFormsModule } from '@angular/forms';
import { LoginComponent } from './components/login/login.component';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { RoleModalComponent } from './components/role-modal/role-modal.component';
import { SortByPipe } from './sort-by.pipe';
import { NavbarComponent } from './components/navbar/navbar.component';
import { HomeComponent } from './components/home/home.component';
import { SalesandmarketingComponent } from './components/salesandmarketing/salesandmarketing.component';
import { TechnicalComponent } from './components/technical/technical.component';
import { ConsultingComponent } from './components/consulting/consulting.component';
import { ExperiencedesignComponent } from './components/experiencedesign/experiencedesign.component';
import { ManagementComponent } from './components/management/management.component';
import { CentralserviceteamsComponent } from './components/centralserviceteams/centralserviceteams.component';
import { RouterModule } from '@angular/router';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RoleModalComponent,
    SortByPipe,
    NavbarComponent,
    HomeComponent,
    SalesandmarketingComponent,
    TechnicalComponent,
    ConsultingComponent,
    ExperiencedesignComponent,
    ManagementComponent,
    CentralserviceteamsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
