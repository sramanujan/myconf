alias cocos="cd /Users/srinath/Documents/cocos2d-x"
alias bingo="cd /Users/srinath/Documents/ZBingo"
alias tbingo="sssh t.bingo.moonfroglabs.com -A"
alias tambola="cd /Users/srinath/Documents/tambola"
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
    ssh $1 "curl -L https://github.com/sramanujan/myconf/raw/master/scripts/install | bash >>/tmp/srinath-myconf.log 2>&1";
    ssh $@;
}
alias vim="vim -u ~/.vimrc"
