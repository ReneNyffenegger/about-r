#
#   S.a. ../examples/basic_string_manipulation.R
#

states <- c (
   "Alabama"       , "Alaska"      , "Arizona"        , "Arkansas"      , "California"     ,
   "Colorado"      , "Connecticut" , "Delaware"       , "Florida"       , "Georgia"        ,
   "Hawaii"        , "Idaho"       , "Illinois"       , "Indiana"       , "Iowa"           ,
   "Kansas"        , "Kentucky"    , "Louisiana"      , "Maine"         , "Maryland"       ,
   "Massachusetts" , "Michigan"    , "Minnesota"      , "Mississippi"   , "Missouri"       ,
   "Montana"       , "Nebraska"    , "Nevada"         , "New Hampshire" , "New Jersey"     ,
   "New Mexico"    , "New York"    , "North Carolina" , "North Dakota"  , "Ohio"           ,
   "Oklahoma"      , "Oregon"      , "Pennsylvania"   , "Rhode Island"  , "South Carolina" ,
   "South Dakota"  , "Tennessee"   , "Texas"          , "Utah"          , "Vermont"        ,
   "Virginia"      , "Washington"  , "West Virginia"  , "Wisconsin"     , "Wyoming")

states_abbr <- abbreviate(states)
states_abbr
#        Alabama         Alaska        Arizona       Arkansas     California
#         "Albm"         "Alsk"         "Arzn"         "Arkn"         "Clfr"
#       Colorado    Connecticut       Delaware        Florida        Georgia
#         "Clrd"         "Cnnc"         "Dlwr"         "Flrd"         "Gerg"
#         Hawaii          Idaho       Illinois        Indiana           Iowa
#         "Hawa"         "Idah"         "Illn"         "Indn"         "Iowa"
#         Kansas       Kentucky      Louisiana          Maine       Maryland
#         "Knss"         "Kntc"         "Losn"         "Main"         "Mryl"
#  Massachusetts       Michigan      Minnesota    Mississippi       Missouri
#         "Mssc"         "Mchg"         "Mnns"         "Msss"         "Mssr"
#        Montana       Nebraska         Nevada  New Hampshire     New Jersey
#         "Mntn"         "Nbrs"         "Nevd"         "NwHm"         "NwJr"
#     New Mexico       New York North Carolina   North Dakota           Ohio
#         "NwMx"         "NwYr"         "NrtC"         "NrtD"         "Ohio"
#       Oklahoma         Oregon   Pennsylvania   Rhode Island South Carolina
#         "Oklh"         "Orgn"         "Pnns"         "RhdI"         "SthC"
#   South Dakota      Tennessee          Texas           Utah        Vermont
#         "SthD"         "Tnns"         "Texs"         "Utah"         "Vrmn"
#       Virginia     Washington  West Virginia      Wisconsin        Wyoming
#         "Vrgn"         "Wshn"         "WstV"         "Wscn"         "Wymn"

cat("\n\n")
names(states_abbr) <- NULL
states_abbr
#  [1] "Albm" "Alsk" "Arzn" "Arkn" "Clfr" "Clrd" "Cnnc" "Dlwr" "Flrd" "Gerg"
# [11] "Hawa" "Idah" "Illn" "Indn" "Iowa" "Knss" "Kntc" "Losn" "Main" "Mryl"
# [21] "Mssc" "Mchg" "Mnns" "Msss" "Mssr" "Mntn" "Nbrs" "Nevd" "NwHm" "NwJr"
# [31] "NwMx" "NwYr" "NrtC" "NrtD" "Ohio" "Oklh" "Orgn" "Pnns" "RhdI" "SthC"
# [41] "SthD" "Tnns" "Texs" "Utah" "Vrmn" "Vrgn" "Wshn" "WstV" "Wscn" "Wymn"


month_names <- abbreviate(month.name, minlength=3)
names(month_names) <- NULL
month_names
#  [1] "Jnr" "Fbr" "Mrc" "Apr" "May" "Jun" "Jly" "Ags" "Spt" "Oct" "Nvm" "Dcm"
