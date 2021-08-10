Capybara.current_driver = :selenium # temporarily select different driver

describe "app", type: :feature do
  it "can click links" do
    visit 'http://capybara-workout.herokuapp.com/'
  end
end

Capybara.use_default_driver # return to default driver
