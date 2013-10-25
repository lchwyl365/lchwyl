package ${model.packageName}.domain;

import java.io.Serializable;

public class ${model.className} implements Serializable {
	
    <#list model.attrs as attr>
		private ${attr.attrType} ${attr.attrName};	
		  
	</#list>
	<#list model.attrs as attr>
		public ${attr.attrType} get${attr.attrName?cap_first}() {
			   return ${attr.attrName};
			}
		
		public void set${attr.attrName?cap_first}(${attr.attrType} ${attr.attrName}) {
			   this.${attr.attrName} = ${attr.attrName};
			}
		
	</#list>
}