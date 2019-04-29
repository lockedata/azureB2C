#' The Azure AD B2C endpoint needed for authentication
#'
#' @param tenant The Azure AD B2C tenant
#' @param flow The specific authentication workflow the user needs to route through
#' @param ... Additional `httr::oauth_endpoint()` parameters
#'
#' @return A list of relevent endpoints
#' @export
#'
#' @examples b2c_endpoint("itsalocke", "login")
b2c_endpoint = function(tenant,
                        flow) {
  base = glue::glue(
    "https://{tenant}.b2clogin.com/tfp/{tenant}.onmicrosoft.com/{flow}/oauth2/v2.0"
  )
  httr::oauth_endpoint(authorize = "authorize",
                       access = "token",
                       base_url = base)
}
