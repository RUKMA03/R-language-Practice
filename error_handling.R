# Error Handling in R

# Try-Catch block
safe_divide <- function(a, b) {
  tryCatch({
    result <- a / b
    return(result)
  }, warning = function(w) {
    print("Warning: Division might have issues.")
    return(NA)
  }, error = function(e) {
    print("Error: Division by zero not allowed.")
    return(NA)
  })
}

print(safe_divide(10, 2))
print(safe_divide(10, 0))
