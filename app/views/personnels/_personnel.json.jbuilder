json.extract! personnel, :id, :nummatricule, :prenom, :nom, :datenaissance, :lieunaissance, :telephone, :genre_id, :structure_id, :service_id, :cadre_id, :corp_id, :titre_id, :statut_id, :etatcivil_id, :created_at, :updated_at
json.url personnel_url(personnel, format: :json)
