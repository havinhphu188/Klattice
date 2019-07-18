import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CentralserviceteamsComponent } from './centralserviceteams.component';

describe('CentralserviceteamsComponent', () => {
  let component: CentralserviceteamsComponent;
  let fixture: ComponentFixture<CentralserviceteamsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CentralserviceteamsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CentralserviceteamsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
