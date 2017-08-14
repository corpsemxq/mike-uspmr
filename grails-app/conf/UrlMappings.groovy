class UrlMappings {

	static mappings = {

        "/mailSend/contactEmailSend"(controller: "mailSend",action:"contactEmailSend", namespace: "v1") {}

        "/mailSend/applicationSend"(controller: "mailSend",action:"applicationSend", namespace: "v1") {}

        "/application/testSend"(controller: "application", namespace: "v1") {
            action = [POST: "testSend"]
        }

        "/"(controller: "page", action:  "homePage")
        "/application"(controller: "page", action:  "applicationPage")
        "/admin"(controller: "page", action:  "adminLoginPage")
        "500"(view:'/error')

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

    }
}
