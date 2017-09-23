import spark.kotlin.Http
import spark.kotlin.ignite

val http: Http = ignite()

fun main(args: Array<String>) {
    http.get("hello") {
        EchoController().handle(request, response)
    }
}