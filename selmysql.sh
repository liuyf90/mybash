#!/bin/bash
#通过配置~/.mysqlcnf目录下的.cnf文件来增加多个mysql的配置
select mysql in  `ls -a ~/.mysqlcnf | grep .cnf` ;
do [[$mysql]] 
      mysql --defaults-extra-file=~/.mysqlcnf/$mysql  ;
      break;
  done
