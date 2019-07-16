import { Injectable } from '@angular/core';
import { Role } from './classes/role';
import { HttpClient } from '@angular/common/http';
import { Capability } from './classes/capability';
import { Band } from './classes/band';

@Injectable({
  providedIn: 'root'
})
export class DataService {
  constructor(private http: HttpClient) { }

  roles = this.http.get<Role[]>('/api/getroles');
  capabilities = this.http.get<Capability[]>('api/getcapability');
  bands = this.http.get<Band[]>('api/getbands');
  families = this.http.get<family[]>('api/getfamilies');
}
