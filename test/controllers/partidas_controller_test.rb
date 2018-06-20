require 'test_helper'

class PartidasControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
    setup do
        @partida = partidas(:one)
        sign_in users(:one)
    end

    test "should get index" do
        get partidas_url
        assert_response :success
    end

    test "should get new" do
      get new_partida_url
      assert_response :success
    end

    test "should create partida" do
      assert_difference('Partida.count') do
          post partidas_url, params: { partida: {player2: @partida.player2, winP1: @partida.winP1, winP2: @partida.winP2, game: @partida.game} }
      end

      assert_redirected_to partida_url(Partida.last)
    end

    test "should show partida" do
      get partida_url(@partida)
      assert_response :success
    end

    test "should get edit" do
      users(:one).admin = true
      get edit_partida_url(@partida)
      assert_response :success
    end

    test "should update partida" do
      users(:one).admin = true
      patch partida_url(@partida), params: { partida: { game: @partida.game, player1: @partida.player1, player2: @partida.player2, winP1: @partida.winP1, winP2: @partida.winP2 } }
      assert_redirected_to partida_url(@partida)
    end

    test "should destroy partida" do
      users(:one).admin = true
      assert_difference('Partida.count', -1) do
        delete partida_url(@partida)
      end

      assert_redirected_to partidas_url
    end
end
