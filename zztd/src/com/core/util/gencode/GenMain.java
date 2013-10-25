package com.core.util.gencode;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

import com.core.sys.domain.Attribute;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * Action代码产生器,根据Action类模板用FreeMarker产生Action代码.
 * <br>模板例子请参照config目录下的action.ftl
 * @author HuangYu , 2013.9 modify by liuchao
 */
public class GenMain {

    private Configuration cfg;
    private String templateDir = "F:/workspace-64/frame/GenTemplate";
    //TODO 修改输出位置
    private String outputDir = "F:/workspace-64/frame/WebContent/download/code/";
    
    public GenMain() throws IOException{
        init();
    }
    
    public GenMain(String realPath) throws IOException{
    	outputDir = realPath+"download/code/";
    	templateDir = realPath + "WEB-INF/classes/ftl";
        init();
    }

    public void setOutputDir(String outputDir) {
        this.outputDir = outputDir;
    }

    public void setTemplateDir(String templateDir) throws IOException {
        this.templateDir = templateDir;
        cfg.setDirectoryForTemplateLoading(new File(templateDir));
    }

    public void init() throws IOException {
        // Initialize the FreeMarker configuration;
        // - Create a configuration instance
        cfg = new Configuration();
        File templateDir = new File(this.templateDir);
        cfg.setDirectoryForTemplateLoading(templateDir);
        cfg.setLocale(Locale.CHINA);
        cfg.setDefaultEncoding("UTF-8");
    }
    /*****
     * 根据Model类产生Struts2配置代码
     * @param className Model类的名字，如：User
     * @param packageName 模块包的名字，如：com.sys
     */
    public void generateStruts2(String className,String packageName){
    	String instanceName = StringUtils.lowerCase(className);
    	System.out.println("请在Struts配置文件添加以下配置：");
    	System.out.println("<action name=\""+instanceName+"_*\" class=\""+instanceName+"Action\" method=\"{1}\">");
    	System.out.println("    <result name=\"result-json\" type=\"json\">");
    	System.out.println("        <param name=\"root\">result</param>");
    	System.out.println("    </result>");
    	System.out.println("    <result name=\"result-jsp\">/"+instanceName+"/result.jsp</result>");
    	System.out.println("    <result name=\"index\">/"+instanceName+"/index.jsp</result>");
    	System.out.println("    <result name=\"intoUpdate\">/"+instanceName+"/update.jsp</result>");
    	System.out.println("</action>");
    }
    /*****
     * 根据Model类产生Action Service Mapper类代码，如UserAction.java
     * @param className Model类的名字，如：User
     * @param packageName 模块包的名字，如：com.sys
     * @param type Model类的类型，如：Action Service ServiceImpl
     */
    public void generateJava(String className,String packageName,String type) throws IOException{
    	String classpath = packageName.replace(".", "/");
    	if("Service".equals(type)){
    		classpath = this.outputDir + "src/" + classpath + "/service/";
    	}else if("ServiceImpl".equals(type)){
    		classpath = this.outputDir + "src/" + classpath + "/service/impl/";
    	}else if("Action".equals(type)){
    		classpath = this.outputDir + "src/" + classpath + "/action/";
    	}else if("Mapper".equals(type)){
    		classpath = this.outputDir + "src/" + classpath + "/persistence/";
    	}
    	JavaModel model=new JavaModel();
    	model.setClassName(className);
    	model.setPackageName(packageName);
        // Build the data-model
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("model", model);
        
        // Get the templat object
        Template template = cfg.getTemplate(type + ".java.ftl","UTF-8");
        
        org.apache.commons.io.FileUtils.forceMkdir(new File(classpath));
        File output = new File(classpath, className + type +".java");
        Writer writer = new FileWriter(output);
        
        // Merge the data-model and the template
        try {
            template.process(data, writer);
        } catch (TemplateException e) {
            e.printStackTrace();
        }
        
    }
    /*****
     * 根据Model类产生MapperXml代码，如UserAction.java
     * @param className Model类的名字，如：User
     * @param packageName 模块包的名字，如：com.sys
     * @throws ClassNotFoundException 
     * @throws SecurityException 
     */
    public void generateMapperXml(String className,String packageName) throws Exception{
    	String classpath = packageName.replace(".", "/");
    	classpath = this.outputDir + "src/" + classpath + "/persistence/";
    	
    	JavaModel model=new JavaModel();
    	model.setClassName(className);
    	model.setPackageName(packageName);
    	// get Class Attr
    	Field[] fields = Class.forName(packageName + ".domain."+className).getDeclaredFields();   
		model.setFields(fields);
        // Build the data-model
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("model", model);
        
        // Get the templat object
        Template template = cfg.getTemplate("Mapper.xml.ftl");
        
        FileUtils.forceMkdir(new File(classpath));
        File output = new File(classpath, className +"Mapper.xml");
        FileOutputStream fos = new FileOutputStream(output);
        Writer writer = new OutputStreamWriter(fos, "UTF-8");
        
        // Merge the data-model and the template
        try {
            template.process(data, writer);
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }
    /*****
     * 根据Model类产生Action Service Mapper类代码，如UserAction.java
     * @param className Model类的名字，如：User
     * @param packageName 模块包的名字，如：com.sys
     * @param type Model类的类型，如：Action Service ServiceImpl
     */
    public void generateJsp(String className,String packageName,String type) throws Exception{
    	String classpath  = this.outputDir + "WebContent/" + StringUtils.lowerCase(className) + "/";
    	JavaModel model=new JavaModel();
    	model.setClassName(className);
    	// get Class Attr
    	Field[] fields = Class.forName(packageName + ".domain."+className).getDeclaredFields();   
		model.setFields(fields);
		
    	//Map<String,String> pager = new HashMap<String,String>();
    	//pager.put("total", "${pager.total}");
    	//pager.put("offset", "${pager.offset}");
        // Build the data-model
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("model", model);
       // data.put("contextPath","${contextPath}");
       // data.put("pager", pager);
        //data.put("pageUrl", "${pageUrl}");
        //data.put("currentPageTest", "${currentPageNumber == pageNumber}");
       // data.put("pageNumber","${pageNumber}");
       // data.put("backurl", "${backurl}");
       // data.put("result", "${result}");
        data.put("el", "$");
        // Get the templat object
        Template template = cfg.getTemplate(type + ".ftl");
        
        org.apache.commons.io.FileUtils.forceMkdir(new File(classpath));
        File output = new File(classpath, type);
        Writer writer = new FileWriter(output);
        
        // Merge the data-model and the template
        try {
            template.process(data, writer);
        } catch (TemplateException e) {
            e.printStackTrace();
        }
        
    }
    /*****
     * 根据Model类产生Struts2配置代码
     * @param className Model类的名字，如：User
     * @param packageName 模块包的名字，如：com.sys
     */
    public void autoGenerate(String className,String packageName) throws Exception {
    	generateJava(className,packageName,"Mapper");
    	generateJava(className,packageName,"Service");
        generateJava(className,packageName,"ServiceImpl");
        generateJava(className,packageName,"Action");
        generateMapperXml(className,packageName);
        System.out.println("Java代码已生成，位置:"+outputDir + "src/");
        generateJsp(className,packageName,"index.jsp");
        generateJsp(className,packageName,"add.jsp");
        generateJsp(className,packageName,"update.jsp");
        generateJsp(className,packageName,"result.jsp");
        System.out.println("Jsp代码已生成，位置:"+outputDir + "WebContent/");
        generateStruts2(className,packageName);
    }
    
	public void generateJavaClass(String packageName, String className,
			List<Attribute> attrs) throws Exception {
		// TODO Auto-generated method stub
		String classpath = packageName.replace(".", "/");
		classpath = this.outputDir + "src/" + classpath + "/domain/";
  
    	JavaModel model=new JavaModel();
    	model.setClassName(className);
    	model.setPackageName(packageName);
    	model.setAttrs(attrs);
        // Build the data-model
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("model", model);
        
        // Get the templat object
        Template template = cfg.getTemplate("Domain.java.ftl");
        
        org.apache.commons.io.FileUtils.forceMkdir(new File(classpath));
        File output = new File(classpath, className +".java");
        Writer writer = new FileWriter(output);
        
        // Merge the data-model and the template
        try {
            template.process(data, writer);
        } catch (TemplateException e) {
            e.printStackTrace();
        }
	}
	
    /****
     * 测试，根据Model类生成相应的Action
     */
    public static void main(String[] args) throws Exception {
        //GenMain gen = new GenMain();
        //TODO 修改包名 类名
        //gen.autoGenerate("Project","com.team.loan");
    }

}
