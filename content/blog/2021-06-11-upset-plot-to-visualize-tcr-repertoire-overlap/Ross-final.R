library(UpSetR)
library(data.table)
generate_rows <- function(args) {
  n <- args[["n"]]
  sets <- args[["sets"]]
  data.table(
    BGI = rep(as.integer("BGI" %in% sets), n),
    `5'RACE+UMI` = rep(as.integer("5'RACE+UMI" %in% sets), n),
    iRepertoire = rep(as.integer("iRepertoire" %in% sets), n),
    `5'RACE` = rep(as.integer("5'RACE" %in% sets), n),
    freq = rbeta(n, 2, n)
  )
}

fig3a <- list(
  list(n = 1265, sets = c("BGI")),
  list(n = 554, sets = c("5'RACE+UMI")),
  list(n = 1319, sets = c("iRepertoire")),
  list(n = 559, sets = c("5'RACE")),
  list(n = 47, sets = c("BGI", "5'RACE+UMI")),
  list(n = 39, sets = c("5'RACE+UMI", "iRepertoire")),
  list(n = 43, sets = c("iRepertoire", "5'RACE")),
  list(n = 27, sets = c("BGI", "5'RACE+UMI", "iRepertoire")),
  list(n = 89, sets = c("5'RACE+UMI", "iRepertoire", "5'RACE")),
  list(n = 170, sets = c("BGI", "5'RACE+UMI", "iRepertoire", "5'RACE")),
  list(n = 153, sets = c("BGI", "iRepertoire")),
  list(n = 19, sets = c("BGI", "iRepertoire", "5'RACE")),
  list(n = 132, sets = c("BGI", "5'RACE+UMI", "5'RACE")),
  list(n = 801, sets = c("5'RACE+UMI", "5'RACE")),
  list(n = 46, sets = c("BGI", "5'RACE"))
)

dt <- rbindlist(lapply(fig3a, generate_rows))