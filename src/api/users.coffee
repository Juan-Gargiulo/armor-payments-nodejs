Authentications = require('./authentications')
Resource = require('./resource')


class Users extends Resource

  update: (userId, data) ->
    headers = @authenticator.secureHeaders 'post', @uri(userId)
    @request 'post', { uri: @uri(userId), headers: headers, body: JSON.stringify(data) }

  authentications: (userId) ->
    new Authentications(@host, @authenticator, @uri(userId))


module.exports = Users
