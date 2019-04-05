require 'rubygems'
require 'selenium-webdriver'
require 'pry'

class Shop
	include Singleton
end


Shop.instance.object_id
