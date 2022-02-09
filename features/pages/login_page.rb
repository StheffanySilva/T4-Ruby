class Login < SitePrism:: Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/#!/dashboard'
    element :inputMail, 'input[name="username"]'
    element :inputPassword, 'input[name="password"]'
    element :buttonEnter, 'button[type="submit"]'
    element :welcomeDashboad, 'h1[class="ng-binding"]'

    def fil_in_access_data
        inputMail.set "willian.alves@routeasy.com.br"
        inputPassword.set "123456789"
    end

    def click_button(texButton)
       find('button[type="submit"]', text:texButton).click
    end

    def validate_welcome(welcome)
       # binding.pry
        dashboardText = find('h1[class="ng-binding"]').text

        if dashboardText.eql?(welcome) != true
          raise "Expected element : #{welcome}, but returned: #{dashboardText}"
        end
    end    
end