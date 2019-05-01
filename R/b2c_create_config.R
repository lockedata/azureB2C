#' Create a starter config file
#'
#' @param path Destination directory for config.yml
#' @param ... Additional options for `yaml::write_yaml()`
#'
#' @export
#'
#' @examples
#' \donttest{
#' b2c_create_config()
#' }
b2c_create_config <- function(path = ".", ...) {
  config <- list(
    default = list(
      app_name = "application name",
      client_id = "gu-id",
      client_secret = NULL,
      resource_uri = "https://jwt.ms",
      redirect_uri = "https://jwt.ms",
      scopes = "read",
      tenant = "b2c tenant",
      flow = "case sensitive"
    ),
    test = list(),
    production = list()
  )

  yaml::write_yaml(config, file.path(path, "config.yml"), ...)
}
