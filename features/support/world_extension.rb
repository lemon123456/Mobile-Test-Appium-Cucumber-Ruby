Dir.glob(File.join(File.dirname(__FILE__),'pages','**/*.rb')) {|file| require_relative file}

module AndroidPageDomain
  def test_account
    json = File.read(File.join(File.dirname(__FILE__),'..','test_data','test_account.json'))
    @account =  JSON.parse(json)
  end


  def base_page
    @basePage = MyPACDAppPage.new
  end

  def login_page
    @loginPage = Screen::Android::LoginPage.new
  end


end

World(AndroidPageDomain)

module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end

World(WithinHelpers)
