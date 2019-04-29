#' Create a starter config file
#'
#' @param path Destination directory for config.yml
#' @param ... Additional options for `yaml::write_yaml()`
#'
#' @export
#'
#' @examples \donttest{b2c_create_config()}
b2c_create_config = function(path = ".", ...) {
  config = list(
    default = list(
      app_name = "application name",
      client_id = "gu-id",
      client_secret = "some string",
      resource_uri = "https://something",
      redirect_uri = "https://localhost:1410"
    ),
    test = list(),
    production = list()
  )

  yaml::write_yaml(config, file.path(path, "config.yml"), ...)
}
