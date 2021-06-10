import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {FormsModule} from "@angular/forms"
import { CustomerComponent } from '../component/CustomerComponent';
@NgModule({
    imports: [BrowserModule,
FormsModule], declarations: [CustomerComponent],
bootstrap: [CustomerComponent] })
export class MainModuleLibrary { }