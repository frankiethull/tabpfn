#' download all TabPFN pre-trained model checkpoints 
#'
#' @description 
#' As of 2026-05-05, there are 36 pre-trained models equalling roughly 1.2 GB of storage.
#' Each model is trained on various synthetic & real datasets tailored to classification & regression. 
#' This function routine will require you to sign a one-time license for both 2.5 & 2.6 model varieties. 
#' Downloading all models will take some time, please be patient!
#' 
#' @param cache_dir a file path for the model cache 
#'
#' @returns 
#'
#' @export
#' @examples 
#' \donttest{
#' download_all_models(cache_dir = "~/.cache/tabpfn")
#' }
download_all_models <- function(cache_dir = "~/.cache/tabpfn"){
pathlib <- reticulate::import("pathlib")
tabpfn <- reticulate::import("tabpfn")
cache_dir <- pathlib$Path(path.expand(cache_dir))

  tabpfn$model_loading$download_all_models(to = cache_dir)

}
