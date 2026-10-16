@echo off
setlocal
cd /d "%~dp0.."
set "JEKYLL_ENV=development"
call bundle exec jekyll serve --config _config.yml,_config_dev.yml --livereload %*
exit /b %errorlevel%
