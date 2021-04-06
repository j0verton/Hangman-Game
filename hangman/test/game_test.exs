defmodule GameTest do
  use ExUnit.Case

alias Hangman.Game


test "new_game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
    assert length(game.letters) == length(Enum.filter(game.letters, fn (letter) ->  String.match?(letter, ~r/\p{Ll}/) == true end))



end


end
