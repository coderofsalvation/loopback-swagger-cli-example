module.exports =
  'rest':
    'swagger': '2.0'
    'info':
      'version': '1.0.0'
      'title': 'Swagger Petstore'
      'description': 'A sample API that uses a petstore as an example to demonstrate features in the swagger-2.0 specification'
      'termsOfService': 'http://swagger.io/terms/'
      'contact': 'name': 'Swagger API Team'
      'license': 'name': 'MIT'
    'host': 'petstore.swagger.io'
    'basePath': '/api'
    'schemes': [ 'http' ]
    'consumes': [ 'application/json' ]
    'produces': [ 'application/json' ]
    'paths': 
      '/owner': 
        'get':
          'description': 'Returns all owners from the system that the user has access to'
          'produces': [ 'application/json' ]
          'responses': '200':
            'description': 'A list of owners.'
            'schema':
              'type': 'array'
              'items': '$ref': '#/definitions/owner'
      '/pet': 
        'get':
          'description': 'Returns all pets from the system that the user has access to'
          'produces': [ 'application/json' ]
          'responses': '200':
            'description': 'A list of pets.'
            'schema':
              'type': 'array'
              'items': '$ref': '#/definitions/pet'
    'definitions': 
      owner:
        'type': 'object'
        'required': [
          'id'
          'name'
        ]
        public:true,
        'properties':
          'id':
            'type': 'integer'
            'format': 'int64'
          'name': 'type': 'string'
          'flop': 'type': 'string'
          'tag': 'type': 'string'
      pet:
        'type': 'object'
        'required': [
          'id'
          'name'
        ]
        public:true,
        relations:
          "owner": 
            type: "belongsTo"
            model: "owner"
            foreignKey: ""
        'properties':
          'id':
            'type': 'integer'
            'format': 'int64'
          'name': 'type': 'string'
          'tag': 'type': 'string'
