package mike.uspmr

import domain.user.User

class UserController {

    def index() {}

    def grailsApplication

    UserService userService

    def login() {
        String username = params.username.toString()
        String password = params.password.toString()
        User user = userService.findUserByUsername(username)

        if (!user) {
            log.error "Can not find user Please check"
            render(view: '/user/adminLoginPage', model: [usernameErrorMessage: "Can not find user Please check"])

        } else if (!userService.matchPasscode(password, user.encodedPassword)) {
            log.error "Incorrect password"
            render(view: '/user/adminLoginPage', model: [passwordErrorMessage : "Incorrect password"])
        } else {
            log.info "Log in!"
            def homeConfig =  grailsApplication.config
            render(view: '/pmrIndex', model: [test: "test", homeConfig : homeConfig ])

        }
    }
}
