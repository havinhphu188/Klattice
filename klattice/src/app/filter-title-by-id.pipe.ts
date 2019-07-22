import { Pipe, PipeTransform } from '@angular/core';
import { Title } from './classes/title';

@Pipe({
  name: 'filterTitleById'
})
export class FilterTitleByIdPipe implements PipeTransform {

  transform(titles: Title[], filterID: number): any {
    if(!titles) return [];
    if(!filterID) return titles;

    return titles.filter(t => {
      return t.title_id === filterID
    })
  }

}
