# Overview
Tests on HCL

## Inconsistent conditional result types error
```
for_each = var.deploy_storage_account != false ? var.storage_account : []
```
with `var.storage`
```
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
  }
}
```

Note that this case works
```
storage_account = {
  paris = {
    name = "paris"
    location = "westeurope"
    identity = {
      type = "SystemAssigned"
    }
  }
  uk = {
    name = "london"
    location = "uksouth"
    identity = {}
  }
}
```