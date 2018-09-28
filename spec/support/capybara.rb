# frozen_string_literal: true

# :nocov:
Capybara.register_driver :screenshots_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless disable-popup-blocking no-sandbox disable-gpu window-size=1600,1200] },
    # loggingPrefs: { browser: 'ALL' }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

# Available drivers:
# * :rack_test (crashes at :js specs)
# * :selenium (ok, 22.87 seconds runs on firefox)
# * :selenium_chrome (ok, 32.08 seconds)
# * :selenium_chrome_headless (ok, 17.39 seconds)
# * :screenshots_chrome (ok, 23.79 seconds)
Capybara.javascript_driver = :selenium_chrome_headless

Capybara.exact = true
# :nocov:

Capybara.automatic_label_click = true

# TODO: Remove this configuration
Capybara.raise_server_errors = false