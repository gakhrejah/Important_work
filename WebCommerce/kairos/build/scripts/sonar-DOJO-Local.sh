if [ "$#" -ne 1 ]
then
  echo ""
  echo ""
  echo "Usage: If generating local html report then pass trackname as parameter--->> ./sonar-DOJO-local.sh -Dtrack=Your track name as admin/bgs/commerce/mkt"
  echo ""
  echo ""
  exit 1
fi
export JAVA_HOME=/app/jdk1.8.0_112;

/app/apache-ant/bin/ant -f ../execute_sonar.xml -Dservername=prod  sonar $*
