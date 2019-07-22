import { Pipe, PipeTransform } from "@angular/core";
import { Capability } from "./classes/capability";

@Pipe({
  name: "capabilityFilter"
})
export class CapabilityFilterPipe implements PipeTransform {
  transform(capabilities: Capability[], familyID: number): Capability[] {
    if (familyID === 0) return capabilities;
    if (!capabilities) return [];
    if (!familyID) return capabilities;

    return capabilities.filter(value => {
      return value.family_id === familyID;
    });
  }
}
