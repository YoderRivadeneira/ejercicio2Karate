Feature: Limpiar los registros insertados durante el test

  @testQA
  Scenario: Eliminar la mascota creada creada para los tests

    * def createdPet = read('file:build/src/test/java/nttdata/petstore/data/createdPetResponse.json')
    * def idMascota = createdPet.id

    Given url urlBase + '/pet/' + idMascota
    When method DELETE
    Then status 200 || status 404

    * print 'Mascota con ID ' + idMascota + ' eliminada correctamente o no existe.'

    * karate.write(response, 'src/test/java/nttdata/petstore/data/cleantestResponse.json')
