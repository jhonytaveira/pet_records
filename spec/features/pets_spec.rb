require 'rails_helper'

feature 'Pets', js: true do
  scenario 'creates pet' do
    visit '/'

    click_link 'Criar Pet'

    fill_in 'Nome', with: 'Barão'
    fill_in 'Data de Nascimento', with: '10/02/2019'
    fill_in 'Raça', with: 'Fila'
    select 'Cachorro', from: 'Tipo'

    click_button 'Salvar'

    expect(page).to have_content 'Pet criado com sucesso.'

    click_link 'Home'

    expect(page).to have_content 'BARÃO'
    expect(page).to have_content '10/02/2019'
    expect(page).to have_content 'FILA'
    expect(page).to have_content 'CACHORRO'
  end
end
