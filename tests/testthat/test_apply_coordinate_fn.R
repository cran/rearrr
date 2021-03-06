library(rearrr)
context("apply_coordinate_fn_()")


test_that("fuzz testing apply_coordinate_fn()", {
  xpectr::set_test_seed(42)

  dim_vecs <- list(
    "a" = c(1, 2, 3, 4),
    "b" = c(5, 6, 7, 8),
    "c" = c(9, 10, 11, 12)
  )

  dim_vecs2 <- dim_vecs
  dim_vecs2[["d"]] <- c(13, 14)

  one_d_fn <- function(...){mean(centroid(...))}

  na_fn <- function(...){
    a <- centroid(...)
    a[[1]] <- NA
    a
  }

  # Generate expectations for 'apply_coordinate_fn'
  # Tip: comment out the gxs_function() call
  # so it is easy to regenerate the tests
  xpectr::set_test_seed(42)
  # xpectr::gxs_function(
  #   fn = apply_coordinate_fn_,
  #   args_values = list(
  #     "dim_vectors" = list(dim_vecs, dim_vecs2, as.data.frame(dim_vecs), c(1, 2, 3), NA),
  #     "coordinates" = list(c(0, 1, 2), c(5, 5, 5), c(0, 0, 0, 0), NA),
  #     "fn" = list(centroid, most_centered, one_d_fn, na_fn, mean, identity, 0, NA),
  #     "num_dims" = list(3, 4, 2,-2, NA),
  #     "coordinate_name" = list("leCoordinate", "origin", 1, NA),
  #     "fn_name" = list("leFunction", 1, NA),
  #     "dim_var_name" = list("dimVar", 1, NA),
  #     "grp_id" = list(1, 2),
  #     "allow_len_one" = list(FALSE)
  #   ),
  #   extra_combinations = list(
  #     list("fn" = one_d_fn, "allow_len_one" = TRUE),
  #     list("fn" = one_d_fn, "dim_var_name" = NULL)
  #   ),
  #   indentation = 2
  # )


  ## Testing 'apply_coordinate_fn_'                                           ####
  ## Initially generated by xpectr
  # Testing different combinations of argument values

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19148 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19148[['warnings']]),
    xpectr::strip(character(0)),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19148[['messages']]),
    xpectr::strip("When 'leFunction' is specified, 'leCoordinate' is ignored.\n"),
    fixed = TRUE)
  # Assigning output
  output_19148 <- xpectr::suppress_mw(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE))
  # Testing class
  expect_equal(
    class(output_19148),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_19148,
    type = "double")
  # Testing values
  expect_equal(
    output_19148,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_19148),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_19148),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_19148)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs2...
  # Changed from baseline: dim_vectors = dim_vecs2
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19370 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs2, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19370[['error']]),
    xpectr::strip("output of 'leFunction' must have same length as 'dimVar' (3) but had length 4."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19370[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = as.data.f...
  # Changed from baseline: dim_vectors = as.data...
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_12861 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = as.data.frame(dim_vecs), coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_12861[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'dim_vectors': Must be of type 'list', not 'data.frame'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_12861[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = c(1, 2, 3...
  # Changed from baseline: dim_vectors = c(1, 2, 3)
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_18304 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = c(1, 2, 3), coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_18304[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'dim_vectors': Must be of type 'list', not 'double'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_18304[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = NA, coord...
  # Changed from baseline: dim_vectors = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_16417 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = NA, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_16417[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'dim_vectors': Must be of type 'list', not 'logical'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_16417[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = NULL, coo...
  # Changed from baseline: dim_vectors = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_15190 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = NULL, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_15190[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'dim_vectors': Must be of type 'list', not 'NULL'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_15190[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinates = c(5, 5, 5)
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_17365 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(5, 5, 5), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_17365[['warnings']]),
    xpectr::strip(character(0)),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_17365[['messages']]),
    xpectr::strip("When 'leFunction' is specified, 'leCoordinate' is ignored.\n"),
    fixed = TRUE)
  # Assigning output
  output_17365 <- xpectr::suppress_mw(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(5, 5, 5), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE))
  # Testing class
  expect_equal(
    class(output_17365),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_17365,
    type = "double")
  # Testing values
  expect_equal(
    output_17365,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_17365),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_17365),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_17365)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinates = c(0, 0,...
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_11346 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 0, 0, 0), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_11346[['warnings']]),
    xpectr::strip(character(0)),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_11346[['messages']]),
    xpectr::strip("When 'leFunction' is specified, 'leCoordinate' is ignored.\n"),
    fixed = TRUE)
  # Assigning output
  output_11346 <- xpectr::suppress_mw(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 0, 0, 0), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE))
  # Testing class
  expect_equal(
    class(output_11346),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_11346,
    type = "double")
  # Testing values
  expect_equal(
    output_11346,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_11346),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_11346),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_11346)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinates = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_16569 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = NA, fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_16569[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'coordinates': Contains missing values (element 1)."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_16569[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinates = NULL
  xpectr::set_test_seed(42)
  # Assigning output
  output_17050 <- apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = NULL, fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE)
  # Testing class
  expect_equal(
    class(output_17050),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_17050,
    type = "double")
  # Testing values
  expect_equal(
    output_17050,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_17050),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_17050),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_17050)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = na_fn
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_14577 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = na_fn, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14577[['error']]),
    xpectr::strip("output of 'leFunction' contained missing values (NAs)."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14577[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = mean
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_17191 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = mean, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_17191[['error']]),
    xpectr::strip("failed to apply 'leFunction': Error in mean.default(a = c(1, 2, 3, 4), b = c(5, 6, 7, 8), c = c(9, 10, : argument \"x\" is missing, with no default\n"),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_17191[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = identity
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19346 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = identity, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19346[['error']]),
    xpectr::strip("failed to apply 'leFunction': Error in (function (x) : unused arguments (a = c(1, 2, 3, 4), b = c(5, 6, 7, 8), c = c(9, 10, 11, 12))\n"),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19346[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = 0
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_12554 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = 0, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_12554[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'fn': Must be a function (or 'NULL'), not 'double'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_12554[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_14622 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = NA, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14622[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'fn': Must be a function (or 'NULL'), not 'logical'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14622[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = most_centered
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19400 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = most_centered, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19400[['warnings']]),
    xpectr::strip(character(0)),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19400[['messages']]),
    xpectr::strip("When 'leFunction' is specified, 'leCoordinate' is ignored.\n"),
    fixed = TRUE)
  # Assigning output
  output_19400 <- xpectr::suppress_mw(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = most_centered, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE))
  # Testing class
  expect_equal(
    class(output_19400),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_19400,
    type = "double")
  # Testing values
  expect_equal(
    output_19400,
    c(a = 2, b = 6, c = 10),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_19400),
    c("a", "b", "c"),
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_19400),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_19400)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = one_d_fn
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19782 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = one_d_fn, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19782[['error']]),
    xpectr::strip("output of 'leFunction' must have same length as 'dimVar' (3) but had length 1."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19782[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn = NULL
  xpectr::set_test_seed(42)
  # Assigning output
  output_11174 <- apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = NULL, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE)
  # Testing class
  expect_equal(
    class(output_11174),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_11174,
    type = "double")
  # Testing values
  expect_equal(
    output_11174,
    c(0, 1, 2),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_11174),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_11174),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_11174)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn, allow_len_one
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_14749 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = one_d_fn, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = TRUE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14749[['error']]),
    xpectr::strip("output of 'leFunction' must have same length as 'dimVar' (3) but had length 1."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14749[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn, dim_var_name
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_15603 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = one_d_fn, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = NULL, grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_15603[['error']]),
    xpectr::strip("output of 'leFunction' must have same length as '' (3) but had length 1."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_15603[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: num_dims = 4
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19040 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 4, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19040[['error']]),
    xpectr::strip("output of 'leFunction' must have same length as 'dimVar' (4) but had length 3."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19040[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: num_dims = 2
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_11387 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 2, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_11387[['error']]),
    xpectr::strip("output of 'leFunction' must have same length as 'dimVar' (2) but had length 3."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_11387[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: num_dims = -2
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19888 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = -2, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19888[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'num_dims': Element 1 is not >= 1."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19888[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: num_dims = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19466 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = NA, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19466[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'num_dims': May not be NA."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19466[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: num_dims = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_10824 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = NULL, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_10824[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'num_dims': Must be of type 'number', not 'NULL'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_10824[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinate_name = "or...
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_15142 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "origin", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_15142[['warnings']]),
    xpectr::strip(character(0)),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_15142[['messages']]),
    xpectr::strip("When 'leFunction' is specified, 'origin' is ignored.\n"),
    fixed = TRUE)
  # Assigning output
  output_15142 <- xpectr::suppress_mw(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "origin", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE))
  # Testing class
  expect_equal(
    class(output_15142),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_15142,
    type = "double")
  # Testing values
  expect_equal(
    output_15142,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_15142),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_15142),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_15142)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinate_name = 1
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_13902 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = 1, fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_13902[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'coordinate_name': Must be of type 'string', not 'double'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_13902[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinate_name = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_19057 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = NA, fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19057[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'coordinate_name': May not be NA."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_19057[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: coordinate_name = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_14469 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = NULL, fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14469[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'coordinate_name': Must be of type 'string', not 'NULL'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_14469[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn_name = 1
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_18360 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = 1, dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_18360[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'fn_name': Must be of type 'string', not 'double'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_18360[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn_name = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_17375 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = NA, dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_17375[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'fn_name': May not be NA."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_17375[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: fn_name = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_18110 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = NULL, dim_var_name = "dimVar", grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_18110[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'fn_name': Must be of type 'string', not 'NULL'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_18110[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: dim_var_name = 1
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_13881 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = 1, grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_13881[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'dim_var_name': Must be of type 'string' (or 'NULL'), not 'double'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_13881[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: dim_var_name = NA
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_16851 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = NA, grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_16851[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'dim_var_name': May not be NA."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_16851[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: dim_var_name = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_10039 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = NULL, grp_id = 1, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_10039[['warnings']]),
    xpectr::strip(character(0)),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_10039[['messages']]),
    xpectr::strip("When 'leFunction' is specified, 'leCoordinate' is ignored.\n"),
    fixed = TRUE)
  # Assigning output
  output_10039 <- xpectr::suppress_mw(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = NULL, grp_id = 1, allow_len_one = FALSE))
  # Testing class
  expect_equal(
    class(output_10039),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_10039,
    type = "double")
  # Testing values
  expect_equal(
    output_10039,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_10039),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_10039),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_10039)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: grp_id = 2
  xpectr::set_test_seed(42)
  # Assigning output
  output_18329 <- apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 2, allow_len_one = FALSE)
  # Testing class
  expect_equal(
    class(output_18329),
    "numeric",
    fixed = TRUE)
  # Testing type
  expect_type(
    output_18329,
    type = "double")
  # Testing values
  expect_equal(
    output_18329,
    c(2.5, 6.5, 10.5),
    tolerance = 1e-4)
  # Testing names
  expect_equal(
    names(output_18329),
    NULL,
    fixed = TRUE)
  # Testing length
  expect_equal(
    length(output_18329),
    3L)
  # Testing sum of element lengths
  expect_equal(
    sum(xpectr::element_lengths(output_18329)),
    3L)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: grp_id = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_10073 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = NULL, allow_len_one = FALSE), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_10073[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'grp_id': Must be of type 'number', not 'NULL'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_10073[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  # Testing apply_coordinate_fn_(dim_vectors = dim_vecs,...
  # Changed from baseline: allow_len_one = NULL
  xpectr::set_test_seed(42)
  # Testing side effects
  # Assigning side effects
  side_effects_12076 <- xpectr::capture_side_effects(apply_coordinate_fn_(dim_vectors = dim_vecs, coordinates = c(0, 1, 2), fn = centroid, num_dims = 3, coordinate_name = "leCoordinate", fn_name = "leFunction", dim_var_name = "dimVar", grp_id = 1, allow_len_one = NULL), reset_seed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_12076[['error']]),
    xpectr::strip("1 assertions failed:\n * Variable 'allow_len_one': Must be of type 'logical flag', not 'NULL'."),
    fixed = TRUE)
  expect_equal(
    xpectr::strip(side_effects_12076[['error_class']]),
    xpectr::strip(c("simpleError", "error", "condition")),
    fixed = TRUE)

  ## Finished testing 'apply_coordinate_fn_'                                  ####
  #

})


