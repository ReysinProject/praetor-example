require "praetor"

module PraetorExample
  VERSION = "0.1.0"

  # Example Product model
  class Product < Validation::Models::BaseModel
    string_field name, required: true
    email_field email, required: true
  end

  # Usage examples
  begin
    # Create a new product with valid data
    product = Product.new(
      name: "Example Product",
      email: "test@test.fr"
    )

    puts "Product created successfully: #{product}"

  rescue e : Validation::ValidationError
    puts "Validation error: #{e.message}"
  end
end