Feature: Consultar la mascota modificada por estatus (Búsqueda por estatus)

  @testQA
  Scenario: Buscar mascota por status
    * def getByIdResponse = read('file:build/src/test/java/nttdata/petstore/data/getByIdResponse.json')
    * def idMascota = getByIdResponse.id

    Given url urlBase + '/pet/findByStatus?status=sold'
    When method GET
    Then status 200
    * print 'Response:', response
    * karate.write(response, 'src/test/java/nttdata/petstore/data/findPetByStatusResponse.json')
    * def responseSize = response.length
    * assert responseSize > 0
    * def foundItem = response.find(x => x.id == idMascota)
    * if (!foundItem) karate.fail('ID ' + idMascota + ' no encontrado. Respuesta completa: ' + response)
    * assert foundItem != null
    * print 'ID encontrado:', idMascota