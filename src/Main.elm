module Main exposing (..)

import Html exposing (Html, a, div, h1, h2, h3, img, li, text, ul)
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
        [ h1 [] [ text "SommerLAN 2018!" ]
        , h2 [] [ text "Soziale medier" ]
        , ul []
            [ li [] [ a [ href "https://twitter.com/sommerlanassss" ] [ text "twittern" ] ] ]
        , h2 [] [ text "Can's shopping list" ]
        , ul []
            [ li [] [ a [ href "https://www.komplett.no/product/993767/datautstyr/pc-komponenter/prosessorer/amd-ryzen-7-2700x-prosessor" ] [ text "CPU - Ryzen 7 2700X  (3.290kr)" ] ]
            , li [] [ a [ href "https://www.komplett.no/product/1004669/datautstyr/pc-komponenter/hovedkort/amd-socket/msi-x470-gaming-plus" ] [ text "Hovedkort - MSI X470 Gaming plus (1.499kr)" ] ]
            , li [] [ a [ href "https://www.komplett.no/product/1004637/datautstyr/lagring/harddiskerssd/ssd-m2/samsung-970-evo-250gb-pcie-ssd" ] [ text "Boot drive - 970 EVO 250gb NVMe M.2 (1.090kr)" ] ]
            , li [] [ a [ href "https://www.komplett.no/product/851535/datautstyr/pc-komponenter/minnebrikker/corsair-vengeance-lpx-ddr4-2133mhz-16gb" ] [ text "RAM - Corsair Vengeance LPX DDR4 2x8(16gb) kit (1.699kr)" ] ]
            , li [] [ a [ href "https://www.komplett.no/product/959102/datautstyr/pc-komponenter/stroemforsyning/enheter/seasonic-focus-750w-85-gold-psu" ] [ text "PSU - Seasonic Focus+ 750W 85+ Gold PSU (mythic rating) (1.199kr)" ] ]
            , li [] [ a [ href "jebaited" ] [ text "GPU - lol, bare shit deals. Vent på mainstream Volta kort." ] ]
            ]
        , h3 [] [ text "Andre valg" ]
        , ul []
            [ li [] [ a [ href "https://www.komplett.no/product/1004639/datautstyr/lagring/harddiskerssd/ssd-m2/samsung-970-evo-500gb-pcie-ssd" ] [ text "Boot drive - 970 EVO 500gb NVMe M.2 (2.290kr)" ] ]
            , li [] [ a [ href "https://www.komplett.no/product/1018345/datautstyr/pc-komponenter/minnebrikker/gskill-flare-x-ddr4-16gb-kit-3200mhz" ] [ text "RAM - G.Skill Flare X DDR4 2x8(16gb) 3200Mhz cl14 (2.549kr)" ] ]
            , li [] [ a [ href "https://www.komplett.no/product/1004671/datautstyr/pc-komponenter/hovedkort/amd-socket/msi-x470-gaming-pro" ] [ text "Hovedkort - MSI X470 Gaming Pro (1.599kr)" ] ]
            ]
        , h2 [] [ text "HÅTTE GAMES" ]
        , ul []
            [ li [] [ text "Coming Soon" ] ]
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
