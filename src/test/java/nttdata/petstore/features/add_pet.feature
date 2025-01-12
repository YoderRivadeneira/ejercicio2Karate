Feature: Añadir una mascota a la tienda

  @testQA
  Scenario: Crear una nueva mascota
    Given url urlBase + '/pet'
    And request read('../data/add_pet_data.json')
    When method POST
    Then status 200
    * print 'Response:', response
    * karate.write(response, 'src/test/java/nttdata/petstore/data/createdPetResponse.json')
    * def idMascota = response.id
    * karate.set('idMascota', idMascota)
    * print 'Archivo creado con el ID:', idMascota
