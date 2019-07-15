import { Injectable } from '@angular/core';
import { Role } from './roles/role';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  constructor(private http: HttpClient) 
  { }

  roles = this.http.get<Role[]>('/api/getroles');
}
