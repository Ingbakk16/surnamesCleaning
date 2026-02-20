#' Separa la columna apellido
#'
#' Separa la columna apellido de un dataframe.
#'
#'
#'
#' @param data Un dataframe.
#' @param col Opcional, especificacion de columna con tidyselect.
#'
#' @returns Un dataframe con solo la columna apellido.
#' @examples
#' # separar_apellido(clientes)
#'
#'
#'
#'
#' @export
separar_apellido <- function(data, col = NULL) {

if (!rlang::quo_is_null(rlang::enquo(col))) {
  return(dplyr::select(data, {{ col }}))
}


pattern <- "(last.?name|surname|apellido|apellidos)"

match_col <- names(data)[
  stringr::str_detect(
    stringr::str_to_lower(names(data)),
    pattern
  )
]

if (length(match_col) == 0) {
  stop("No surname/lastname column detected.", call. = FALSE)
}

dplyr::select(data, dplyr::all_of(match_col[1]))
}
