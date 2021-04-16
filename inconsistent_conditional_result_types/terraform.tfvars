storage_account = {
  paris = {
    name = "paris"
    location = "westeurope"
    identity = {
      type = "SystemAssigned"
      more = {
        field = "test"
      }
    }
  }
  uk = {
    name = "london"
    location = "uksouth"
    identity = {
      type = ""
      more = {}
    }
  }
}