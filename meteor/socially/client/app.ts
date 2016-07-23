import 'reflect-metadata';
import { Component } from '@angular/core';
import { bootstrap } from '@angular/platform-browser-dynamic';
 
import template from './app.html';
 
@Component({
  selector: 'app',
  template
  //templateUrl: 'client/app.html'
})
class Socially { }
 
bootstrap(Socially);