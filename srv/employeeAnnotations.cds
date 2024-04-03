using {EmployeeService} from './employee-service' ;
annotate EmployeeService.Employee with{
    fName @title:'{i18n>fName}';
    lName @title:'{i18n>lName}';
   DOB @title:'{i18n>dob}';
   gender @title:'{i18n>gender}'
}
