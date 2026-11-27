$version = (git tag --sort=-creatordate | Select-Object -First 1)
 
$ultimaMigracion = (
    Get-ChildItem .\sql\V*.sql |
    Sort-Object Name |
    Select-Object -Last 1
).BaseName
 
$ultimaMigracion = $ultimaMigracion.Split("_")[0]
 
$fecha = Get-Date -Format "yyyy-MM-dd"
 
Copy-Item README.md README.backup.md -Force
 
$readme = Get-Content README.md -Raw
 
$readme = $readme -replace '\*\*Versión actual:\*\* `.*?`', "**Versión actual:** `"$version`""
 
$readme = $readme -replace '\*\*Última migración:\*\* `.*?`', "**Última migración:** `"$ultimaMigracion`""
 
$readme = $readme -replace '\*\*Última actualización:\*\* .*', "**Última actualización:** $fecha"
 
if ([string]::IsNullOrWhiteSpace($readme))
{
    Write-Host "ERROR: README vacío. Operación cancelada."
    exit 1
}
 
Set-Content README.md $readme
 
Write-Host ""
Write-Host "README actualizado correctamente"
Write-Host "Version: $version"
Write-Host "Migracion: $ultimaMigracion"
Write-Host "Fecha: $fecha"
Write-Host ""