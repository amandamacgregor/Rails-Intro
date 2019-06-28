Rails.application.routes.draw do
    get "/quadruple" => 'main#quadruple'
    get "/subscribe" => 'main#subscribe'
    get "/signup" => 'main#signup'
    get "/profile" => 'main#profile'
    get "/signin" => 'main#signin'
end
