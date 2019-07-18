import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { SalesandmarketingComponent } from './components/salesandmarketing/salesandmarketing.component';
import { TechnicalComponent } from './components/technical/technical.component';
import { ConsultingComponent } from './components/consulting/consulting.component';
import { ExperiencedesignComponent } from './components/experiencedesign/experiencedesign.component';
import { ManagementComponent } from './components/management/management.component';
import { CentralserviceteamsComponent } from './components/centralserviceteams/centralserviceteams.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: '1', component: SalesandmarketingComponent },
  { path: '2', component: TechnicalComponent },
  { path: '3', component: ConsultingComponent },
  { path: '4', component: ExperiencedesignComponent },
  { path: '5', component: ManagementComponent },
  { path: '6', component: CentralserviceteamsComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
