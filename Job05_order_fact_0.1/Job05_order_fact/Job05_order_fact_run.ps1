$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' -cp '.;../lib/routines.jar;../lib/log4j-slf4j-impl-2.13.2.jar;../lib/log4j-api-2.13.2.jar;../lib/log4j-core-2.13.2.jar;../lib/ojdbc8-19.3.0.0.jar;../lib/jboss-marshalling-2.0.12.Final.jar;../lib/dom4j-2.1.3.jar;../lib/talend-oracle-timestamptz.jar;../lib/slf4j-api-1.7.29.jar;../lib/crypto-utils-0.31.12.jar;job05_order_fact_0_1.jar;' bi_project.job05_order_fact_0_1.Job05_order_fact --context=Default $args
