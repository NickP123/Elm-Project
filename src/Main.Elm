module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http exposing (..)
import Json.Decode exposing (..)


main : Program Never Model Msg
main =
    program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }

type alias Model =
    { quote : Maybe String
    }

init : (Model, Cmd Msg)
init =
  (Model Nothing, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
