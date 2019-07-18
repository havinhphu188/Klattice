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

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RoleModalComponent,
    SortByPipe
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
