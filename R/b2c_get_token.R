#' Acquire a token
#'
#' @param config B2C config, usually retrieved with `b2c_get_config()`
#' @param ... Other arguments passed to `httr::oauth2.0_token()`
#'
#' @return a httr oauth2.0 token
#' @export
#'
#' @examples
#' \donttest{
#' b2c_get_token()
#' }
b2c_get_token <- function(config = list(
                            app_name = "lddemo",
                            client_id = "0e490a89-b382-4d3b-9f6b-60630dfd624b",
                            client_secret = NULL,
                            resource_uri = "https://jwt.ms",
                            redirect_uri = "https://jwt.ms",
                            scopes = "openid",
                            tenant = "nightingalehq",
                            flow = "B2C_1_SignUpAndSignIn"
                          ),
                          ...) {
  end <- b2c_endpoint(config$tenant, config$flow)
  app <- b2c_app(
    config$app_name,
    config$client_id,
    config$client_secret,
    config$redirect_uri
  )
  token <- httr::oauth2.0_token(
    end, app,
    user_params = list(resource = config$resource_uri),
    scope = config$scopes,
    ...
  )
  return(token)
}
