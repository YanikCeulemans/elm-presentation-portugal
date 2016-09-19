module Main exposing (..)

import Html exposing (Html)
import Html.App
import Html.Events


type Msg
    = SayHelloToEuricom
    | SayHelloToElm


type alias Model =
    String


model : Model
model =
    "world"


update : Msg -> Model -> Model
update msg model =
    case msg of
        SayHelloToEuricom ->
            "Euricom"

        SayHelloToElm ->
            "Elm"


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.button
            [ Html.Events.onClick SayHelloToEuricom
            ]
            [ Html.text "Say hello to Euricom" ]
        , Html.button
            [ Html.Events.onClick SayHelloToElm
            ]
            [ Html.text "Say hello to Elm" ]
        , Html.div [] [ Html.text ("Hello " ++ model ++ "!") ]
        ]


main =
    Html.App.beginnerProgram
        { model = model
        , update = update
        , view = view
        }
