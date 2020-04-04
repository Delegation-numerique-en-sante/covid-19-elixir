defmodule Covid19QuestionnaireWeb.Operations.EvaluateQuestionnaire.L15AnsTest do
  @moduledoc """
  STOP si < 15 ans
  """

  use ExUnit.Case, async: true
  alias Covid19QuestionnaireWeb.Operations.EvaluateQuestionnaire
  alias Covid19QuestionnaireWeb.Schemas.{Patient, Questionnaire, RiskFactors, Symptoms}

  test "STOP si < 15 ans" do
    {:ok, questionnaire} =
      %Questionnaire{
        patient: %Patient{age_less_15: true},
        symptoms: %Symptoms{},
        risk_factors: %RiskFactors{}
      }
      |> EvaluateQuestionnaire.call()

    assert questionnaire.orientation.code == "orientation_moins_de_15_ans"
  end
end