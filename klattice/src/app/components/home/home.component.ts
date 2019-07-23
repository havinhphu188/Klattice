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

  data: DataService;

  ngOnInit() {
    this.sub = this.route.data.subscribe(x => {
      this.capabilityTitle = x["capabilityTitle"];
      this.familyID = parseInt(x["familyID"]);
    });
  }

  openModal(content, id, name, summary, link) {
    this.roleID = id;
    this.roleName = name;
    this.roleSummary = summary;
    this.roleLink = link;
    this.modalService.open(content, {
      size: "lg",
      ariaLabelledBy: "modal-basic-title"
    });
  }

  openCompModal(competencyModal, band_id) {
    this.bandID = band_id;
    this.modalService.open(competencyModal, {
      size: "lg",
      ariaLabelledBy: "modal-basic-title"
    });
  }
}
