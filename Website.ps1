Configuration Website
{
  param (
      $MachineName="localhost",
	    $Action="Present"
	)

  Node $MachineName
  {
    #Install the IIS Role
    WindowsFeature IIS
    {
      Ensure = $Action
      Name = "Web-Server"
    }

    #Install ASP.NET 4.5
    WindowsFeature ASP
    {
      Ensure = $Action
      Name = "Web-Asp-Net45"
    }

     WindowsFeature WebServerManagementConsole
    {
        Name = "Web-Mgmt-Console"
        Ensure = $Action
    }
  }
} 