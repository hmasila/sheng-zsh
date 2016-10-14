declare -A good
declare -A bad

goodemojis=( fire muscle pointright facepunch smile sunglasses flower thumb clap )
bademojis=( rollingeyes pouting confused flushed middlefinger worried cross weed insect frog )

good[fire]="🔥  Mo fire"
good[muscle]="💪  Strong"
good[pointright]="👉  You smart"
good[facepunch]="👊  Shikilia uzito"
good[smile]="😄  Wazi boss"
good[sunglasses]="😎  Uko fiti"
good[moon]="🌝  Hapo sawa"
good[flower]="🌹  Kazi safi"
good[thumb]="👍  Fiti"
good[clap]="👏  Sawa"

bad[rollingeyes]="🙄  Acha ufala"
bad[pouting]="😡  Sipendagi ujinga"
bad[confused]="😕  Hizi ndio gani?"
bad[flushed]="😳  Buda uko poa?"
bad[middlefinger]="🖕  Ufala utaacha"
bad[worried]="😟  Akili muhimu"
bad[cross]="💔  Zii"
bad[weed]="🍁  Bangi utaacha"
bad[insect]="🐞  Unafanya?"
bad[frog]="🐸  Ufala utaacha"

# Get size
G=${#goodemojis[@]}
B=${#bademojis[@]}

# Random value
((G=(RANDOM%G)+1))
((B=(RANDOM%B)+1))

# Get random emoji names
G="$goodemojis[$G]"
B="$bademojis[$B]"

if [[ -n "$POA" ]]; then
  if [[ -n "$good[$POA]" ]]; then
    FITI=good[$POA]
  else
    echo "$fg_bold[red]$POA is invalid, setting a random one..."
    FITI="$good[$G]"
  fi
else
  FITI="$good[$G]"
fi

if [[ -n "$MBAYA" ]]; then
  if [[ -n "$bad[$MBAYA]" ]]; then
    ZUA=bad[$MBAYA]
  else
    echo "$fg_bold[red]$MBAYA is invalid, setting a random one..."
    ZUA="$bad[$B]"
  fi
else
  ZUA="$bad[$B]"
fi

local message="$fg_bold[green]$FITI   $fg_bold[red]$ZUA"

if [[ -z "$NYAMAZA" ]]; then
  echo "${message}"
fi

alias bonga='echo "${message}"'
alias badilisha='source ~/.zshrc'

local ret_status="%(?:%{$fg_bold[green]%}$FITI :%{$fg_bold[red]%}$ZUA )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) ✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}) ✔ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}) ✚ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}) ✹ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}) ✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}) ➜ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}) ═ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}) ✭ %{$reset_color%}"
