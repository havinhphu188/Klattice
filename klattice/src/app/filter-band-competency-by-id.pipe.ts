import { Pipe, PipeTransform } from '@angular/core';
import { BandCompetency } from './classes/band-competency';

@Pipe({
  name: 'filterBandCompetencyById'
})
export class FilterBandCompetencyByIdPipe implements PipeTransform {

  transform(bandCompetencies: BandCompetency[], filterID: number): any {
    if(!bandCompetencies) return [];
    if(!filterID) return bandCompetencies;

    return bandCompetencies.filter(bc => {
      return bc.band_id === filterID;
    })
  }

}
