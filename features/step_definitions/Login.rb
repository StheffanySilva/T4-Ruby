Dado('que eu eteja na pagina de login') do
   login.load
  end
  
  Quando('informo os dados de acesso') do
    login.fil_in_access_data
  end
  
  Quando('clico no botão {string}') do |texButton|
    login.click_button(texButton)
  end
  
  Então('visualizarei na pagina  dashboard o texto {string}') do |welcome|
   login.validate_welcome(welcome)

   
  end

  