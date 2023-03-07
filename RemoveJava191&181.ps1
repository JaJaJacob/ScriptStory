Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Remove-Item -Path Registry::HKEY_CLASSES_ROOT\Installer\Products\4EA42A62D9304AC4784BF2238110190F -Confirm -Force

pause

Remove-Item -Path Registry::HKEY_CLASSES_ROOT\Installer\Products\4EA42A62D9304AC4784BF2238110180F -Confirm -Force