FactoryBot.define do
  factory :pet do
    name { 'Barão' }
    birth_date { Date.current }
    breed { 'Fila' }
    kind { :dog }
  end
end
