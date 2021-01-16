package com.xxx.generator;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

/**
 * 执行 main 方法控制台输入模块表名回车自动生成对应项目目录中
 *
 * @author zhoubin
 * @since 1.0.0
 */

public class CodeGenerator {
    public static void main(String[] args) {

        AutoGenerator autoGenerator = new AutoGenerator();
        DataSourceConfig dataSourceConfig = new DataSourceConfig();
        dataSourceConfig.setDbType(DbType.MYSQL);
        dataSourceConfig.setDriverName("com.mysql.cj.jdbc.Driver");
        dataSourceConfig.setUsername("root");
        dataSourceConfig.setPassword("Bing_yu2001");
        dataSourceConfig.setUrl("jdbc:mysql://localhost:3306/yeb?useUnicode=true&characterEncoding=UTF-8");
        autoGenerator.setDataSource(dataSourceConfig);
        GlobalConfig globalConfig = new GlobalConfig();
        globalConfig.setOpen(true); // 代码生成后打开目录
        globalConfig.setOutputDir(System.getProperty("user.dir")+"/src/main/java");
        globalConfig.setAuthor("Bing");
//        globalConfig.setIdType(IdType.ASSIGN_ID);// id 主键策略
//        globalConfig.setDateType(DateType.ONLY_DATE); // 定义生成的实体类中日期类型
        globalConfig.setSwagger2(true);// 开启Swaggers模式
        globalConfig.setServiceName("%sService");
        autoGenerator.setGlobalConfig(globalConfig);
        PackageConfig packageConfig = new PackageConfig();
        packageConfig.setParent("com.xxx");
        packageConfig.setEntity("pojo");
        packageConfig.setMapper("mapper");
        packageConfig.setController("controller");
        packageConfig.setService("service");
        packageConfig.setServiceImpl("service.impl");
        autoGenerator.setPackageInfo(packageConfig);
        StrategyConfig strategyConfig = new StrategyConfig();

//        strategyConfig.setInclude("t_admin"); // 生成单表写法
        // strategyConfig.setInclude("user","product"); // 生成多张表写法。生成所有表，不用配置
        strategyConfig.setTablePrefix("t"+"_"); // 去表前缀 t,根据实际情况填写

        strategyConfig.setEntityLombokModel(true);
        strategyConfig.setNaming(NamingStrategy.underline_to_camel);
        strategyConfig.setColumnNaming(NamingStrategy.underline_to_camel);

//        List<TableFill> list = new ArrayList<>();
//        TableFill tableFill1 = new TableFill("create_time", FieldFill.INSERT);
//        TableFill tableFill2 = new TableFill("update_time",FieldFill.INSERT_UPDATE);
//        list.add(tableFill1);
//        list.add(tableFill2);

//        strategyConfig.setTableFillList(list);
        autoGenerator.setStrategy(strategyConfig);

        autoGenerator.execute();
    }
}

