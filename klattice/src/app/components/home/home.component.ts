
import { Component, OnInit } from "@angular/core";
import { DataService } from "../../data.service";
import { NgbModal } from "@ng-bootstrap/ng-bootstrap";
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: "app-home",
  templateUrl: "./home.component.html",
  styleUrls: ["./home.component.css"]
})
export class HomeComponent implements OnInit {

  constructor(
    dataService: DataService,
    private modalService: NgbModal,
    private route: ActivatedRoute
  ) {
    this.data = dataService;
  }

  title = "Career Lattice";

  sub: object;
  capabilityTitle: string;
  familyID: number;

  roleID = -1;
  roleName = "";
  roleSummary = "";
  roleLink = "";

  bandID = -1;
  bandName: string;

  EXECUTIVE_BAND = "Executive";
  LEADERSHIP_COMMUNITY_BAND = "Leadership Community";
  PRINCIPAL_BAND = "Principal";
  MANAGER_BAND = "Manager";
  CONSULTANT_BAND = "Consultant";
  SENIOR_ASSOCIATE_BAND = "SeniorAssociate";
  ASSOCIATE_BAND = "Associate";
  TRAINEE_BAND = "Trainee";
  APPRENTICE_BAND = "Apprentice";

  EXECUTIVE_BAND_ID = 1;
  LEADERSHIP_COMMUNITY_BAND_ID = 2;
  PRINCIPAL_BAND_ID = 3;
  MANAGER_BAND_ID = 4;
  CONSULTANT_BAND_ID = 5;
  SENIOR_ASSOCIATE_BAND_ID = 6;
  ASSOCIATE_BAND_ID = 7;
  TRAINEE_BAND_ID = 8;
  APPRENTICE_BAND_ID = 9;

  PURPLE_KAINOS_BRAND_COLOUR = "#5C068C";
  BLUE_KAINOS_BRAND_COLOUR = "#5C068C";
  GREEN_KAINOS_BRAND_COLOUR = "#5C068C";
  DEFAULT_COLOUR = "#777";

  data: DataService;


  ngOnInit() {
    this.sub = this.route.data.subscribe(x => {
      this.capabilityTitle = x["capabilityTitle"];
      this.familyID = parseInt(x["familyID"]);
    });
  }

  openModal(content, id, name, summary, link, band_id) {
    this.roleID = id;
    this.roleName = name;
    this.roleSummary = summary;
    this.roleLink = link;
    this.bandID = band_id;
    this.modalService.open(content, {
      size: "lg",
      ariaLabelledBy: "modal-basic-title"
    });
  }

  openCompModal(competencyModal, band_id, name) {
    this.bandID = band_id;
    this.bandName = name;
    this.modalService.open(competencyModal, {
      size: "lg",
      ariaLabelledBy: "modal-basic-title"
    });
  }

  setBandColour(name) {
    switch (name) {
      case this.EXECUTIVE_BAND:
      case this.LEADERSHIP_COMMUNITY_BAND:
      case this.PRINCIPAL_BAND:
        return this.PURPLE_KAINOS_BRAND_COLOUR;
      case this.MANAGER_BAND:
      case this.CONSULTANT_BAND:
      case this.SENIOR_ASSOCIATE_BAND:
        return this.BLUE_KAINOS_BRAND_COLOUR;
      case this.ASSOCIATE_BAND:
      case this.TRAINEE_BAND:
      case this.APPRENTICE_BAND:
        return this.GREEN_KAINOS_BRAND_COLOUR;
      default:
        return this.DEFAULT_COLOUR;
    }
  }

  setModalHeaderColour() {
    switch (this.bandID) {
      case this.EXECUTIVE_BAND_ID:
      case this.LEADERSHIP_COMMUNITY_BAND_ID:
      case this.PRINCIPAL_BAND_ID:
        return this.PURPLE_KAINOS_BRAND_COLOUR;
      case this.MANAGER_BAND_ID:
      case this.CONSULTANT_BAND_ID:
      case this.SENIOR_ASSOCIATE_BAND_ID:
        return this.BLUE_KAINOS_BRAND_COLOUR;
      case this.ASSOCIATE_BAND_ID:
      case this.TRAINEE_BAND_ID:
      case this.APPRENTICE_BAND_ID:
        return this.GREEN_KAINOS_BRAND_COLOUR;
      default:
        return this.DEFAULT_COLOUR;
    }
  }
}
