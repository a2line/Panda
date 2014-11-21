
local L = Panda.locale
local panel = Panda.panel.panels[3]


local name = GetSpellInfo(45357)

local check = CreateFrame("CheckButton", "PandaGlyphProfit", panel, "OptionsCheckButtonTemplate")
check:SetWidth(22)
check:SetHeight(22)
check:SetPoint("TOPLEFT", Panda.panel, "BOTTOMLEFT", 185, 35)
check:SetScript("OnClick", function() Panda.showprofit = not Panda.showprofit; panel:Hide(); panel:Show() end)

local checklabel = check:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
checklabel:SetPoint("LEFT", check, "RIGHT", 5, 0)
checklabel:SetText("Show profit")

CreateFrame("Frame", nil, panel):SetScript("OnShow", function() if GetReagentCost then check:Show() else check:Hide() end end)


panel:RegisterFrame(MAJOR_GLYPHS, Panda.PanelFactory(45357,
[[113111  110872  110835  110824  110853  110854  110842  110864  110821  110808  110800  110826
    0     110873  110836  110825  110850  110856  110841  110866  110822  110813  110803  110827
    0     110879  110837    0     110851  110857  110843  110868    0     110810  110801  110828 
    0     110874  110839    0     110852  110858  110846  110869    0     110809  110802  110832  
    0     110875  110840    0       0     110859  110845  110871    0     110815  110805  110829 
    0     110876  110838    0       0     110860  110844    0       0     110817  110806  110830    
    0     110877     0      0       0     110862  110849    0       0     110814  110807  110833  
    0     110878     0      0       0     110861  110847    0       0     110812     0    110834
    0       0        0      0       0       0     110848    0       0     110816          
    0       0        0      0       0       0       0       0       0     120300           
  79251 79254 43425    0   42744 45769  43725 79514 42465 42901 45622  43553 87901   0     0   79731
    0     0   43421    0   42746 42974    0   42403   0     0   43331  43554
    0     0     0      0     0   42964    0   42408   0     0   40916
  61979 61978 43414  83107 45740 63420  45776 42404 43390 45735 45623
    0     0     0    45741   0     0      0   42410 43390
    0     0     0    41108
  39343 43126 43419  41101 42753 42971  41518 42407 45785 42898 40903    0   87893
    0     0     0      0   42736   0      0     0   42466
  39342 43124 43430  41094 44920 42957  41524 42409 42470 42908   0    45800 85699
    0     0     0      0   44955 42966    0     0     0  104270   0    43533 85696
  39341 43122 43399  81956   0     0    41527 42412   0   42905 40920  43536
    0     0   43428  41099   0     0    41517 45755   0  104276   0    43537
  39340 43120 43432  41110 63539 64493  41526 45758 42472 45731 45604  43546 85700
    0     0   43417    0     0     0    41542 45760   0   42915   0    43826
    0     0     0      0     0     0      0     0     0     0     0    43547
  39339 43118   0    43869   0   42960  45771 42415   0   42903 40912 104046 85695
    0     0     0    41102   0   42970  45778 42396   0   42902   0    45799 85691
    0     0     0    41096   0   42968  41529 87902
    0     0     0      0     0     0   104052
  39338 43116 43422  66918 42739 42973  41538 42397 45783 42904   0    43552 87897
    0     0   45790  41095   0     0    45772 42405   0   42910   0   104048 87895
    0     0     0      0     0     0    41530   0     0     0     0      0   84652
  39334 39774 45792 104050 42745 45761  41532 79513 42454 42917 40921  45804 87900
    0     0   67483    0   50045 42963  41552 42417 45782   0   45601    0   87894
    0     0     0      0     0     0    41533 45757
  39151 39469 45795 104051 42748 42961  41541 79515 50077 42906 45602  43548 87899
    0     0   45793    0   42754   0      0   42399   0   45733   0    43549 87880
]], nil, function(frame)
	frame:SetAttribute("type", "macro")
	if frame.id == 44680 then
		frame:SetAttribute("macrotext", "/run CloseTradeSkill()\n/cast "..name.."\n"..
			"/run for i=1,GetNumTradeSkills() do if GetTradeSkillInfo(i) == '"..L["Northrend Inscription Research"].."' then DoTradeSkill(i) end end CloseTradeSkill()")
	else
		frame:SetAttribute("macrotext", Panda.CraftMacro(name, frame.id))
	end
end))


panel:RegisterFrame(MINOR_GLYPHS, Panda.PanelFactory(45357,
[[113111    0        0      0       0     110855    0     110867  110819  118573     0       0
    0       0        0      0       0       0       0       0       0     110818     0       0

  79251 79254  45794 104108  43359    0    45775  87277   0   43350    0      0   87890
    0     0      0    80586    0      0   104130
  61979 61978  80588    0    42751  45768 104131  79538 42453 45732  43334  43544 87889
    0     0    49084    0      0    43376  41540  87392 43393   0    43335  43673 87881
  39343 43126  43395  43365    0    43380 104133  43342 42456 85683  67486  43671 87888
    0     0   104135    0      0      0    43381  86541   0     0    40919  43672 87883
    0     0      0      0      0      0      0   104109
  39342 43124 104136  43368  42743  43378 104134  43371 42461   0    68039  43827 87884
    0     0    43396    0      0      0    43385 104120 42459   0    43316
  39341 43122 104137  41100  63416  42965 104129  43373 43389 87393  89868  45806 87885
    0     0      0      0      0    43377  43388    0   42463
  39340 43120  43412 104107  43364  42967  41537    0   43391 42897  40900    0   87882
    0     0   104138  43369    0    42956  44923
  39339 43118  43398    0   104104 104123    0      0   45789 43351 104102  43550 87887
    0     0    43400    0      0      0      0      0   43394
    0     0    80587
  39338 43116  85221  80581 104105 104124 104126  43374 93202 43338 104103  43535
    0     0      0      0      0    43379    0      0     0     0    43332
  39334 39774    0    43366 104106  43343 104127    0   42467 42912    0   104099
    0     0      0    80584    0      0      0      0     0   43355    0    43539
  39151 39469    0    80585  45738  45762 104128 104122 42457 43356  44922  43551
    0     0      0    43340    0      0    43386  87276 42473
]], nil, function(frame)
	frame:SetAttribute("type", "macro")
	if frame.id == 44680 then
		frame:SetAttribute("macrotext", "/run CloseTradeSkill()\n/cast "..name.."\n"..
			"/run for i=1,GetNumTradeSkills() do if GetTradeSkillInfo(i) == '"..L["Minor Inscription Research"].."' then DoTradeSkill(i) end end CloseTradeSkill()")
	else
		frame:SetAttribute("macrotext", Panda.CraftMacro(name, frame.id))
	end
end))


