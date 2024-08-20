module.exports = cds.service.impl( async function(){
    const { EmployeeSet } = this.entities;

    this.before('UPDATE', EmployeeSet, async(req)=>{
        let salary = req.data.salaryAmount;
        if(salary > 10000){
            req.error(500,"not a valid salary");
        }
    })

    this.on('CustomeDelete', EmployeeSet, async(req)=>{
        // DELETE FROM T WHERE KEY = 1;
        // let val = await SELECT.from(EmployeeSet).where({nameFirst:'Sally'});
        // return val;
        // await DELETE.from(EmployeeSet).where({nameFirst:'Sally'})
       // await DELETE.from(EmployeeSet).where({nameFirst:'S_'});​

    //    console.log('deleted')

    })

})