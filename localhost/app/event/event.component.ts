import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-event',
  templateUrl: './event.component.html',
  styleUrls: ['./event.component.css']
})
export class EventComponent implements OnInit {

  topic() {
    alert("Its Angular 9 topic going on...");
  }
  timing() {
    alert("Timing from 9 to 6...");
  }
  show() {
    alert("Welcome to Angular...");
  }
  constructor() { }

  ngOnInit() {
  }

}
