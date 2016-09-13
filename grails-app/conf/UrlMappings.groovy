class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "page", action:  "homePage")
        "/application"(controller: "page", action:  "applicationPage")
        "500"(view:'/error')
	}
}
