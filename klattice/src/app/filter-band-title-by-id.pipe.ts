import { Pipe, PipeTransform } from '@angular/core';
import { BandTitle } from './classes/band-title';


@Pipe({
  name: 'filterBandTitleById'
})
export class FilterBandTitleByIdPipe implements PipeTransform {

  transform(bandtitles: BandTitle[], filterID: number): any {
    if(!bandtitles) return [];
    if(!filterID) return bandtitles;

    return bandtitles.filter(bt => {
      return bt.band_id === filterID;
    })
  }

}
