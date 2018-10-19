import Browser
import Http
import Json.Encode exposing (Value)
import Html exposing (Html, div, text)

type Model
  = Loading
  | LoadedOne Mesh
  | LoadingProblem Problem
  | Loaded LoadedModel

type Problem
  = ServerProblem Http.Error
  | DatabaseProblem String

type alias LoadedModel =
  { problem : Maybe Problem
  , trousers: Mesh
  , shirt: Mesh
  }

type alias Mesh =
  { }

type Msg
  = Message

main: Program Value Model Msg
main =
  Browser.element
    { init = init
    , subscriptions = subscriptions
    , update = update
    , view = view
    }

init : flags -> ( Model, Cmd Msg )
init _ = ( Loading, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  ( model, Cmd.none )

view : Model -> Html Msg
view model =
  div [] [ text "Showroom" ]