for (id in ids) {
  quarto::quarto_render(
    input = "report.qmd",
    output_file = paste0("test_", id, "_report.html"),
    execute_params = list(vol_id = id, site_id = "Test0")
  )
}