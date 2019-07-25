import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeComponent } from './home.component';
import { DataService } from 'src/app/data.service';
import { NgbModal, NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NavbarComponent } from '../navbar/navbar.component';
import { RouterTestingModule } from '@angular/router/testing';
import { SortByPipe } from 'src/app/sort-by.pipe';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { CapabilityFilterPipe } from 'src/app/capability-filter.pipe';
import { AppComponent } from 'src/app/app.component';
import { LoginComponent } from '../login/login.component';
import { FilterBandTitleByIdPipe } from 'src/app/filter-band-title-by-id.pipe';
import { FilterTitleByIdPipe } from 'src/app/filter-title-by-id.pipe';
import { FilterBandCompetencyByIdPipe } from 'src/app/filter-band-competency-by-id.pipe';
import { FilterCompetencyForDisplayPipe } from 'src/app/filter-competency-for-display.pipe';
import { SidebarComponent } from '../sidebar/sidebar.component';
import { MainComponent } from '../main/main.component';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from 'src/app/app-routing.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';

fdescribe('HomeComponent', () => {
  let component: HomeComponent;
  let fixture: ComponentFixture<HomeComponent>;

  let dataService: DataService
  let ngbModal: NgbModal
  let activatedRoute: ActivatedRoute

  let blah: HomeComponent

  beforeEach(async(() => {
    TestBed.configureTestingModule({
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
      providers: [
        DataService
      ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    let dataService = fixture.debugElement.injector.get(DataService);

  });
});
