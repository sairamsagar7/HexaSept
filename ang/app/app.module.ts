import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FirstComponent } from './first/first.component';
import { SecondComponent } from './second/second.component';
import { ThirdComponent } from './third/third.component';
import { EventComponent } from './event/event.component';
import { CalcComponent } from './calc/calc.component';
import { LoginComponent } from './login/login.component';
import { EmployComponent } from './employ/employ.component';
import { EmployDropDownComponent } from './employ-drop-down/employ-drop-down.component';
import { MenuComponent } from './menu/menu.component';

// const routes : Routes = [
//   {path : 'first', component : FirstComponent},
//   {path : 'second', component : SecondComponent},
//   {path : 'third', component : ThirdComponent},
//   {path : 'calc', component : CalcComponent},
//   {path : 'employ', component : EmployComponent},
//   {path : 'event', component : EventComponent},
//   {path : 'employDropDown', component : EmployDropDownComponent},
//   {path : 'menu', component : MenuComponent},
//   {path : '', component : LoginComponent},
// ]
const routes : Routes = [
  {path : 'menu', component : MenuComponent,
  children :
  [
    {path:'first', component:FirstComponent, outlet:'data'},
    {path:'second', component:SecondComponent, outlet:'data'},
    {path:'calc', component:CalcComponent, outlet:'data'},
    {path:'third', component:ThirdComponent, outlet:'data'},
    {path:'employ', component:EmployComponent, outlet:'data'},
    {path:'event', component:EventComponent, outlet:'data'},
    {path:'employDropDown', component:EmployDropDownComponent, outlet:'data'},
  ]
},
  {path : '', component : LoginComponent},
]
@NgModule({
  declarations: [
    AppComponent,
    FirstComponent,
    SecondComponent,
    ThirdComponent,
    EventComponent,
    CalcComponent,
    LoginComponent,
    EmployComponent,
    EmployDropDownComponent,
    MenuComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    RouterModule.forRoot(routes),
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
