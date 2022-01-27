echo ""
echo "Checking Warnings..."

export JAVA_HOME="${JAVA_HOME}"
mvn -f pom.xml -ntp "-DcompileOptionXlint=-Xlint:all" "-DcompileOptionXdoclint=-Xdoclint:all/private" "-DcompileOptionFail=true" "-Dmaven.compiler.showWarnings=true" clean compile
result=$?

echo "Result was -->$result<--"

# add annotation if failed
if [[ -n "$result" ]];
then
  if [[ $result -ne 0 ]];
  then
    echo "Hello world"
    exit $result;
  fi
fi

exit 0;
