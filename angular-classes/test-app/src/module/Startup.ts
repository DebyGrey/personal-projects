import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { MainModuleLibrary } from './MainModuleLibrary';
 
const platform = platformBrowserDynamic();
platform.bootstrapModule(MainModuleLibrary);
 

export class Startup { }