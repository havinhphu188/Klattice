import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Role } from './classes/role';
import { Capability } from './classes/capability';
import { Band } from './classes/band';
import { Competency } from './classes/competency';
import { BandCompetency } from './classes/band-competency';
import { Title } from './classes/title';
import { BandTitle } from './classes/band-title';
import { Family } from './classes/family';

@Injectable({
  providedIn: 'root'
})
export class DataService {
  constructor(private http: HttpClient) { }

  roles = this.http.get<Role[]>('/api/getroles').toPromise();
  capabilities = this.http.get<Capability[]>('api/getcapability').toPromise();
  bands = this.http.get<Band[]>('api/getbands').toPromise();
  competencies = this.http.get<Competency[]>('api/getcompetency').toPromise();
  titles = this.http.get<Title[]>('api/gettitle').toPromise();
  bandCompetencies = this.http.get<BandCompetency[]>('api/getbandcompetency').toPromise();
  bandTitles = this.http.get<BandTitle[]>('api/getbandtitles').toPromise();
  families = this.http.get<Family[]>('api/getfamilies').toPromise();

}
