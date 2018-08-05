if [ "$#" -ne 2 ]
then
  echo ""
  echo ""
  echo "Usage: Branch report for review then pass following paramters"
  echo ""
  echo "./sonar-DOJO-branch.sh -Dtrack=Yourtrackname(admin/bgs/commerce/mkt) -Dsonar.branch=Your branch path"
  echo ""
  echo ""
  exit 1
fi

export JAVA_HOME=/app/jdk1.8.0_112;
/app/apache-ant/bin/ant -f ../execute_sonar.xml -Dbranch=true -Dservername=prod  sonar $*
