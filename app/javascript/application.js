// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { selectGame } from "./components/_select_game";
import {swiperCard} from "./components/_swiper_card";
import { searchBar } from "./components/_search_bar";
import { homeEffect } from "./components/_home_effect";
import {swiperGame} from "./components/_swiper_game";
//FOR NEW FRIEND REQUEST: to do a POST with with a link_to(usually only for GETs)
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false

selectGame()
swiperCard()
searchBar()
homeEffect()
swiperGame()
