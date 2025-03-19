cd "C:\Users\t\Desktop\projects\New folder\Content"

$zip = Get-Content -path "" # add path for zip file
$savePath = "" # add save path for new files
$link = "https://www.google.com/maps/search/grocery+store+near+"
$yellowPage = "https://www.yellowpages.com/search?search_terms=Grocery+Stores&geo_location_terms="


foreach($i in $zip){
    #$r = [math]::Round((Get-Random -Maximum 20)/10, 1)
    $testPath = $savePath + $i + ".txt"
    if (-not(Test-Path $testPath)){
        $i
        $ziplink = $yellowPage + $i
        try {
            $web = Invoke-WebRequest -uri $ziplink
            $s = $savePath + $i + ".txt"
            Set-Content -path $s -Value $web.Content
        } catch {
            $fail = "failed for " + $i
            $r = 0
            Write-Warning $fail
        }
        #sleep $r
    }
}



$web = Invoke-WebRequest -uri "yellowpages.com/"

$folderPath = "" # Replace with your folder path
$outputFile = "combined_lines_with_counts.txt"

$lineCounts = @{}
# Loop through all .txt files in the folder
Get-ChildItem -Path $folderPath -Filter "*.txt" | ForEach-Object {
    # Read each line from the file
    Get-Content $_.FullName | ForEach-Object {
        # Increment the count for each line
        if ($lineCounts.ContainsKey($_)) {
            $lineCounts[$_]++
        } else {
            $lineCounts[$_] = 1
        }
    }
}

# Output the lines and their counts to the output file
$lineCounts.GetEnumerator() | Sort-Object Value -Descending | ForEach-Object {
    "$(($_.Key) -replace '[\r\n]+', '') ($($_.Value))" | Out-File $outputFile -Append
}

Write-Host "Combined lines and counts saved to '$outputFile'."



