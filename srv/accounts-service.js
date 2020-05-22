const cds = require('@sap/cds')

module.exports = cds.service.impl(async function () {
    
    const UsersService = await cds.connect.to('UsersService')

    this.on('generateMessages', async(req) => {
        const { user } = req

        const sGreeting = await UsersService.getGreeting('Hello')
        
        return `${sGreeting} – No messages for today.`
    })

})