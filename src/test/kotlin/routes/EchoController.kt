package routes

import main
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import spark.route.Routes

class EchoController {
    @Before
    fun setup() {
        main(emptyArray())
    }

    @Test
    fun shouldReturnHello() {

    }

}