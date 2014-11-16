alias cocosx="cd /Users/srinath/Documents/cocos2d-x"
alias cocosjs="cd /Users/srinath/Documents/cocos2d-js"
alias bingodev="sssh dev-1.bingo.moonfroglabs.in -A"
alias tbingo="sssh t.bingo.moonfroglabs.com -A"
alias tambola="cd /Users/srinath/Documents/tambola"
alias teenpatti="cd /Users/srinath/Documents/teenpatti"
alias squirrel="cd /Users/srinath/Documents/squirrel"
alias professor="cd /Users/srinath/Documents/professor"
alias mflxpgame="cd /Users/srinath/Documents/mflxpgame"
alias castle="cd /Users/srinath/Documents/CastleVille/dev_srinath"
alias castlegit="cd /Users/srinath/Documents/CastleVille/CastleVille"
alias empire="cd $ZLA_GAME_PATH"
alias castledebug="ssh -R 9999:localhost:9999 dev2-dallas-31.zc2.zynga.com"
alias castledataclient="cd /Users/srinath/Documents/CastleVille/DataTool/Client"
alias castledataserver="cd /Users/srinath/Documents/CastleVille/DataTool/Server"
alias castledata="cd /Users/srinath/Documents/CastleVille/DataTool"
alias castledevtool="cd /Users/srinath/Documents/CastleVille/devtool"
alias castlebuild="cd /Users/srinath/Documents/CastleVille/build"
alias castledeploy="cd /Users/srinath/Documents/CastleVille/deploy"
for ((i=22;i<=33;i++));
do
  alias "$i"="sssh dev2-dallas-$i.zc2.zynga.com -A"
done
function sssh()
{
    ssh -t $@ "`cat ~/myconf/scripts/install` bash -l"
}
alias vim="vim -u ~/.vimrc"
