iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex
if ($?) {
    Write-Host "Spicetify CLI installed successfully."
} else {
    Write-Host "Failed to install Spicetify CLI."
}
iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex
if ($?) {
    Write-Host "Spicetify Marketplace installed successfully."
} else {
    Write-Host "Failed to install Spicetify Marketplace."
}
