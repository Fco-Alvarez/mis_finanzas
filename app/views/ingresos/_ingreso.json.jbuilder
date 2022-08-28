json.extract! ingreso, :id, :fecha, :monto, :glosa, :categoriaingreso_id, :created_at, :updated_at
json.url ingreso_url(ingreso, format: :json)
