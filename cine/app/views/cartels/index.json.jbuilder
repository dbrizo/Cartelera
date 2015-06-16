json.array!(@cartels) do |cartel|
  json.extract! cartel, :id, :nombre, :sala, :hora
  json.url cartel_url(cartel, format: :json)
end
