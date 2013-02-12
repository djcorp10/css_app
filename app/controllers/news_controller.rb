class NewsController < ApplicationController
	layout 'news'

  def display
  	@football = %Q[Football News]

  	@baseball = %Q[Baseball News]

  	@basketball = %Q[Basketball News]

  	@soccer = %Q[Soccer News]
  end
end
