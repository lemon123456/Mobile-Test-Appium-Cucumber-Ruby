require 'rubygems'
require 'appium_lib'
require_relative 'base_page'

APP_PATH = '/Users/twer/Documents/Work/MyPACD/app-sit-debug.apk'
desired_cps = {
    caps: {
        platformName: "Android",
        deviceName: "Emulator",
        appPackage: "com.huawei.it.mypacd.sit",
        # appActivity: "com.huawei.it.mypacd.sit.activity.WelcomeActivity",
        appActivity: "com.huawei.it.mypacd.activity.WelcomeActivity",
        app: APP_PATH,
        noReset: false,
        fullReset: true
    },
    appium_lib: {
        sauce_username: nil,
        sauce_access_key: nil
    }
}

Appium::Driver.new(desired_cps)
Appium.promote_appium_methods MyPACDAppPage

Before { $driver.start_driver }
After { $driver.driver_quit }
