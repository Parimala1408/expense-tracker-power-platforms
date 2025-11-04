param([Parameter(Mandatory=$true)][string]$SiteUrl)

Connect-PnPOnline -Url $SiteUrl -Interactive

$listTitle = "Credit Requests"
if (-not (Get-PnPList -Identity $listTitle -ErrorAction SilentlyContinue)) {
  New-PnPList -Title $listTitle -Template GenericList -OnQuickLaunch
}

$columns = Import-Csv "$PSScriptRoot/../schema/credit-requests.columns.csv"
foreach ($col in $columns) {
  switch ($col.Type) {
    "Text"     { Add-PnPField -List $listTitle -DisplayName $col.DisplayName -InternalName $col.InternalName -Type Text -AddToDefaultView | Out-Null }
    "Currency" { Add-PnPField -List $listTitle -DisplayName $col.DisplayName -InternalName $col.InternalName -Type Currency -AddToDefaultView | Out-Null }
    "Number"   { Add-PnPField -List $listTitle -DisplayName $col.DisplayName -InternalName $col.InternalName -Type Number -AddToDefaultView | Out-Null }
    "Choice"   { Add-PnPField -List $listTitle -DisplayName $col.DisplayName -InternalName $col.InternalName -Type Choice -Choices ($col.Choices -split "\|") -AddToDefaultView | Out-Null }
    "Person"   { Add-PnPField -List $listTitle -DisplayName $col.DisplayName -InternalName $col.InternalName -Type User -AddToDefaultView | Out-Null }
    "DateTime" { Add-PnPField -List $listTitle -DisplayName $col.DisplayName -InternalName $col.InternalName -Type DateTime -AddToDefaultView | Out-Null }
  }
}
Write-Host "List and columns ready."
