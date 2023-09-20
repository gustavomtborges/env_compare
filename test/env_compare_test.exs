defmodule EnvCompareTest do
  use ExUnit.Case
  doctest EnvCompare

  test "should show the keys not present in the target.env but present in the origin.env" do
    assert EnvCompare.diff("test/origin.env", "test/target.env") == ["KEY3"]
  end
end
