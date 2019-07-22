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
    if (name === "Executive") return "#5C068C";
    if (name === "Leadership Community") return "#5C068C";
    if (name === "Principal") return "#5C068C";
    if (name === "Manager") return "#00558C";
    if (name === "Consultant") return "#00558C";
    if (name === "SeniorAssociate") return "#00558C";
    if (name === "Associate") return "#009639";
    if (name === "Trainee") return "#009639";
    if (name === "Apprentice") return "#009639";
  }

  setModalHeaderColour() {
    if (this.bandID === 1) return "#5C068C";
    if (this.bandID === 2) return "#5C068C";
    if (this.bandID === 3) return "#5C068C";
    if (this.bandID === 4) return "#00558C";
    if (this.bandID === 5) return "#00558C";
    if (this.bandID === 6) return "#00558C";
    if (this.bandID === 7) return "#009639";
    if (this.bandID === 8) return "#009639";
    if (this.bandID === 9) return "#009639";
  }
}
