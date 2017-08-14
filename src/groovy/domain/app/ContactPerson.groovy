package domain.app

import javax.validation.constraints.NotNull


class ContactPerson {
    @NotNull
    String firstName

    @NotNull
    String lastName

    @NotNull
    String email

    @NotNull
    String mobile

    String businessName

}
