@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=f700b9ad-827f-4370-abc2-dfabe6e4f870
set azure_storage_account=cognitivesearchsajmco
set azure_storage_key=ZhNH8IWaG2GxC/JwLDUBgnLvM+2RrdfKTQ5WjlE+NpSPAl2sGA/CLlzj6rbWNiI4WBrfnXHR6VJE+AStwPmNaQ==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