"
Dollar General (19329)
Aldi (15337)
Save-A-Lot (12035)
Walmart (15526)
Stop & Shop (5655)
Trader Joe's (3953)
Whole Foods Market (3135)
DG Market (3099)
Albertsons (2715)
Grocery Outlet (2405)
ShopRite (2056)
Hy-Vee (2009)
Food Lion (2000)
Sheetz (1992)
Piggly Wiggly (1963)
Price Chopper (1827)
Shop 'n Save (1794)
Lidl (1754)
Bashas' Grocery Stores (1742)
The Fresh Market (1726)
Ingles (1623)
Hannaford (1604)
Gas N Go (1556)
Giant Food (1441)
Sprout's Farmers Market (1422)
Texas Pecan Company (1374)
Gordon Food Service Store (1348)
Food City (1339)
Shaw's (1327)
Supervalu (1275)
Meijer (1261)
Sprouts Farmers Market (1111)
Central Market (1105)
Safeway (1088)
Wegmans (1087)
Bi-Lo (1058)
Market Basket (1016)
Defense Commissary Agency (DeCA) (1014)
Associated Food Stores (1009)
Kroger Pharmacy (1007)
Winn Dixie (1004)
Food 4 Less (949)
Food Giant (941)
Fareway (921)
Iga (913)
City Market (909)
Kroger (901)
Peapod Pick-Up (898)
Kroger Fuel Center (865)
Tops Friendly Market (864)
Stripes (862)
H-E-B (831)
Vons (802)
Mi Pueblo (793)
Food Mart (783)
Price Chopper Supermarkets (782)
Cub Foods (760)
Uni-Mart (738)
Country Mart (721)
Asian Market (720)
Save Mart Supermarkets (717)
Farm Fresh Food & Pharmacy (709)
Brookshire's Food & Pharmacy (709)
WinCo Foods (700)
Walmart Garden Center (680)
Little General Store (671)
Ralphs (668)
Super Fresh (658)
Giant Eagle (640)
Foodland (634)
Pathmark (591)
Tom Thumb (588)
Corner Market (587)
Big Y World Class Market (587)
Jewel-Osco (582)
Big Y Market (572)
Apple Market (568)
Amigos (565)
Harps Food Store (554)
County Market (552)
Foodtown (546)
Lowes Food Stores (543)
Wal-Mart SuperCenter (541)
Village Market (538)
Earth Fare (525)
Walmart Auto Care Centers (508)
Family Fare Supermarkets (504)
Lucky's Market (486)
Ocean State Job Lot (482)
Ruler Foods (480)
Festival Foods (479)
Martin's (474)
United Supermarkets (474)
Home Storage Center (474)
Bulk Foods (467)
Brookshire Brothers (460)
Stevia Sweet BBQ Barbecue Sauce (457)
Amazon Fresh (454)
Country Market (450)
Convenient Food Mart (448)
Stater Bros. (431)
Pick 'n Save (424)
Ahold (413)
Star Market (412)
Fresh Thyme Market (409)
Family Market (408)
Shoppers Food & Pharmacy (396)
GIANT Pharmacy (386)
Main Street Market (380)
Price Cutter (370)
Food King (370)
Schnucks (368)
PriceRite (349)
Cash Saver (349)
Harveys Supermarket (342)
Food Town (341)
Market Street (341)
Dillons (332)
Dollar Fresh Market (329)
A&P Food Store (319)
Krauszer's Food Store (318)
Rainbow Foods (316)
Cub Food Stores (315)
Natural Grocers (311)
Wawa Food Markets (307)
Balls Food Stores (301)
GFS Marketplace (299)
Harps Food Stores (298)
Town & Country Supermarket (294)
99 Ranch Market (289)
Metro Market (287)
Kangaroo (285)
QFC - Quality Food Centers (282)
Sweetbay Supermarket (282)
Sam's Club (279)
Smith's Food & Drug (277)
Marc's Stores (275)
Smart Stop (275)
Marc's (274)
Osco Pharmacy (272)
Piggly Wiggly Supermarket (270)
Grand Union (266)
Best Market (264)
Harding's Friendly Market (262)
Cardenas Market (257)
Food Depot (257)
Stop & Shop Pharmacy (257)
Ideal Market (257)
Acme Markets (255)
Haggen (254)
Econofoods (254)
Homeland (253)
Family Foods (253)
K-VA-T Food Stores Inc (251)
Super One Foods (250)
Smart & Final (245)
Price Less Foods (245)
Bravo Supermarkets (245)
United Grocery Outlet (241)
Superior Grocers (234)
Henry's Market (233)
Food World (231)
Harris Teeter (230)
Asian Grocery (225)
Kroger Pick Up (224)
Oriental Market (224)
Hometown Market (219)
Giant (218)
Jewel-Osco Pharmacy (214)
One-Stop Grocery Shop (213)
Quick Stop (209)
Raley's Supermarket (209)
Corner Grocery (208)
Waldbaum's (207)
Hometown Grocery (206)
Lowe's Market (203)
Market (203)
India Bazaar (202)
Market Place (200)
Grocery (193)
J&J Foods (192)
Super Stop (190)
La Michoacana (190)
Star Food Mart (189)
Smith's Fuel Center (188)
Sentry Foods (187)
Brookshire Brothers Food & Pharmacy (186)
Key Food (185)
Hucks (183)
Fry's Pharmacy (183)
Harvest Market (182)
El Rancho Supermercado (180)
Hen House Market (179)
Patel Brothers (176)
Spec's Wine, Spirits & Finer Foods (176)
One Stop Market (173)
Roche Brothers (173)
Super Saver (173)
Carlie C's IGA (171)
El Poncho (170)
La Guadalupana (168)
Kelly's Market (168)
The Store (167)
Martin's Super Market (166)
Houston, TX (165)
Asian Food Market (164)
Greer's CashSaver (163)
Neighborhood Grocery (163)
Needler's Fresh Market (163)
Woodman's Market (163)
Spring Market Fuel Center (162)
Bristol Farms (162)
Express Food Mart (162)
Fresh Market (161)
Jay C (161)
Food Outlet (161)
Price Less IGA (160)
"