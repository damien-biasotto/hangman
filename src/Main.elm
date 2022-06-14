module Main exposing (..)

import Browser
import Html exposing (Html, div, text)

type alias Model
    = { wordToGuess : String
    , maxNumberOfAttempts : Int
    , numberOfAttempts : Int
    }

type Msg = Noop

main = Browser.sandbox
       { init = init
       , view = view
       , update = update
       }

init : Model
init = { wordToGuess = ""
       , maxNumberOfAttempts = 5
       , numberOfAttempts = 0
       }

view : Model -> Html Msg
view model =
    div [] [text "Simple hangman"]

update : Msg -> Model -> Model
update msg model =
    model
