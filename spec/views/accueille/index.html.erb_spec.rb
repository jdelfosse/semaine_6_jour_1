require 'rails_helper'
require 'capybara/rspec'

RSpec.describe "accueille/index", type: :view do

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    visit '/'
    expect(find('#aza')).to have_content('clique ici pour voir les membre')      
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(find('#10')).to have_content('Compte bien créé, vous êtes maintenant connecté')      
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(1)
    expect(find('#10')).to have_content('cette email exist deja ou')       
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/'
    expect(find('#aaz')).to have_content('créer un compte')     
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('cette email exist deja ou')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bobtest.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('cette email exist deja ou')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bobtest'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('cette email exist deja ou')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: ''
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('cette email exist deja ou')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: ''
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('erreur de creation')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: ''
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('erreur de creation')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: ''
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(0)
    expect(find('#10')).to have_content('erreur de creation')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: ''
    click_button '5'
    expect(User.count).to eq(0)      
    expect(find('#10')).to have_content('erreur de creation')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    click_button '14'    
	find('#11').click
    expect(find('#10')).to have_content('vous êtes bien deconnectés')    
  end
       
  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'

    click_button '14'    
	find('#11').click

    click_button '14'      
    fill_in '13', with: 'Bob@test.com'
    fill_in '12', with: 'Bob'
    click_button '11'
    expect(find('#10')).to have_content('Vous êtes maintenant connecté ')    
  end   

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    expect(User.count).to eq(1)    
    expect(find('#10')).to have_content('Compte bien créé, vous êtes maintenant connecté')    
  end
       
  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'

    click_button '14'    
	find('#11').click

    click_button '14'      
    fill_in '13', with: 'aBob@test.com'
    fill_in '12', with: 'Bob'
    click_button '11'
    expect(User.count).to eq(1)
    expect(find('#10')).to have_content('Erreur de connection')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'

    click_button '14'    
	find('#11').click

    click_button '14'      
    fill_in '13', with: 'aBob@test.com'
    fill_in '12', with: 'Bob'
    click_button '11'
    expect(User.count).to eq(1)    
    expect(find('#10')).to have_content('Erreur de connection')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/club'    
    expect(find('#5')).to have_content('Cree le compte') 
    expect(find('#10')).to have_content('Ce contenu n\'est accessible qu\'aux personnes connecter')    
  end

  it "should display the Connexion's button if the user isn't logged" do
    visit '/user/new'
    fill_in '0', with: 'Bob@test.com'
    fill_in '1', with: 'Bob'
    fill_in '2', with: 'Bob'
    fill_in '3', with: 'Bob'
    fill_in '4', with: 'Bob'
    click_button '5'
    visit '/club'
    expect(find('#20')).to have_content('1')    
    expect(find('#21')).to have_content('Bob')   
    expect(find('#22')).to have_content('Bob')   
    expect(find('#23')).to have_content('bob@test.com')    
  end


end