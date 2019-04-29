#' Create an Azure B2C Oauth application
#'
#' @param app_name The (case-sensitve) name of the app as registered on Azure
#' @param client_id The client ID of the app
#' @param client_secret The (optional) client Secret of the app
#' @param redirect_uri The URL that the users should be returned to
#'
#' @return A list of class `oauth_app`
#' @export
#'
#' @examples
#' b2c_app("example", "guid")
b2c_app <- function(app_name,
                    client_id,
                    client_secret = NULL,
                    redirect_uri = "https://localhost:1410") {
  httr::oauth_app(
    appname = app_name,
    key = client_id,
    secret = client_secret,
    redirect_uri = redirect_uri
  )
}
