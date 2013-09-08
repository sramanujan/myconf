alias cocos="cd /Users/sramanujan/Documents/cocos2d-x"
alias bingo="cd /Users/sramanujan/Documents/ZBingo"
alias castle="cd /Users/sramanujan/Documents/CastleVille/dev_sramanujan"
alias castlegit="cd /Users/sramanujan/Documents/CastleVille/CastleVille"
alias empire="cd $ZLA_GAME_PATH"
alias castledebug="ssh -R 9999:localhost:9999 dev2-dallas-31.zc2.zynga.com"
alias castledataclient="cd /Users/sramanujan/Documents/CastleVille/DataTool/Client"
alias castledataserver="cd /Users/sramanujan/Documents/CastleVille/DataTool/Server"
alias castledata="cd /Users/sramanujan/Documents/CastleVille/DataTool"
alias castledevtool="cd /Users/sramanujan/Documents/CastleVille/devtool"
alias castlebuild="cd /Users/sramanujan/Documents/CastleVille/build"
alias castledeploy="cd /Users/sramanujan/Documents/CastleVille/deploy"
for ((i=22;i<=33;i++));
do
  alias "$i"="sssh dev2-dallas-$i.zc2.zynga.com -A"
done
function sssh()
{
    ssh $1 "curl -L https://github.com/sramanujan/myconf/raw/master/scripts/install | sh >>/tmp/sramanujan-myconf.log 2>&1";
    ssh $@;
}
