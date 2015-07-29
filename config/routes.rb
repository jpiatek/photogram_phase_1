Rails.application.routes.draw do

  get("/",                { :controller => "photos", :action => "index" })

  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })
  get("/photos/:id/edit",   { :controller => "photos", :action => "edit" })


end
