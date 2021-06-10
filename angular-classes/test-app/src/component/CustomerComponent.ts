import { Customer } from '../model/Customer'
import { Component } from "@angular/core"

@Component({
    selector: "customer-ui",
    templateUrl: "../view/customer.html"
})

export class CustomerComponent {
    CurrentCustomer: Customer = new Customer();
}