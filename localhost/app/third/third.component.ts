import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-third',
  templateUrl: './third.component.html',
  styleUrls: ['./third.component.css']
})
export class ThirdComponent implements OnInit {

  trainer : string;
  company : string;
  topic : string;
  constructor() {
    this.trainer = localStorage.getItem("trainer");
    this.company = localStorage.getItem("company");
    this.topic = localStorage.getItem("topic");
   }

  ngOnInit() {
  }

}
