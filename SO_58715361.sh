#/bin/bash

INPUT='{"CAMPOS":[{"CAMPO_ID":13071,"CAMPO_COD":"JJ1111-000","CAMPO_NAME":"Valor 1"},{"CAMPO_ID":13072,"CAMPO_COD":"JJ1111-004","CAMPO_NAME":"Valor2"},{"CAMPO_ID":13073,"CAMPO_COD":"JJ1111-01","CAMPO_NAME":"diversos valores"}, {"CAMPO_ID":13075,"CAMPO_COD":"JJ1111-02","CAMPO_NAME":"qualquer valor"}]'

sed 's/.*CAMPO_ID":\([[:digit:]]*\).*/\1 /' <<< "$INPUT"
