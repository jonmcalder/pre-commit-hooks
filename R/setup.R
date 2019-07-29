#' Copy a default pre-commit-config.yaml in the root of your project
#' @param hooks Ignored.
#' @param path_root The path to the root directory of your project.
#' @export
use_precommit_hook_config <- function(hooks = NULL, path_root = here::here()) {
  fs::file_copy(
    system.file(".pre-commit-config.yaml", package = "precommithooks"),
    path_root
  )
}

#' Open pre-commit related files
#'
#' @details
#' * `open_config()`: opens the pre-commit config file.
#' * `open_wordlist()`: opens the the WORDLIST file for the check-spelling hook.
#' @export
open_config <- function() {
  rstudioapi::navigateToFile(".pre-commit-config.yaml")
}

#' @export
open_wordlist <- function() {
  rstudioapi::navigateToFile("inst/WORDLIST")
}
