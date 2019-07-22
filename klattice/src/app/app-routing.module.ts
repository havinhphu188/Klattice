import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { HomeComponent } from "./components/home/home.component";
import { AdminRoleComponent } from './components/admin-role/admin-role.component';

const routes: Routes = [
  {
    path: "",
    component: HomeComponent,
    data: { capabilityTitle: "All capabilities", familyID: "0" }
  },
  {
    path: "home/:username",
    component: HomeComponent,
    data: { capabilityTitle: "All capabilities", familyID: "0" }
  },
  {
    path: "home",
    component: HomeComponent,
    data: { capabilityTitle: "All capabilities", familyID: "0" }
  },
  {
    path: "Sales & Marketing",
    component: HomeComponent,
    data: { capabilityTitle: "Sales & Marketing", familyID: "1" }
  },
  {
    path: "Technical",
    component: HomeComponent,
    data: { capabilityTitle: "Technical", familyID: "2" }
  },
  {
    path: "Consulting",
    component: HomeComponent,
    data: { capabilityTitle: "Consulting", familyID: "3" }
  },
  {
    path: "Experience Design",
    component: HomeComponent,
    data: { capabilityTitle: "Experience Design", familyID: "4" }
  },
  {
    path: "Management",
    component: HomeComponent,
    data: { capabilityTitle: "Management", familyID: "5" }
  },
  {
    path: "Central Services Teams",
    component: HomeComponent,
    data: { capabilityTitle: "Central Services Teams", familyID: "6" }
  },
  { path: 'adminRole', component: AdminRoleComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
