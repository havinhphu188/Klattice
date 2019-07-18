import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ExperiencedesignComponent } from './experiencedesign.component';

describe('ExperiencedesignComponent', () => {
  let component: ExperiencedesignComponent;
  let fixture: ComponentFixture<ExperiencedesignComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ExperiencedesignComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ExperiencedesignComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
