Feature: Actualizar el nombre de la mascota y el estatus de la mascota a “sold

  @testQA
  Scenario: Actualizar una mascota existente
    * def getByIdResponse = read('file:build/src/test/java/nttdata/petstore/data/getByIdResponse.json')
    * def idMascota = getByIdResponse.id
    Given url urlBase + '/pet'
    And def updatedData = read('../data/update_pet_data.json')
    And updatedData.id = idMascota
    And request updatedData
    When method PUT
    Then status 200
    And match response.id == idMascota
    And match response.name == updatedData.name
    And match response.status == updatedData.status
    * print 'Response:', response
    * karate.write(response, 'src/test/java/nttdata/petstore/data/updateResponse.json')
    * match response.id == idMascota
