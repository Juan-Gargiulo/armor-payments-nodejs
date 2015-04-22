Resource = require('./resource')


class Shipments extends Resource

  create: (data) ->
    headers = @authenticator.secureHeaders 'post', @uri()
    @request 'post', { uri: @uri(), headers: headers, body: JSON.stringify data }


module.exports = Shipments
