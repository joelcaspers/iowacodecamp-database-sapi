## IowaCodeCamp.com Database System API ##

*iowacodecamp-database-sapi* is a system layer API used to support interfaces with the backend Iowa Code Camp website (http://iowacodecamp.com/) database written with Mulesoft 4 and MS SQL Server. 

This application is setup with a basic set of initial services intended facilitate a realistic example of exercises we perform as developers at UFG (web development) and will be used for new hire and candidate interviews. It is based on the following problem posed to previous candidates to better understand their ability to be successful as a developer at UFG. 

[The Code Camp Problem](https://github.com/joelcaspers/IowaCodeCampWebAPI/blob/master/TheCodeCampProblem.pdf)

### Getting Started ###

#### Developer Tools ####

If you don't already have your own personal Mulesoft developer account, sign up for one here: https://anypoint.mulesoft.com/login/. Open the support site here: https://help.mulesoft.com/user/profile, the enter here to download the latest Anypoint Studio IDE: https://help.mulesoft.com/s/downloads. 

Install maven https://maven.apache.org/download.cgi

Install free JDK https://adoptopenjdk.net/ 

Install SQL Server Express https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/sql-server-express-localdb?view=sql-server-ver15

Install SQL Server Management Studio https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15

Install Postman https://www.postman.com/downloads/

[Install Visual Studio](https://docs.microsoft.com/en-us/visualstudio/install/install-visual-studio?view=vs-2019)


#### Database Setup #### 

Upgrade LocalDB data store (.mdf database file) with a newer version of SQL Express if necessary https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2015/data-tools/upgrade-dot-mdf-files?view=vs-2015&redirectedfrom=MSDN

*.mdf backup database file to import into your local SQL Server Express instance: TODO already in repo needs link

Using SQL Server Management Studio, in order to have access to import the .mdf file into your SQL Server Express instance, you must copy it into C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA folder and reference that folder from the import dialogue in SSMS 

Enable Named Pipes and restart SQL Server Service: TODO graphics

1.       Open "SQL Server Configuration Manager" (the name may vary slightly depending on which version of SQL Server you have installed) on your local computer. (to do this, click on Start, all programs, Microsoft Sql Server 2012 - or the most current version here, Configuration Tools, then you should see this "SQL Server Configuration Manager".)

2.       Click "yes" on the first window. Click through all the options in the left window, click on each line individually here.  While doing that, make sure any "TCP/IP" and "Named Pipes" in the right window are enabled, but only the ones listed as either a "TCP/IP" or an "Named Pipes" change.  There will be four or five places and some may be enabled already and some not labeled tcp/ip or named pipes will remain disabled.

3.       Highlight "SQL Server Services" in the left window.    In the right window, right-click on "SQL Server (MSSQLSERVER)" and select "restart."

Mule API connection string configuration reference and setup of integrated authentication to the database https://help.mulesoft.com/s/article/How-to-use-Windows-Authentication-in-Database-Connector-with-Microsoft-SQL-Server-in-Mule4 - this has already been configured in the application, but you will need to download the referenced SQL .dll dependency and follow the instructions to copy it to your JDK folder (see Anypoint Studio properties to find the bundled JDK installed with Anypoint Studio). 

#### Anypoint Platform ####
TODO Design Center Edits/import into the application. 

#### Anypoint Studio Launch Configuration #### 
Ensure you add VM argument -M-Danypoint.platform.gatekeeper=disabled to the run/debug launch configuration. 

### The IowaCodeCamp.com Project Exercise ###
TODO list out background, expectations, reference the other project repositories, UI, etc
TODO new feature to build 


