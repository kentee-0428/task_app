Rails.application.routes.draw do

  get "/" => "posts#index" #一覧ページ
  get "posts/new" => "posts#new" #登録ページ
  get "posts/:id" => "posts#show" #詳細ページ
  get "posts/:id/edit" => "posts#edit" #編集ページ
  post "posts/create" => "posts#create" #新規投稿作業
  post "posts/:id/update" => "posts#update" #更新作業
  post "posts/:id/destroy" => "posts#destroy" #削除作業
end
