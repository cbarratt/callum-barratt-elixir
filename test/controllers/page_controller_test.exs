defmodule Callum.PageControllerTest do
  use Callum.ConnCase

  import Callum.Factory

  test "Get the homepage" do
    macro = create(:macro)
    weighin = create(:weighin)

    conn = get build_conn(), "/"

    assert html_response(conn, 200) =~ macro.calories
    assert html_response(conn, 200) =~ weighin.weight
  end
end
