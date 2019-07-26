import { BrowserModule } from "@angular/platform-browser";
import { NgModule } from "@angular/core";

import { AppRoutingModule } from "./app-routing.module";
import { AppComponent } from "./app.component";
import { HttpClientModule } from "@angular/common/http";

import { FormsModule,ReactiveFormsModule } from '@angular/forms';

import { LoginComponent } from './components/login/login.component';
import { FilterBandTitleByIdPipe } from "./filter-band-title-by-id.pipe";
import { FilterTitleByIdPipe } from "./filter-title-by-id.pipe";
import { FilterBandCompetencyByIdPipe } from "./filter-band-competency-by-id.pipe";
import { FilterCompetencyForDisplayPipe } from "./filter-competency-for-display.pipe";
import { FilterCapabilityByFamilyidPipe } from './filter-capability-by-familyid.pipe';
import { NgbModule } from "@ng-bootstrap/ng-bootstrap";
import { HomeComponent } from "./components/home/home.component";
import { NavbarComponent } from "./components/navbar/navbar.component";
import { SidebarComponent } from "./components/sidebar/sidebar.component";
import { CapabilityFilterPipe } from "./capability-filter.pipe";
import { SortByPipe } from "./sort-by.pipe";
import { MainComponent } from "./components/main/main.component";
import { AdminRoleComponent } from './components/admin-role/admin-role.component';
import { FilterAdminRolePipe } from './filter-admin-role.pipe';
import { SharepointDirective } from './sharepoint.directive';
import { FilterRoleFamilyPipe } from './filter-role-family.pipe';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SortByPipe,
    NavbarComponent,
    HomeComponent,
    FilterBandTitleByIdPipe,
    FilterTitleByIdPipe,
    FilterBandCompetencyByIdPipe,
    FilterCompetencyForDisplayPipe,
    SidebarComponent,
    CapabilityFilterPipe,
    MainComponent,
    AdminRoleComponent,
    FilterCapabilityByFamilyidPipe,
    FilterAdminRolePipe,
    SharepointDirective,
    FilterRoleFamilyPipe
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
