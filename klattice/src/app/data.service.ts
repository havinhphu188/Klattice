import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Role } from './classes/role';
import { Capability } from './classes/capability';
import { Band } from './classes/band';
import { Competency } from './classes/competency';
import { BandCompetency } from './classes/band-competency';
import { Title } from './classes/title';
import { BandTitle } from './classes/band-title';

@Injectable({
  providedIn: 'root'
})
export class DataService {
  constructor(private http: HttpClient) { }

  roles = this.http.get<Role[]>('/api/getroles');
  capabilities = this.http.get<Capability[]>('api/getcapability');
  bands = this.http.get<Band[]>('api/getbands');
  competencies = this.http.get<Competency[]>('api/getcompetency');
  titles = this.http.get<Title[]>('api/gettitle');
  bandCompetencies = this.http.get<BandCompetency[]>('api/getbandcompetency');
  bandTitles = this.http.get<BandTitle[]>('api/getbandtitles');
}
