import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  userName : string;
  passCode : string;

  login() {
    if (this.userName=="Maaz" && this.passCode=="Maaz") {
      // alert("Correct Credentials...");
      localStorage.setItem("trainer","Prasanna");
      localStorage.setItem("company","Hexaware");
      localStorage.setItem("topic","Angular 11");
      this._router.navigate(['/menu']);
    } else {
      alert("Invalid Credentials...");
    }
  }
  constructor(private _router : Router) { }

  ngOnInit() {
  }

}
