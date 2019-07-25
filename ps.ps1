# Set the name of the new parent folder
$newFolder = 'YourNameHere';

# Set the path of the csv file
$path = "folders.csv"

# Create the new parent folder
New-Item -Path "/" -Name $newFolder -ItemType "directory"

# Loop through csv data
Import-Csv $path | Foreach-Object { 

    foreach ($property in $_.PSObject.Properties)
    {
	New-Item -Path $newFolder -Name $property.Value -ItemType "directory"
    } 

}