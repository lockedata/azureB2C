#' Get B2C config based on environment using the {config} package
#'
#' @param path Directory where config.yml is kept
#' @param config The name of the configuration needed
#' @param ... Additional parameters for `config::get()`
#'
#' @return Config list object
#' @export
#'
#' @examples
#' \donttest{
#' b2c_get_config()
#' }
b2c_get_config <- function(path = ".",
                           config = Sys.getenv("R_CONFIG_ACTIVE", "default"),
                           ...) {
  config::get(
    config = config,
    file = file.path(path, "config.yml"),
    ...
  )
}
