require 'rails_helper'

feature 'MedicalRecords', js: true do
  scenario 'creates medical records' do
    create(:pet)

    visit '/'

    click_link 'Prontuário'

    select 'Barão', from: 'Pet'
    fill_in 'Sintomas do paciente', with: 'Dor de Barriga'
    fill_in 'Tratamento aplicado ao paciente', with: 'Ingerir antibiótico'

    click_button 'Salvar'

    expect(page).to have_content 'Prontuário criado com sucesso.'

    click_link 'Listar Prontuários'

    expect(page).to have_content 'DOR DE BARRIGA'
    expect(page).to have_content 'INGERIR ANTIBIÓTICO'
  end

  scenario 'list medical records' do
    create(:medical_record)

    visit '/'

    click_link 'Listar Prontuários'

    expect(page).to have_content 'DOR DE BARRIGA'
    expect(page).to have_content 'INGERIR ANTIBIÓTICO'
  end

  scenario 'destroy medical records' do
    create(:medical_record)

    visit '/'

    click_link 'Listar Prontuários'

    accept_alert do
      click_link 'Apagar'
    end

    expect(page).to have_content 'Prontuário apagado com sucesso.'
  end
end
