class DemoController < ApplicationController

  layout false

  def index
  end

  def hello

    # by default, after all code executes in here, view/template called 'hello',
    # in the 'demo' folder in the 'views' folder, where all views/templates
    # are located, will be rendered.
    # default behaviour is render('demo/hello')
    # render the view ('render' checks in views folder) in the 'demo' folder,
    # which itself is in the 'views' folder, called 'hello'

    # if you want to render something else you can do so by specifying it
    # in the 'render' command/function.
    # if the view/template you want to render is in the same folder as what
    # the default view for this action in this controller is, i.e. if it is
    # in a folder in the 'ciews' folder named after this controller, then
    # you don't need to specify the template folders name
    # render('hello') (default behaviour)


  end

end
