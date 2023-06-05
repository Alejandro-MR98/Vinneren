json.extract! product, :id, :product_name, :material_number, :stock, :sup_sub_category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
