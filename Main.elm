module Main exposing (..)

import Html exposing (Html)
import Html.App
import Html.Events


type Msg
    = Increase
    | Decrease


type alias Model =
    Int


model : Model
model =
    0


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increase ->
            model + 1

        Decrease ->
            model - 1


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.button
            [ Html.Events.onClick Decrease
            ]
            [ Html.text "-" ]
        , Html.div []
            [ model
                |> toString
                |> Html.text
            ]
        , Html.button
            [ Html.Events.onClick Increase
            ]
            [ Html.text "+" ]
        ]


main =
    Html.App.beginnerProgram
        { model = model
        , update = update
        , view = view
        }
