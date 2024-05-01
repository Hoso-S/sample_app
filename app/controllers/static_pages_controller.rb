class StaticPagesController < ApplicationController
  def home
    # render ....
    # -> app/views/static_pages/home.html.erb
  end

  # app/views/コントローラー名/アクション名.html.erb
  def help
    # => app/views/static_pags/help.html.erb
    # roots / root / rooting
    # routes /route / routing
  end

  def about
    # => app/views/static_pags/about.html.erb
  end
end
