class DemoController < ApplicationController

  layout false

  def about

    render('about_us')
  end

  def contact

    country = params[:country]
    @phone = '+1 (987) 654-3210'

    case country
    when 'us', 'ca'
      @phone = '(800) 555-6789'
    when 'uk'
      @phone = '(020) 7946 1234'
    end

    render('contact_us')

  end


  def index
  end

  def hello

    # by default, after all code executes in here, view/template called 'hello',
    # in the 'demo' folder in the 'views' folder, where all views/templates
    # are located, will be rendered.

    # default behaviour is render('demo/hello') or render(:template => 'demo/hello')
    # render the view/template in the demo folder (which is in the views/template folder
    # which is where all ':template''s must go) called hello. So check the
    # ':templates''s available by checking the 'views' folder, to see if there
    # is a matching view with the directory string 'demo/hello'

    # Ruby:
    # the command and the symbol (in this case 'render' and ':tempalte' respectivley)
    # dictate how the string passed to them (with => notation) will be parsed.

    # render the view ('render' checks in views folder) in the 'demo' folder,
    # which itself is in the 'views' folder, called 'hello'

    # if you want to render something else you can do so by specifying it
    # in the 'render' command/function.
    # if the view/template you want to render is in the same folder as what
    # the default view for this action in this controller is, i.e. if it is
    # in a folder in the 'views' folder named after this controller, then
    # you don't need to specify the template folders name
    # render('hello') (default behaviour)

    # render simply renders a view, because it's in its name, 'render'
    # it only renders a page/view/template.

    # however, if you want to completely re-direct a user to a new workflow,
    # you use 're-direct' as now, you're re-dircting them to a new action,
    # to execute the code in the new action, and render the template specified
    # (or not) in the new action. 

    # re-directs are part of the HTTP spec, rails, just like most things,
    # puts them to good use.
    # re-direct tells the rails router to route to new specified route,
    # and generate a new GET request.

    # this would be used in a completley differnt scenario as opposed to
    # simply 'render'ing a new template

    # Ruby:
    # redirect_to(:controller => 'demo', :action => 'index') - this is called a 'hash'
    # combination of key and pair values; symbol paired to string.
    # when specifying multiple parameters in a method, and some of them are hashes,
    # hashes must be enclosed in '{}' curly braces; in Angular it's brackets '[]'.
    # non-hash format
    # redirect_to(controller: 'demo', action: 'index')
    # redirecting to action in same controller, redirect_to(:action => 'index')
    # redirect_to('https://facebook.com')



  end

end