json.extract! partida, :id, :player1_id, :player2_id, :winP1, :winP2, :created_at, :updated_at
json.url partida_url(partida, format: :json)
