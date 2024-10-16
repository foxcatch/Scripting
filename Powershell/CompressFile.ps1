$ComporessFile = @{
  Path = "file1", "file2"
  CompressionLevel = "Fastest"
  # fastest nocomporess optimaiz
  DestinationPath = "path"
}

Compress-Archive $comporessfile

$ExtractFile=@{
   path = ""
   DestinationPath = ""

}

Expand-Archive $ExtractFile