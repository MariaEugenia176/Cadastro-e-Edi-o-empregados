Dado(/^que eu esteja logado no site OrangeHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with=>'Admin')
  fill_in('txtPassword', :with=> 'admin')
  click_button('btnLogin')
  
end

Quando(/^acessar a tela de cadastro do site$/) do
  find(:xpath,'//a[@id="menu_pim_viewPimModule"]').click
  find(:xpath,'//a[@id="menu_pim_addEmployee"]').click
end

Quando(/^efetuar o cadastro com dados validos$/) do
  fill_in('firstName', :with=> 'Ana')
  fill_in('lastName', :with=> 'Maria')
  find(:xpath, '//*[@id="btnSave"]').click
end

Entao(/^o cadastro e efetuado e direcionado para a tela de detalhes do empregado$/) do
  assert_text('Personal Details')

end	