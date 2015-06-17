context("kitten")

test_that("kittens can be downloaded", {
  res <- kitten(200, 300, tempfile())
  expect_that(res, is_a("character"))
  expect_that(file.exists(res), is_true())
  expect_true(file.exists(res))
})

test_that("dogs are excluded", {
  expect_that(dog(200, 300, tempfile()), throws_error())
  expect_error(dog(200, 300, tempfile()))
})
