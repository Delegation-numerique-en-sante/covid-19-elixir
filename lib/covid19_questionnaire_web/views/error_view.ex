defmodule Covid19QuestionnaireWeb.ErrorView do
  alias Covid19QuestionnaireWeb.Schemas.Error

  def render("500.json", conn) do
    %Error{
      code: 500,
      info: "We don't know what happened",
      action:
        "Please open an issue https://github.com/Delegation-numerique-en-sante/covid19-algorithme-orientation-elixir/issues/new.",
      stacktrace: conn[:assigns]
    }
  end
end
