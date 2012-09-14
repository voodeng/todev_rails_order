var ddb = $.parseJSON('{"product":1,"custom":{"纸张":1,"克数":5,"尺寸":9}}')

$("input:radio:checked") //1.获取已经勾选的radio元素
var custom = $("input:radio:checked")

var jsons = '{ "project_id" : 2 , "custom":{ "'+ custom[0].name +'" : ' + custom[0].value + ' }  }'

var jsons = '{ "project_id" : 2 , "custom":{ 
'+ custom[0].name +'" : ' + custom[0].value + '
 } }'
 
//TODO: 输出有用的信息成为json格式,添加标识符
// 理想中的格式应该是 {"product":1,"custom":{"纸张":1,"克数":5,"尺寸":9}}
// 对于新开的页面，读取json，并用jquery进行动态赋值，即勾选状态
// 

$("#atoline").click( function(){
var sa = new Array();
var tree = $("input:radio:checked");
for (i=0; i<tree.length; i++){
sa += tree[i].value
}
alert(sa);
}
)


<%= button_to 'add to proitem', proitems_path(:product_id => @product), :id=>"atoline" %>