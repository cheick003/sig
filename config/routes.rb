Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :conges
  resources :typeconges
  resources :comptepersonnels
  resources :personnels
  resources :comptes
  resources :banques
  resources :titres
  resources :corps
  resources :cadres
  resources :statuts
  resources :services
  resources :structures
  resources :genres
  resources :etatcivils
  root 'main#main_index'
  get 'banque_edit'              => 'banques#banque_edit'
  get 'banque_delete'            => 'banques#banque_delete'
  get 'cadre_edit'               => 'cadres#cadre_edit'
  get 'cadre_delete'             => 'cadres#cadre_delete'
  get 'comptepersonnel_edit'     => 'comptepersonnels#comptepersonnel_edit'
  get 'comptepersonnel_delete'   => 'comptepersonnels#comptepersonnel_delete'
  get 'compte_edit'              => 'comptes#compte_edit'
  get 'compte_delete'            => 'comptes#compte_delete'
  get 'conge_edit'               => 'conges#conge_edit'
  get 'conge_delete'             => 'conges#conge_delete'
  get 'conge_prevision'          => 'conges#conge_prevision'
  get 'conge_historique'         => 'conges#conge_historique'
  get 'corps_edit'               => 'corps#corps_edit'
  get 'corps_delete'             => 'corps#corps_delete'
  get 'etatcivil_edit'           => 'etatcivils#etatcivil_edit'
  get 'etatcivil_delete'         => 'etatcivils#etatcivil_delete'
  get 'genre_edit'               => 'genres#genre_edit'
  get 'genre_delete'             => 'genres#genre_delete'
  get 'personnel_edit'           => 'personnels#personnel_edit'
  get 'personnel_delete'         => 'personnels#personnel_delete'
  get 'service_edit'             => 'services#service_edit'
  get 'service_delete'           => 'services#service_delete'
  get 'statut_edit'              => 'statuts#statut_edit'
  get 'statut_delete'            => 'statuts#statut_delete'
  get 'structure_edit'           => 'structures#structure_edit'
  get 'structure_delete'         => 'structures#structure_delete'
  get 'titre_edit'               => 'titres#titre_edit'
  get 'titre_delete'             => 'titres#titre_delete'
  get 'typeconge_edit'           => 'typeconges#typeconge_edit'
  get 'typeconge_delete'         => 'typeconges#typeconge_delete'
  get 'main_personnel'           => 'main#main_personnel'
  get 'main_courrier'            => 'main#main_courrier'
  get 'main_materiel'            => 'main#main_materiel'
  get 'main_conge'               => 'main#main_conge'
  get 'main_user'                => 'main#main_user'
end
