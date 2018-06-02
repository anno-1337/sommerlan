module Main exposing (..)

import Html exposing (Html, a, div, h1, img, li, text, ul)
import Html.Attributes exposing (href, src)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , h1 [] [ text "SommerLAN 2018!" ]
        , ul []
            [ li [] [ a [ href "https://twitter.com/sommerlanassss" ] [ text "twittern" ] ]
            , li [] [ a [ href "https://instagram.com/sommerlanassss" ] [ text "instagræm" ] ]
            , li [] [ a [ href "https://test" ] [ text "deploy test" ] ]
            ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
