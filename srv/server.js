const cds = require("@sap/cds");
const cov2ap = require("@sap/cds-odata-v2-adapter-proxy");

//this event will trigger when the programm is loading,when ever the bootstarp event triggers it executes the call back function
//app=express()
//to ues a middlerware express provides use() method
cds.on("bootstrap", (app) => app.use(cov2ap()));
module.exports = cds.server;


