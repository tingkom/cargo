<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<%@include file="head.jspf" %>
	<link rel="stylesheet" type="text/css" href="mystyle.css" />
  <script type=text/javascript>
		$(function(){
			$('#gtab').datagrid({    
			  //请求的url地址
			    url:'rebate_listCustId.action', 
			    queryParams :{custId:''},
			   loadMsg:'请等待...',
				//隔行换色——斑马线
				fit:true,
				striped:true,
				//数据同行显示
				nowrap:true,
				//自动适应列，如设为true则不会出现水平滚动条，在演示冻结列此参数不要设置
				fitColumns:true,
				//单行选择，全选功能失效
				singleSelect:true,
				//显示分页条				
				pagination:true,
				//同列属性，冰结在最左侧
				frozenColumns:[[
					{field:'z',checkbox:true},
					{field:'id',title:'id',width:100}
					
				]],
				toolbar: [{
					iconCls: 'icon-add',
					handler: function(){alert('新建按钮')}
					},
					{
					iconCls: 'icon-edit',
					handler: function(){
					
						alert('编辑按钮')
					}
					},
					{
					iconCls: 'icon-remove',
					handler: function(){alert('删除按钮')}
					},
					'-',
					{
					iconCls: 'icon-reload',
					handler: function(){alert('刷新按钮')}
					},
					{
					iconCls: 'icon-help',
					handler: function(){alert('帮助按钮')}
				}],
				
			    columns:[[ 
		        {field:'billId',title:'单据编号'}, 
		        {field:'company',title:'公司名称'},
		        {field:'companyCode',title:'公司编码',align:'right'} ,
		        {field:'contract',title:'合同号',align:'right'},
		         {field:'bitch',title:'运输批次',align:'right'},
		          {field:'custId',title:'客户',align:'right'},
		           {field:'source',title:'货源地',align:'right'},
		            {field:'tradeType',title:'贸易类型',align:'right'},
		             {field:'contract',title:'合同号',align:'right'},
		              {field:'contract',title:'合同号',align:'right'},
		        {field:'sddate',title:'接收日期',align:'right'}
				]]    
			});
		//设置分页控件  
	    var p = $('#gtab').datagrid('getPager');  
	    $(p).pagination({  
	        pageSize: 10,//每页显示的记录条数，默认为10  
	        pageList: [5,10,15],//可以设置每页记录条数的列表  
	        beforePageText: '第',//页数文本框前显示的汉字  
	        afterPageText: '页    共 {pages} 页',  
	        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',  
	        /*onBeforeRefresh:function(){ 
	            $(this).pagination('loading'); 
	            alert('before refresh'); 
	            $(this).pagination('loaded'); 
	        }*/  
	    });
			
			$('#wtab').datagrid({
				//请求的url地址
			    url:'rebate_listCustId.action', 
			    queryParams :{custId:''},
			   loadMsg:'请等待...',
				//隔行换色——斑马线
				fit:true,
				striped:true,
				//数据同行显示
				nowrap:true,
				//自动适应列，如设为true则不会出现水平滚动条，在演示冻结列此参数不要设置
				fitColumns:true,
				//单行选择，全选功能失效
				singleSelect:true,
				//显示分页条				
				pagination:true,
				//同列属性，冰结在最左侧
				frozenColumns:[[
					{field:'z',checkbox:true},
					{field:'id',title:'id',width:100}
					
				]],
				toolbar: [{
					iconCls: 'icon-add',
					handler: function(){alert('新建按钮')}
					},
					{
					iconCls: 'icon-edit',
					handler: function(){
					
						alert('编辑按钮')
					}
					},
					{
					iconCls: 'icon-remove',
					handler: function(){alert('删除按钮')}
					},
					'-',
					{
					iconCls: 'icon-reload',
					handler: function(){alert('刷新按钮')}
					},
					{
					iconCls: 'icon-help',
					handler: function(){alert('帮助按钮')}
				}],
				
			    columns:[[ 
		        {field:'billId',title:'单据编号'}, 
		        {field:'company',title:'公司名称'},
		        {field:'companyCode',title:'公司编码',align:'right'} ,
		        {field:'contract',title:'合同号',align:'right'},
		         {field:'bitch',title:'运输批次',align:'right'},
		          {field:'custId',title:'客户',align:'right'},
		           {field:'source',title:'货源地',align:'right'},
		            {field:'tradeType',title:'贸易类型',align:'right'},
		             {field:'contract',title:'合同号',align:'right'},
		              {field:'contract',title:'合同号',align:'right'},
		        {field:'sddate',title:'接收日期',align:'right'}
				]]    
			});
		//设置分页控件  
	    var p = $('#wtab').datagrid('getPager');  
	    $(p).pagination({  
	        pageSize: 10,//每页显示的记录条数，默认为10  
	        pageList: [5,10,15],//可以设置每页记录条数的列表  
	        beforePageText: '第',//页数文本框前显示的汉字  
	        afterPageText: '页    共 {pages} 页',  
	        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',  
	        /*onBeforeRefresh:function(){ 
	            $(this).pagination('loading'); 
	            alert('before refresh'); 
	            $(this).pagination('loaded'); 
	        }*/  
	    });
		$('#retab').propertygrid({    
			url: 'json_data.json',    
			showGroup: true,    
			scrollbarSize: 0    
		});  

		
		
		
		});
		
		</script>
	
</head>
	
<body>
	<div id="container">
	
	<div id="top" align="center">
			
	</div>
	<div id="middle">
	<div id="lside">
		<div>
			<table id="retab" >				
				
			</table>
		</div>
	
	
	</div>
	<div id="rside">
		<div id="rsidetop">		
		<table id="gtab" ></table>
		</div>
		<div id="footer">
			
			<table id="wtab" ></table>
	
	</div>
	</div>
	
	</div>
	
	</div>
</body>
</html>