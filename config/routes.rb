Sassyseedsorg::Application.routes.draw do
  root :to => "styleguide#index"

  match '/styleguide/source_sans' => "styleguide#source_sans", :as => "source_sans"
  match '/styleguide/exo' => "styleguide#exo", :as => "exo"
end
