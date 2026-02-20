
#' Cuenta cantidad de apellidos
#'
#' Cuenta la cantidad de veces que aparece un apellido en un df.
#'
#' @param df Un dataframe.
#'
#' @returns
#' @export
contar_apellidos <- function(df) {
  df |>
    dplyr::group_by(apellidos) |>
    dplyr::summarise(n = dplyr::n(), .groups = "drop") |>
    dplyr::arrange(desc(n))
}
