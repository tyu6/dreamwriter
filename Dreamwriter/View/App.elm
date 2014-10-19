module Dreamwriter.View.App where

import Dreamwriter.Doc (..)
import Dreamwriter.Model (..)
import Dreamwriter.View.LeftSidebar as LeftSidebar
import Dreamwriter.View.RightSidebar as RightSidebar
import Dreamwriter.View.Editor as Editor

import String
import Html (..)
import Html.Attributes (..)
import Html.Events (..)
import Html.Tags (..)

view : AppState -> Html
view state =
  div [id "page"] [
    div [class "backdrop"] [
      div [class "backdrop-quadrant backdrop-top backdrop-left"] [],
      div [class "backdrop-quadrant backdrop-bottom backdrop-left"] [],
      div [class "backdrop-quadrant backdrop-top backdrop-right"] [],
      div [class "backdrop-quadrant backdrop-bottom backdrop-right"] []
    ],

    LeftSidebar.view state,
    Editor.view state,
    RightSidebar.view state
  ]