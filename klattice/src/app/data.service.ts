import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";

import { Role } from "./classes/role";
import { Capability } from "./classes/capability";
import { Band } from "./classes/band";
import { Competency } from "./classes/competency";
import { BandCompetency } from "./classes/band-competency";
import { Title } from "./classes/title";
import { BandTitle } from "./classes/band-title";
import { Family } from "./classes/family";

@Injectable({
  providedIn: "root"
})
export class DataService {
  constructor(private http: HttpClient) {}
  roles = this.http.get<Role[]>("/api/roles").toPromise();
  capabilities = this.http.get<Capability[]>("api/capability").toPromise();
  bands = this.http.get<Band[]>("api/bands").toPromise();
  competencies = this.http.get<Competency[]>("api/competency").toPromise();
  titles = this.http.get<Title[]>("api/title").toPromise();
  bandCompetencies = this.http
    .get<BandCompetency[]>("api/band-competency")
    .toPromise();
  bandTitles = this.http.get<BandTitle[]>("api/band-titles").toPromise();
  families = this.http.get<Family[]>("api/families").toPromise();
  loginDetails = this.http.get<JSON>("api/user-details");
}
