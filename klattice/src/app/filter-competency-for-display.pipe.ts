import { Pipe, PipeTransform } from '@angular/core';
import { Competency } from './classes/competency';

@Pipe({
  name: 'filterCompetencyForDisplay'
})
export class FilterCompetencyForDisplayPipe implements PipeTransform {

  transform(competencies: Competency[], competencyID: number, titleID: number): any {
    if(!competencies) return [];
    if(!competencyID) return competencies;
    if(!titleID) return competencies;

    return competencies.filter(c => {
      return (c.title_id === titleID) && (c.competency_id === competencyID);
    })
  }

}
