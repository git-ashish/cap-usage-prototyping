const cds = require('@sap/cds')

module.exports = cds.service.impl(async function() {
  

    this.on('getGreeting', async(req) => {
        
        const { user } = req
        const { msg } = req.data

        return `${msg} ${user.id}`
    })

})