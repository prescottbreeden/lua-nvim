" ========================
"       Cheat Sheet
" ========================
"
" highlight duplicates:
:g/^\(.*\)$\n\(\_.*\)\(^\1$\)/

" remove all but filename in a path:
:s/!.*/!!

" copy file path
:let @" = expand("%")

" orchestrator/ExecutionStateHydrator.java
" orchestrator/SourceSampler.java
" orchestrator/TableValidator.java
" connector/postgresql/PostgresqlDialectConnector.java
" connector/bigquery/BigQueryDialectConnector.java
" connector/api/DialectConnector.java
model/report/SampleMetadata.java
model/context/ExecutionState.java


