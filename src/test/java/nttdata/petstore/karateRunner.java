package nttdata.petstore;

import com.intuit.karate.junit5.Karate;

class karateRunner {

    @Karate.Test
    Karate testPetStore() {

        return Karate.run(
                "src/test/java/nttdata/petstore/features/add_pet.feature",
                "src/test/java/nttdata/petstore/features/get_pet_by_id.feature",
                "src/test/java/nttdata/petstore/features/update_pet.feature",
                "src/test/java/nttdata/petstore/features/find_pet_by_status.feature",
                "src/test/java/nttdata/petstore/features/cleanTests/cleanTest.feature"
        ) .tags("@testQA");
        //return Karate.run("src/test/java/nttdata/petstore/features")
        //      .tags("@testQA");


    }
}
