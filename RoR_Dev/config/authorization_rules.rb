authorization do
  role :admin do
    has_permission_on [:users, :roles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]  
  end

  role :user do
    has_permission_on [:users], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
end