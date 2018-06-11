package domain.app

import domain.State

import javax.validation.constraints.NotNull

class BusinessInfo {

    @NotNull
    String businessName

    String businessAddress

    String businessCity

    @NotNull
    State businessState

    @NotNull
    String businessZip

    @NotNull
    String businessPhone

    List<ServiceType> services = []

    List<String> otherServices = []

}
