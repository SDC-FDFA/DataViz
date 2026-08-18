# ---------------------------------------------------------------------------
# palettes.R — single source of truth for the palette exploration.
# One row per colour. `palette` groups them, `position` fixes order (1..7).
# Add new palettes by appending rows with the same three columns.
# ---------------------------------------------------------------------------

library(tibble)

palettes <- tribble(
  ~palette  , ~position , ~hex      ,

  # Current categorical palette (EDA strategy) — our baseline.
  "current" , 1L        , "#60b3b1" ,
  "current" , 2L        , "#d60b52" ,
  "current" , 3L        , "#ef7d00" ,
  "current" , 4L        , "#d3c600" ,
  "current" , 5L        , "#3fa535" ,
  "current" , 6L        , "#f0869d" ,
  "current" , 7L        , "#ff0000" ,
  # Improved categorical palette - OKLCH.
  "oklch"   , 1L        , "#2db4b1" ,
  "oklch"   , 2L        , "#d14160" ,
  "oklch"   , 3L        , "#d97230" ,
  "oklch"   , 4L        , "#d8b501" ,
  "oklch"   , 5L        , "#3e7d2f" ,
  "oklch"   , 6L        , "#175d9b" ,
  "oklch"   , 7L        , "#6a3166" ,
  # On the bright neon side
  "bright"  , 1L        , "#3bb4b0" ,
  "bright"  , 2L        , "#e01b5d" ,
  "bright"  , 4L        , "#e79a1e" ,
  "bright"  , 7L        , "#8a4fc0" ,
  "bright"  , 6L        , "#3d92d1" ,
  "bright"  , 3L        , "#f2703a" ,
  "bright"  , 5L        , "#3f8a3f" ,
  # gpt
  "gpt"     , 1L        , "#519795" ,
  "gpt"     , 2L        , "#D60B52" ,
  "gpt"     , 3L        , "#9A6047" ,
  "gpt"     , 4L        , "#B66D00" ,
  "gpt"     , 5L        , "#5F7F2A" ,
  "gpt"     , 6L        , "#3F75A2" ,
  "gpt"     , 7L        , "#7868B5" ,
  # claude
  "claude"  , 1L        , "#519795" ,
  "claude"  , 2L        , "#D60B52" ,
  "claude"  , 3L        , "#7B4A34" ,
  "claude"  , 4L        , "#BB8336" ,
  "claude"  , 5L        , "#4D8E5D" ,
  "claude"  , 6L        , "#3778B7" ,
  "claude"  , 7L        , "#6D509B" ,
  # Warm approach
  "warm"    , 1L        , "#9a3324" ,
  "warm"    , 2L        , "#c33d5a" ,
  "warm"    , 3L        , "#cf7a1f" ,
  "warm"    , 4L        , "#cfae3a" ,
  "warm"    , 5L        , "#43b3b1" ,
  "warm"    , 6L        , "#3566a8" ,
  "warm"    , 7L        , "#864e8f" ,
  # Cool approach
  "cool"    , 1L        , "#274a8c" ,
  "cool"    , 2L        , "#356b41" ,
  "cool"    , 3L        , "#4a90cf" ,
  "cool"    , 4L        , "#43b3b1" ,
  "cool"    , 5L        , "#7a4fa6" ,
  "cool"    , 6L        , "#c33d5a" ,
  "cool"    , 7L        , "#c6a03f" ,
)
