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
