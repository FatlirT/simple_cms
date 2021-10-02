Rails.application.routes.draw do

  # get 'demo/hello'

  # routes checked from top of this file to end

  # root "demo/index" # root of app when no url specified
  # same as match "/", (home dir, no url) :to => "demo#index", :via => :get

  # get 'demo/index'
  # match "demo/index", :to => "demo#index", :via => :get
  # 'get' one says to match url directly to the controller with the name
  # before the slash and the action with the name after the slash


  # GET reuqest from browser, i.e. url /students/edit/52 is typed in browser
  # StudentsController, edit action, id = 52

  # get ':controller(/:action(/:id))'
  # match ':controller(/:action(/:id))', :via => :get

  # it does this using naming conventions specified somewhere in the
  # rails config

  # also, if no :action is specified, it assumes the :index action by default
  # because it does not change anything.
  # it follows that since an action was not provided, an id was not possible
  # to be provided, implying that nothing was intended to be changed by the user
  # this makes the index action a sensible default, as when you want to view
  # the home page, you generally want to just view it, not change anything,
  # for example.

  # rails intertwines MVC architecure heavily with routing

  # opinionated structure of rails makes it easier to code with
  # but means that file sizes are larger

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
