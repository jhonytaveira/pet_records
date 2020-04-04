require 'rails_helper'

feature 'Home', js: true do
  scenario 'lists pets' do
    create(:medical_record)

    visit '/'

    expect(page).to have_content 'BARÃO'
    expect(page).to have_content I18n.l Date.current
    expect(page).to have_content 'FILA'
    expect(page).to have_content 'CACHORRO'

    click_link 'Prontuários'

    within '.card' do
      expect(page).to have_content 'Sintomas do paciente: Dor de Barriga'
      expect(page).to have_content 'Tratamento aplicado ao paciente: Ingerir antibiótico'
    end
  end
end
