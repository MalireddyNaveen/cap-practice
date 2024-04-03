const cds=require("@sap/cds");
const {onBeforeEmployee,onAfterEmployee}=require("./src/controller/employeeOperations")
module.exports=cds.service.impl(async (srv)=>{
    srv.before("CREATE","Employee",onBeforeEmployee),
    srv.after("READ","Employee", onAfterEmployee)
})

