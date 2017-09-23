import spark.Request
import spark.Response
import spark.Route

class EchoController: Route {
    override fun handle(request: Request?, response: Response?): Any {
        return "hello"
    }

}