panel:RegisterFrame(L["Inscriptions"], Panda.PanelFactory(45357,
[[79251 79254 87577 87578 87579 87580 0 87581 87582 87584 87585
]]))


panel:RegisterFrame(L["Scrolls"], Panda.PanelFactory(45357,
[[61979 61978 63303 63305 63306 63307 63304 63308 63388 62237 60838
  39343 43126 43463 37091 37093 37097 43465 44315
	  0     0   43464 37092 37094 37098 43466
  39342 43124 33457 33458 33461 33460 33462
  39341 43122 27498 27499 27502 27501 27503
  39340 43120 10309 10308 10307 10306 10310 43850
  39339 43118  4425  4419  4422  4424  4426 44314
  39338 43116
  39334 39774  1477  2290  1711  1712  2289 64670
  39151 39469   0     0     0     0     0   37118 38682
  39151 37101  3012   955  1180  1181   954
]]))

panel:RegisterFrame(L["Cards"], Panda.PanelFactory(45357,
[[79253 79255 79731 0 79283 79284 79285 79286 79287 79288 79289 79290   0   79323 79327 79328
    0     0   79318 0 79291 79292 79293 79294 79295 79296 79297 79298   0   79324 79329
    0     0     0   0 79299 79300 79301 79302 79303 79304 79305 79306   0   79325 79330
    0     0     0   0 79307 79308 79309 79310 79311 79312 79313 79314   0   79326 79331
  61980 61981 52329 0 61988 61989 61990 61991 61992 61993 61994 61995   0   62021 62047
    0     0   61987 0 61996 61997 61998 61999 62000 62001 62002 62003   0   62046 62048
    0     0     0   0 62004 62005 62006 62007 62008 62009 62010 62011   0   62045 62051 62049
    0     0     0   0 62012 62013 62014 62015 62016 62017 62018 62019   0   62044 62050
  43109 43127 35625 0 44260 44261 44262 44263 44264 44265 44266 44267   0   44259 42988
    0     0   44318 0 44277 44278 44279 44280 44281 44282 44284 44285   0   44276 42989
    0     0     0   0 44286 44287 44288 44289 44290 44291 44292 44293   0   44294 42990
    0     0     0   0 44268 44269 44270 44271 44272 44273 44274 44275   0   44326 42987 44254
    0     0     0   0   0     0     0     0     0     0     0     0     0     0   44253 44255
  43108 43125 21886 0 31901 31909 31908 31904 31903 31906 31905 31902   0   31907 31858
    0     0   44317 0 31910 31918 31917 31913 31912 31916 31915 31911   0   31914 31859
    0     0     0   0 31882 31889 31888 31885 31884 31887 31886 31883   0   31890 31856
    0     0     0   0 31892 31900 31899 31895 31894 31898 31896 31893   0   31891 31857
  43107 43123   0   0 19227 19230 19231 19232 19233 19234 19235 19236   0   19228 19288
    0   44316   0   0 19258 19259 19260 19261 19262 19263 19264 19265   0   19257 19287
    0     0     0   0 19268 19269 19270 19271 19272 19273 19274 19275   0   19267 19289
    0     0     0   0 19276 19278 19279 19280 19281 19282 19283 19284   0   19277 19290
  43106 43121 44163 0 44143 44154 44155 44156 44157   0     0     0   44158 44217 44218 44219
  43105 43119 44161 0 44165 44144 44145 44146 44147   0     0     0   44148 44213 44215
  43104 43117 44142 0 37145 37147 37159 37160   0     0     0     0   37164 39897 39895 39894
  43103 43115 37168 0 37140 37143 37156   0     0     0     0     0   37163 38318 39509 39507
]]))

panel:RegisterFrame(L["Off-hand"], Panda.PanelFactory(45357,
[[79253 79255 0 79334 79731 79333 0 79335 79731 79333 0 79333 76061
  61980 61981 0 62234 52329 52326 0 62235 52329 52328 0 62236 52329 52325
    0     0   0 62231 52329
  52329   0   0 62233
  43109 43127 0 44210 43102   0   0 38322 43102
  39343 43126 0 45849
  43108 43125 0 43666   0     0   0 43667
  43107 43123 0 43663   0     0   0 43664
  43106 43121 0 43660   0     0   0 43661
  43105 43119 0 43656   0     0   0 43657
  43104 43117 0 43654   0     0   0 43655
  43103 43115 0 43515
]]))
