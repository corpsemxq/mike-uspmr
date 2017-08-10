class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/mailSend/contactEmailSend"(controller: "mailSend",action:"contactEmailSend", namespace: "v1") {}

        "/mailSend/applicationSend"(controller: "mailSend",action:"applicationSend", namespace: "v1") {}



        "/test/testSend"(controller: "application",action:"testSend", namespace: "v1") {}


        "/"(controller: "page", action:  "homePage")
        "/application"(controller: "page", action:  "applicationPage")
        "500"(view:'/error')
	}
}
