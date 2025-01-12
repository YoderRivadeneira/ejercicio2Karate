Feature: Consultar la mascota ingresada previamente (Búsqueda por ID)

  @testQA
  Scenario: Buscar mascota por ID
    * def createdPet = read('file:build/src/test/java/nttdata/petstore/data/createdPetResponse.json')
    Given url urlBase + '/pet/' + createdPet.id
    When method GET
    Then status 200
    And match response.id == createdPet.id
    * print 'Response:', response
    * karate.write(response, 'src/test/java/nttdata/petstore/data/getByIdResponse.json')
    * match response.id == createdPet.id
