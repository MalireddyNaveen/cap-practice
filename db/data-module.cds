namespace employee.db;

using {
    cuid,
    managed
} from '@sap/cds/common';
using {resuableTypes as types} from './resuable-types';

@assert.unique: {
    email: [email],
    phone: [phone]
}
entity Employee : cuid, managed {

    fName           : String;
    lName           : String;
    gender          : String;
    DOB             : Date;
    age:Integer;
    contractStarted : Date;
    email           : types.Email not null;
    phone           : types.PhoneNumber not null;
    address         : Composition of many Address
                          on address.employee = $self;
    department      : Association to Department;
    salary          : Composition of Salary;
    designation     : Association to Designation
}

entity Address : cuid {
    city     : String not null;
    address  : String not null;
    pincode  : Integer not null;
    street   : String;
    landmark : String;
    employee : Association to Employee
}

entity Department : cuid {
    name        : String;
    description : String;
    headCount   : Integer;
}

entity Salary : cuid {
    costToCompany : types.Ammount;
    employeePf    : types.Ammount;
    employerPf    : types.Ammount;
    nps           : types.Ammount;
    vpf           : types.Ammount;
}

entity Designation : cuid {
    name        : String;
    description : String;
    level       : String;
}





