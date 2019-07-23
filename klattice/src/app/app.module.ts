import { BrowserModule } from "@angular/platform-browser";
import { NgModule } from "@angular/core";

import { AppRoutingModule } from "./app-routing.module";
import { AppComponent } from "./app.component";
import { HttpClientModule } from "@angular/common/http";

import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { LoginComponent } from "./components/login/login.component";

import { NgbModule } from "@ng-bootstrap/ng-bootstrap";
import { SortByPipe } from "./sort-by.pipe";
import { NavbarComponent } from "./components/navbar/navbar.component";
import { HomeComponent } from "./components/home/home.component";
import { SidebarComponent } from "./components/sidebar/sidebar.component";
import { CapabilityFilterPipe } from "./capability-filter.pipe";
import { MainComponent } from "./components/main/main.component";

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SortByPipe,
    NavbarComponent,
    HomeComponent,
    SidebarComponent,
    CapabilityFilterPipe,
    MainComponent
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
export class AppModule {}
