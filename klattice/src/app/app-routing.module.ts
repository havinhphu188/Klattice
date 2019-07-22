import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { SalesandmarketingComponent } from './components/salesandmarketing/salesandmarketing.component';
import { TechnicalComponent } from './components/technical/technical.component';
import { ConsultingComponent } from './components/consulting/consulting.component';
import { ExperiencedesignComponent } from './components/experiencedesign/experiencedesign.component';
import { ManagementComponent } from './components/management/management.component';
import { CentralserviceteamsComponent } from './components/centralserviceteams/centralserviceteams.component';
import { LoginComponent } from './components/login/login.component';
import { AdminRoleComponent } from './components/admin-role/admin-role.component';

const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: '1', component: SalesandmarketingComponent },
  { path: '2', component: TechnicalComponent },
  { path: '3', component: ConsultingComponent },
  { path: '4', component: ExperiencedesignComponent },
  { path: '5', component: ManagementComponent },
  { path: '6', component: CentralserviceteamsComponent },
  { path: 'home/:username', component: HomeComponent},
  { path: 'home', component: HomeComponent},
  { path: 'adminRole', component: AdminRoleComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
