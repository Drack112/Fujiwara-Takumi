###########
# COLORS
############
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
printf "${RED}Executando verificação.${NC}\n"
###############################################

printf "${GREEN}run.rb${NC} - > "
ruby -wc run.rb

printf "${GREEN}src/bot.rb${NC} -> "
ruby -wc src/bot.rb

###############################################

printf "${GREEN}src/modules/events/ready.rb${NC} -> "
ruby -wc src/modules/events/ready.rb

printf "${GREEN}src/modules/events/mention.rb${NC} -> "
ruby -wc src/modules/events/mention.rb

printf "${GREEN}src/modules/commands/fun/avatar.rb${NC} -> "
ruby -wc src/modules/commands/fun/avatar.rb

printf "${GREEN}src/modules/commands/fun/cat.rb ->${NC} "
ruby -wc src/modules/commands/fun/cat.rb

printf "${GREEN}src/modules/commands/fun/dog.rb ->${NC} "
ruby -wc src/modules/commands/fun/dog.rb

printf "${GREEN}src/modules/commands/fun/emoji.rb ->${NC} "
ruby -wc src/modules/commands/fun/emoji.rb

printf "${GREEN}src/modules/commands/fun/faces.rb ->${NC} "
ruby -wc src/modules/commands/fun/faces.rb

###############################################

printf "${GREEN}src/modules/commands/moderation/prune.rb ->${NC} "
ruby -wc src/modules/commands/moderation/prune.rb

###############################################

printf "${GREEN}src/modules/commands/utility/about.rb ->${NC} "
ruby -wc src/modules/commands/utility/about.rb

printf "${GREEN}src/modules/commands/utility/github.rb ->${NC} "
ruby -wc src/modules/commands/utility/github.rb

printf "${GREEN}src/modules/commands/utility/help.rb ->${NC} "
ruby -wc src/modules/commands/utility/help.rb

printf "${GREEN}src/modules/commands/utility/invite.rb ->${NC} "
ruby -wc src/modules/commands/utility/invite.rb

printf "${GREEN}src/modules/commands/utility/ping.rb ->${NC} "
ruby -wc src/modules/commands/utility/ping.rb
