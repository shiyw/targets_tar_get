tar_use <- \(...) {}

tar_get <- function(basename, ...) {
  env <- parent.frame()
  get(paste(basename, ..., sep = "_"), envir = env)
}

# factory version
tar_get2 <- function(basename) {
  env <- parent.frame()
  function(...) {
    get(paste(basename, ..., sep = "_"), envir = env)
  }
}