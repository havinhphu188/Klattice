import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TechnicalComponent } from './technical.component';
import { DataService } from 'src/app/data.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { HttpClient } from '@angular/common/http';

describe('TechnicalComponent tests', () => {
  let component: TechnicalComponent;
  let fixture: ComponentFixture<TechnicalComponent>;

  let dataService: DataService
  let ngbModal: NgbModal
  let httpClient: HttpClient

  var technicalComponent = null;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TechnicalComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TechnicalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
    technicalComponent = new TechnicalComponent(DataService, NgbModal);
  });
  
  fixture = TestBed.createComponent(TechnicalComponent);
  component = fixture.componentInstance;
  httpClient = TestBed.get(HttpClient);

  it('Check openCompModal', () => {
    TechnicalComponent.x
  });
});
