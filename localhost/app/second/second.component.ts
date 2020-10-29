import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-second',
  templateUrl: './second.component.html',
  styleUrls: ['./second.component.css']
})
export class SecondComponent implements OnInit {

  trainer : string;
  topic : string;
  constructor() {
    this.trainer = "Prasanna...";
    this.topic = "Angular 8";
   }

  ngOnInit() {
  }

}
