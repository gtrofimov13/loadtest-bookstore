# Set LTC Report Home
var report-root = C:\CONTINUOUS_LOAD_TEST


# Set Project Info
var project = Bookstore-Consistency
var test-name = bookstore


# Set the variable values according to your needs
var scenario = "Steady Load"
#var base = C:/Parasoft/loadtest/git/
var category = BackComp.SOAtest.Consistency
var minutes = 5
var localsettings = lt.properties

# Run Test
open ${test-name}.lt
loadtest -minutes ${minutes} -localsettings ${localsettings} -allReports ${report-root}/${project}/%d/${category}/${test-name} ${scenario}
