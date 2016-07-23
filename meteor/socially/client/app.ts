import 'reflect-metadata';
import { Component } from '@angular/core';
import { bootstrap } from '@angular/platform-browser-dynamic';

//import template from './app.html';

@Component({
	selector: 'app',
	//template
	template: require('./app.html').default
	//templateUrl: 'client/app.html'
})
class Socially {
	constructor() {
		let a: any = {};
		let c = a.b.c;
	}
}

bootstrap(Socially);