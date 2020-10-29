import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-first',
  templateUrl: './first.component.html',
  styleUrls: ['./first.component.css']
})
export class FirstComponent implements OnInit {

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
