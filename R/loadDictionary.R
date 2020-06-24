#' Load the dictionary into the global environment
#'
#'
#' @return NULL
#'
#' @examples
#'
#' loadDictionary()#'
#' define("food")
#'
#' @export


loadDictionary <- function() {
  pkgpath <- system.file("fullB.ob.dic", package = "r2dictionary")
  load(pkgpath, envir = .GlobalEnv)
  orig <- LETTERS
  apnd <- ".dict76r56obi64."
  newpo <- paste0(apnd, orig)
  lapply(newpo, function(l) {
    eval(parse(text = paste0('assign("', l, '",.finalcomb1[ toupper(substr(.finalcomb1$name,1,1))  == "', gsub(apnd,"",l), '",],envir = .GlobalEnv)')))
  })
  eval(parse(text = paste0('assign(".loadedDictionary",TRUE,envir = .GlobalEnv);rm(.finalcomb1, envir = .GlobalEnv)')))

}

