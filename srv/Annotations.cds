using {EmployeeService} from './employee-service'; 
annotate EmployeeService.Salary with @Capabilities : { 
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:true
    },
 } ;

annotate EmployeeService.Employee with @Capabilities : { 
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:true
    },
    UpdateRestrictions : {
        $Type : 'Capabilities.UpdateRestrictionsType',
        Updatable:true
    },
    ReadRestrictions : {
        $Type : 'Capabilities.ReadRestrictionsType',
        Readable:true
    },
    DeleteRestrictions : {
        $Type : 'Capabilities.DeleteRestrictionsType',
        Deletable:false
    },

 };

annotate EmployeeService.Address with @Capabilities : { 
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:true
    },
    UpdateRestrictions : {
        $Type : 'Capabilities.UpdateRestrictionsType',
        Updatable:true
    },
    ReadRestrictions : {
        $Type : 'Capabilities.ReadRestrictionsType',
        Readable:true
    },
 } ;


annotate EmployeeService.Designation with @Capabilities : { 
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:false
    },
    ReadRestrictions : {
        $Type : 'Capabilities.ReadRestrictionsType',
        Readable:true
    },
    UpdateRestrictions : {
        $Type : 'Capabilities.UpdateRestrictionsType',
        Updatable:false
    },
 };






