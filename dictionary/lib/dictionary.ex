defmodule Dictionary do
  def hello do
    IO.puts("hello world!!")
  end

  def random_word() do
    word_list()
    |> Enum.random()
  end

  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
