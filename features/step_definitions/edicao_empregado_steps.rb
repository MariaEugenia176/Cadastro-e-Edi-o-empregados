Quando(/^acessar a tela de edicao de cadastro do site$/) do
  find(:xpath,'//a[@id="menu_pim_viewPimModule"]').click
  
end

Quando(/^efetuar a edicao com dados validos$/) do
  click_link('0013')
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with=> 'Carlos')
  fill_in('personal_txtEmpMiddleName', :with=> '')
  fill_in('personal_txtEmpLastName', :with=> 'Silva')
  fill_in('personal_txtEmployeeId', :with=> '0013')
  fill_in('personal_txtOtherID', :with=> '')
  fill_in('personal_txtLicenNo', :with=> '')
  fill_in('personal_txtLicExpDate', :with=> '2017-09-19')
  choose('personal_optGender_1')
  select('Single', :from=>'personal_cmbMarital')
  select('Brazilian', :from=>'personal_cmbNation')
  fill_in('personal_DOB', :with=> '1987-09-19')
  click_button('btnSave')
end

Entao(/^o cadastro exibe mensagem de confirmacao e é alterado$/) do
  assert_text('Successfully Saved')
  
end