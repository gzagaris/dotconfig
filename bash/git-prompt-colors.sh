
# This is the custome theme template for gitprompt.sh

override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${BoldGreen} [${USER}@${HOSTNAME%%.*}]: ${Yellow}${PathShort}${ResetColor}"
  GIT_PROMPT_START_ROOT="${GIT_PROMPT_START_USER}"
}


reload_git_prompt_colors "Custom"
