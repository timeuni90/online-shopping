<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<section class="content-header">
	<h1>
		商品信息 <small>维护</small>
	</h1>
</section>

<!-- Main content -->
<section class="content container-fluid">

	<!--------------------------
        | Your Page Content Here |
        -------------------------->
	<div class="row">
		<div class="col-xs-3 col-md-offset-9">
			<button type="button" class="btn btn-sm btn-primary"
				data-toggle="modal" data-target="#my_add_product_modal">
				<i class="fa fa-fw fa-plus-circle"></i>添加
			</button>
			<button type="button" id="my_shangjia" class="btn btn-sm bg-orange">
				<i class="fa fa-fw fa-check-square"></i>上架
			</button>
			<button type="button" id="my_xiajia" class="btn btn-sm bg-olive">
				<i class="fa fa-fw  fa-info-circle"></i>下架
			</button>
			<button type="button" id="batch_remove" class="btn btn-sm btn-danger">
				<i class="fa fa-fw fa-times-circle"></i>删除
			</button>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">

			<!-- /.box -->

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">商品列表</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div id="example1_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap">
						<div class="row">
							<div class="col-sm-12">

								<table class="table table-hover">
									<thead>
										<tr>
											<td><input id="my_check_all" type="checkbox"></td>
											<td>序号</td>
											<td>商品名</td>
											<td>状态</td>
											<td>售价</td>
											<td>库存</td>
											<td>销量</td>
											<td>操作</td>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<div class="dataTables_info" id="example1_info" role="status"
									aria-live="polite">共500条数据，50页，当前第1页</div>
							</div>
							<div class="col-sm-7">
								<div class="dataTables_paginate paging_simple_numbers"
									id="example1_paginate">
									<ul class="pagination pagination-sm ">
										<li class="paginate_button previous disabled"
											id="example1_previous"><a href="#"
											aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a>
										</li>
										<li class="paginate_button active"><a href="#"
											aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
										<li class="paginate_button next" id="example1_next"><a
											href="#" aria-controls="example1" data-dt-idx="7"
											tabindex="0">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
	<div class="modal fade" id="modal-product" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">添加商品</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="box-body">
							<div class="form-group">
								<label class="col-sm-2 control-label">商品名</label>
								<div class="col-sm-10">
									<input type="text" id="my_product" class="form-control"
										placeholder="输入商品名">
								</div>
							</div>

							<style>
#my_params .input_append {
	padding-left: 0px;
	text-align: left;
}

#my_params .input_append i, .my_params_value i {
	cursor: pointer;
	color: #3d9970;
}

.post_file {
	cursor: pointer;
}

.post_file i {
	color: #337ab7;
}

.fengexian {
	border-bottom: 1px solid #3d9970;
}
</style>
							<div class="form-group">
								<label class="col-sm-2 control-label">上传图片</label>
								<div class="col-sm-7">
									<div class="input-group">
										<input type="text" readonly="readonly" class="form-control">
										<span class="input-group-addon post_file post_image"
											title="上传图片"> <input type="file" accept="image/*"
											multiple="multiple" style="display: none;"> <i
											class="fa fa-fw fa-image (alias)"></i>
										</span>
									</div>
								</div>
							</div>
							<!-- <div class="form-group">
												<label class="col-sm-2 control-label">上传视频</label>
												<div class="col-sm-7">
													<div class="input-group">
														<input type="text" readonly="readonly" class="form-control">
														<span class="input-group-addon post_file post_video" title="上传视频">
															<input type="file" accept="video/*" style="display: none;">
															<i class="fa fa-fw fa-video-camera"></i>
														</span>
													</div>
												</div>
											</div> -->
							<div id="my_params">
								<div class="form-group">
									<label class="col-sm-2 control-label">参数名</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" placeholder="">
									</div>
									<label class="col-sm-1 control-label input_append"> <i
										class="fa fa-fw fa-plus-circle" id="param_name_adder"
										title="添加参数名"></i>
									</label>
								</div>
							</div>
							<div id="my_params_value_group">
								<div class="my_params_value">
									<h5 class="page-header fengexian"></h5>
									<div class="form-group">
										<label class="col-sm-2 control-label"> <i
											class="fa fa-fw fa-plus-circle" id="param_value_adder"
											title="添加参数值"></i> 参数值
										</label>
										<div class="col-sm-7">
											<div class="input-group">
												<span class="input-group-addon"></span> <input type="text"
													class="form-control"> <span
													class="input-group-addon post_file" title="上传图片"> <input
													type="file" accept="image/*" style="display: none;">
													<i class="fa fa-fw fa-file-image-o"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="form-group my_sale_price">
										<label class="col-sm-2 control-label"></label>
										<div class="col-sm-7">
											<div class="input-group">
												<span class="input-group-addon">售价￥</span> <input
													type="text" class="form-control price" placeholder="0.00">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label"></label>
										<div class="col-sm-7">
											<div class="input-group">
												<span class="input-group-addon">库存</span> <input type="text"
													class="form-control stock" placeholder="">
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- /.box-body -->
					</form>
				</div>
				<script>
									/* 增加key */
									function addParamInput() {
										$(this).parent().remove();
										var	form_group = `<div class="form-group">
															<label class="col-sm-2 control-label"></label>
															<div class="col-sm-7">
																<input type="text" class="form-control" placeholder="">
															</div>
															<label class="col-sm-1 control-label input_append">
																<i class="fa fa-fw fa-plus-circle" id="param_name_adder" title="添加参数名"></i>
															</label>
														  </div>`;
										$("#my_params").append(form_group);
										$("#my_params input:last-child").keyup(synchroniseKeyValue);
										form_group = `<div class="form-group">
														<label class="col-sm-2 control-label"></label>
															<div class="col-sm-7">
																<div class="input-group">
																	<span class="input-group-addon"></span>
																	<input type="text" class="form-control">
																	<span class="a input-group-addon post_file" title="上传图片">
																		<input type="file" accept="image/*" style="display: none;">
																		<i class="fa fa-fw fa-file-image-o"></i>
																	</span>
																</div>
															</div>
													  </div>`;
										$(".my_params_value .my_sale_price").before(form_group);
										//$(".my_params_value .post_file:last-child").click(selectImages);
										$.each($(".my_params_value"), function(i, n) {
											$(n).find(".post_file").last().click(selectImages);
										});
										$("#param_name_adder").click(addParamInput);
									}
									/* 增加key */
									$("#param_name_adder").click(addParamInput);
									/* 将key值同步到value */
									function synchroniseKeyValue() {
										var current = this;
										var index = 0;
										$.each($("#my_params input"), function(i, n) {
											if(current == n) {
												index = i;
												return false;
											}
										});
										$.each($(".my_params_value"), function(i, n) {
											$(this).find(":text:eq(" + index + ")").prev().text($(current).val())
										});
									}
									$("#my_params input").keyup(synchroniseKeyValue);
									/* 增加参数值 */
									$("#param_value_adder").click(function() {
										var copy = $(this).parent().parent().parent().clone(true);
										copy.find("input").val("");
										$("#my_params_value_group").append(copy);
										$(this).remove();
									});
									/* 选择图片 */
									function selectImages() {
										$(this).find("input")[0].click();
									}
									$(".post_file").click(selectImages);
									/* file内容发生改变时触发 */
									$(".post_file.post_image input, .post_file.post_video input").on("change", function() {
										var value = "";
										$.each($(this)[0].files, function(i, n) {
											value += n.name + "   ";
										});
										$(this).parent().prev().val(value);
									});
								</script>
				<div class="modal-footer">
					<button type="button" class="btn btn-default pull-left"
						data-dismiss="modal">关闭</button>
					<button type="button" id="my_submit" class="btn btn-primary">提交</button>
				</div>
				<script type="text/javascript">
									/* 添加商品 */
									$("#my_submit").click(function() {
										var row_list = new Array();
										$.each($(".my_params_value"), function(i, n) {
											var key_value_list = new Array();
											var size = $(n).find(".form-group").length;
											$.each($(n).find(".form-group"), function(i, n) {
												if(i >= size - 2) {
													return false;
												}
												var type = 2;
												if($(n).find("input:file").val() == null || $(n).find("input:file").val() == "") {
													type = 0;
												}
												var key_value = {
														propertyName: $(n).find("span").first().text(),
														propertyValue: $(n).find("input:text").val(),
														type: type
												}
												key_value_list.push(key_value);
											});
											var row = {
													properties: key_value_list,
													price: $(n).find(".form-control.price").val(),
													stock: $(n).find(".form-control.stock").val()
											}
											row_list.push(row);
										});
										var product = {
												name: $("#my_product").val(),
												rows: row_list
										}
										$.ajax({
											method: "POST",
											url: APP_PATH + "/backstage/product",
											data: JSON.stringify(product),
											contentType: "application/json",
											success: function(data) {
												/* 上传宣传图片 */
												if($(".post_file.post_image input").val() != null && $(".post_file.post_image input").val() != ""){
													var formData = new FormData();
													$.each($(".post_file.post_image input")[0].files, function(i, n) {
														formData.append("files", n);
													});
													formData.append("commodityId", data.commodityId);
													$.ajax({
														method: "POST",
														url: APP_PATH + "/backstage/product_images",
														data: formData,
														processData: false,
														contentType: false
													});	
												}
												var formData = new FormData();
												var hasFile = false;
												/* 搜寻文件 */
												$.each($("#my_params_value_group .post_file"), function(i, n) {
													if($(n).find("input").val() != null && $(n).find("input").val() != "") {				
														var cur = n;
														var parent = $(n).parent();
														var key = parent.find("span").first().text();
														key += parent.find("input:text").val();
														$.each(data.propertyMap, function(i, n) {
															if(key == i) {
																if(!formData.has(n)) {
																	formData.append("files", $(cur).find("input:file")[0].files[0]);
																	formData.append("fileNames", n);
																	formData.append(n, null);
																	hasFile = true;
																}
																return false;
															}
														});
													}
												});
												var ite = formData.entries();
												/* 传参数图片 */
												if(hasFile) {
													$.ajax({
														method: "POST",
														url: APP_PATH + "/backstage/product_prop_images",
														data: formData,
														processData: false,
														contentType: false
													});
												}
												$('#modal-product').modal('hide');
												getCommditiesByPageNumber(1);
												$.scojs_message('添加商品成功', $.scojs_message.TYPE_OK);
											}
										});
									});
								</script>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<script type="text/javascript">
						/* 点击全选 */
						$("#my_check_all").click(function() {
							if($(this).prop("checked")) {
								$(".my_checkbox").prop("checked", true);
							} else {
								$(".my_checkbox").prop("checked", false);
							}
						});
						
						/* 批量删除 */
						$("#batch_remove").click(function() {
							if($(".my_checkbox:checked").length < 1) {
								$.scojs_message('请选择商品', $.scojs_message.TYPE_ERROR);
								return ;
							}
							$.confirm({
								title: '删除提示',
							    content: '确认删除吗？',
							    confirmButton: '确认',
							    cancelButton: '取消',
							    confirmButtonClass: 'btn-warning',
							    cancelButtonClass: 'btn-success',
							    confirm: function(){
							    	var string = "";
							    	$.each($(".my_checkbox:checked"), function(i, n) {
							    		string += "productIds=" + $(n).data("productid");
							    		if(i < $(".my_checkbox:checked").length - 1) {
							    			string += "&";
							    		}
							    	});
							    	$.ajax({
							    		method: "POST",
							    		url: APP_PATH + "/backstage/products",
							    		data: "_method=delete&" + string,
							    		success: function(data) {
							    			if(data > 0) {
							    				getCommditiesByPageNumber(1);
							    				$.scojs_message('删除商品成功', $.scojs_message.TYPE_OK);
							    			}
							    		}
							    	});
								}
							});
						});
						/* 上架 */
						$("#my_shangjia").click(function() {
							if($(".my_checkbox:checked").length < 1) {
								$.scojs_message('请选择商品', $.scojs_message.TYPE_ERROR);
								return ;
							}
							var string = "";
							$.each($(".my_checkbox:checked"), function(i, n) {
					    		string += "productIds=" + $(n).data("productid");
					    		if(i < $(".my_checkbox:checked").length - 1) {
					    			string += "&";
					    		}
					    	});
							$.ajax({
								method: "POST",
								url: APP_PATH + "/backstage/shangjia",
								data: string,
								success: function(data) {
									if(data > 0) {
										getCommditiesByPageNumber($(".paginate_button.active a").data("pagenum"));
									}
								}
							});
						});
						/* 下架 */
						$("#my_xiajia").click(function() {
							if($(".my_checkbox:checked").length < 1) {
								$.scojs_message('请选择商品', $.scojs_message.TYPE_ERROR);
								return ;
							}
							var string = "";
							$.each($(".my_checkbox:checked"), function(i, n) {
					    		string += "productIds=" + $(n).data("productid");
					    		if(i < $(".my_checkbox:checked").length - 1) {
					    			string += "&";
					    		}
					    	});
							$.ajax({
								method: "POST",
								url: APP_PATH + "/backstage/xiajia",
								data: string,
								success: function(data) {
									if(data > 0) {
										getCommditiesByPageNumber($(".paginate_button.active a").data("pagenum"));
									}
								}
							});
						});
					</script>
	<div class="modal fade" id="modal-product-detail"
		style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">商品详细信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="box-body"></div>
						<!-- /.box-body -->
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<div class="modal fade" id="my_add_product_modal"
		style="display: none;">
		<div class="modal-dialog">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12" id="my_box_container">
						<div class="box box-primary" id="my_box">
							<div class="box-header with-border">
								<h3 class="box-title" style="margin-right: 45%;">添加商品</h3>
								<label id="my_add_key" style="margin-right: 5%;"> <i
									class="fa fa-fw fa-plus-square"></i> 参数
								</label> <label id="my_add_value"> <i
									class="fa fa-fw fa-plus-square"></i> 参数值
								</label>
							</div>
							<form>
								<div class="box-body">
									<div class="form-group">
										<label>类别</label>
										<div class="filter-box">
											<div class="filter-text" style="border: 1px solid #d2d6de;">
												<input type="text" class="input-combobox filter-title"
													placeholder="选择类别" readonly="readonly"><span
													class="icon icon-filter-arrow"></span>
											</div>
											<style>
.my-combobox-li {
	position: relative
}

.my-combobox-li:hover>ul {
	display: block !important;
}

.my-combobox-ul {
	display: none;
	width: 200px;
	left: 197px;
	top: -15px;
}

.filter-list li a {
	color: white;
}
</style>
											<ul id="root_varities" class="filter-list filter-open"
												style="display: none; width: 200px;">
												<!-- <li class="my-combobox-li"><a title="苏州">苏州</a>
													<ul class="filter-list filter-open my-combobox-ul">
														<li class="my-combobox-li"><a title="苏州">苏州</a></li>
														<li class="my-combobox-li"><a title="连云港">连云港</a>
															<ul class="filter-list filter-open my-combobox-ul">
																<li class="my-combobox-li"><a title="苏州">苏州</a></li>
																<li class="my-combobox-li"><a title="连云港">连云港</a></li>
															</ul></li>
													</ul></li>
												<li class="my-combobox-li"><a title="连云港">连云港</a></li> -->
											</ul>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">商品标题</label> <input
											id="my_product_title" type="text" class="form-control"
											placeholder="输入商品名">
									</div>

									<div class="my-key-group">
										<div class="form-group">
											<label>参数名</label>
											<div class="row">
												<div class="col-md-4">
													<input type="text" class="form-control my-key-input"
														placeholder="输入参数名">
												</div>
											</div>
										</div>
									</div>
									<style>
.my-value-background {
	background: 100% center/35px 35px no-repeat;
}
</style>
									<div class="my-value-rows">
										<div class="my-value-row">
											<div class="form-group value">
												<label>参数值</label>
												<div class="row">
													<div class="col-sm-4">
														<div class="input-group">
															<input type="text"
																class="form-control my-value-background"
																placeholder="参数值"> <span
																class="input-group-addon open-image" title="上传图片">
																<input type="file" accept="images/*"
																style="display: none;"> <i
																class="fa fa-fw fa-file-image-o"></i>
															</span>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group variable">
												<div class="row">
													<div class="col-sm-6">
														<input type="text" class="my-price form-control"
															placeholder="价格￥">
													</div>
													<div class="col-sm-6">
														<input type="text" class="my-stock form-control"
															placeholder="库存">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputFile">图片上传</label>
										<ul class="images-upload">
											<li>
												<div class="my-icon"></div> <img style="display: none;">
												<input type="file" accept="image/*">
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="box-footer">
									<label id="error_message"
										style="font-weight: normal; color: red;"></label>
									<button type="button" id="my_product_submit"
										class="btn btn-primary pull-right">提交商品</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	/* 点击combobox */
	$(".input-combobox").click(function() {
		if($(this).hasClass("down")) {
			$(this).parent().parent().find("ul").first().css("display", "none");
			$(this).removeClass("down");
			$(this).next().removeClass("filter-show");
		} else {
			$(this).parent().parent().find("ul").first().css("display", "block");
			$(this).addClass("down");
			$(this).next().addClass("filter-show");
			varietyChildren(0, createRootVarieties, null);
		}
	});
	/* combobox失去焦点 */
	$(".input-combobox").blur(function() {
		$(this).parent().parent().find("ul").first().css("display", "none");
		$(this).removeClass("down");
		$(this).next().removeClass("filter-show");
	});
	/* 获得子分类，并生成子节点 */
	function varietyChildren(parentId, createDomNode, parentNode) {
		$.ajax({
			method: "GET",
			url: "${APP_PATH }/backstage/varieties?parentId=" + parentId,
			success: function(data) {
				createDomNode(parentNode, data);
			}
		});
	}
	/* 生成根类 */
	function createRootVarieties(parentNode, varieties) {
		var html ="";
		$.each(varieties, function(i, n) {
			html += `<li class="my-combobox-li" data-id=`+ n.id +`>
						<a>` + n.name + `</a>
					</li>`;
		});
		$("#root_varities").empty();
		$("#root_varities").append(html);
		/* 后续子类 */
		$("#root_varities>li").mouseenter(function() {
			varietyChildren($(this).data("id"), createChildrenVarieties, $(this));
		});
		/* 点击子类 */
		$("#root_varities>li").mousedown(function(eve) {
			eve.stopPropagation();
			showVarietiesOnInput($(this));
		});
	}
	/* 生成后续子类 */
	function createChildrenVarieties(parentNode, varieties) {
		/* 没有子类数据直接返回 */
		if(varieties.length < 1) {
			return;
		}
		var html ='<ul class="filter-list filter-open my-combobox-ul">';
		$.each(varieties, function(i, n) {
			html += `<li class="my-combobox-li" data-id=`+ n.id +`>
						<a>` + n.name + `</a>
					</li>`;
		});
		html += "</ul>";
		parentNode.find("ul").remove();
		parentNode.append(html);
		/* 后续子类 */
		parentNode.find("ul").first().find("li").mouseenter(function() {
			varietyChildren($(this).data("id"), createChildrenVarieties, $(this));
		});
		/* 点击分类 */
		parentNode.find("ul").first().find("li").mousedown(function(eve) {
			eve.stopPropagation();
			showVarietiesOnInput($(this));
		});
	}
	/* 选择分类，向上回溯 */
	function showVarietiesOnInput(currentNode) {
		var value = currentNode.find(">a").text();
		$.each(currentNode.parents(".my-combobox-li"), function(i, n) {
			value = $(n).find(">a").text() + "  >>  " + value;
		});
		$(".input-combobox.filter-title").val(value);
		$(".input-combobox.filter-title").data("varietyid", currentNode.data("id"));
	}
	/* 增加参数名输入框 */
	function addKeyInput() {
		var row = $(".my-key-group").find(".row").last();
		/* 数量大于3另起一行 */
		if(row.find("input").length < 3) {
			var dom = $(`<div class="col-md-4">
						<input type="text" class="form-control my-key-input" placeholder="输入参数名">
					</div>`);
			row.append(dom);
		} else {
			var dom = `<div class="form-group">
							<div class="row">
								<div class="col-md-4">
									<input type="text" class="form-control my-key-input" placeholder="输入参数名">
								</div>
							</div>
						</div>`;
			$(".my-key-group").append(dom);
		}
	}
	
	/* 增加参数值输入框 */
	function addValueInput() {
		var row = $(".my-value-row").last().find(".form-group.value").last().find(">.row");
		if(row.children().length < 3) {
			var dom = `<div class="col-sm-4">
							<div class="input-group">
								<input type="text" class="form-control my-value-background" placeholder="参数值"> <span class="input-group-addon open-image" title="上传图片">
									<input type="file" accept="images/*" style="display: none;"> <i class="fa fa-fw fa-file-image-o"></i>
								</span>
							</div>
						</div>`;
			$(".my-value-row .form-group.variable").prev().find(">.row").append(dom);
		} else {
			var dom = `<div class="form-group value">
						<div class="row">
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control my-value-background" placeholder="参数值"> 
									<span class="input-group-addon open-image" title="上传图片">
										<input type="file" accept="images/*" style="display: none;"> 
										<i class="fa fa-fw fa-file-image-o"></i>
									</span>
								</div>
							</div>
						</div>
					</div>`;
			$(".my-value-row .form-group.variable").before(dom);
		}
		/* 给新增dom绑定事件 */
		$(".my-value-row .form-group.variable").prev().find(".col-sm-4:last-child .open-image").click(function() {
			$(this).find("input")[0].click();
		});
		/* 阻止冒泡 */
		$(".my-value-row .form-group.variable").prev().find(".col-sm-4:last-child .open-image").find("input").click(function(eve) {
			eve.stopPropagation();
		});
		$(".my-value-row .form-group.variable").prev().find(".col-sm-4:last-child .open-image").find("input").change(function() {
			my_changeImage(this);
		});
		/* 同步key-value */
		$(".my-key-input").last().keyup(function() {
			tongbukeyvalue(this);
		});
	}
	/* 点击'添加参数' */
	$("#my_add_key").click(function() {
		addKeyInput();
		addValueInput();
	});
	/* 打开资源选择器 */
	$(".open-image").click(function() {
		$(this).find("input")[0].click();
	});
	/* 阻止冒泡 */
	$(".open-image input").click(function(eve) {
		eve.stopPropagation();
	});
	/* 更换图片 */
	function my_changeImage(cur) {
		if($(cur).val() == null || $(cur).val() == "") {
			$(cur).parent().prev().css("background-image", "url()");
		} else {
			var file = $(cur)[0].files[0];
			var url = null;
			if (window.createObjcectURL != undefined) {
		        url = window.createOjcectURL(file);
		    } else if (window.URL != undefined) {
		        url = window.URL.createObjectURL(file);
		    } else if (window.webkitURL != undefined) {
		        url = window.webkitURL.createObjectURL(file);
		    }
			$(cur).parent().prev().css("background-image", "url(" + url + ")");
		}
	}
	$(".open-image").find("input").change(function() {
		my_changeImage(this);
	});
	/* 另起一行参数值 */
	$("#my_add_value").click(function() {
		var copy = $(".my-value-rows").children().last().clone(true);
		copy.find("input").val("");
		copy.find("input:text").css("background-image", "url()");
		$(".my-value-rows").append(copy);
	});
	/* 将key同步到value上 */
	function tongbukeyvalue(cur) {
		var index = 0;
		$.each($(".my-key-input"), function(i, n) {
			if(n == cur) {
				index = i;
				return false;
			}
		});
		$.each($(".my-value-row"), function(i, n) {
			$(n).find(".my-value-background:eq(" + index + ")").attr("placeholder", $(cur).val());
			$(n).find(".my-value-background:eq(" + index + ")").data("key", $(cur).val());
		});
	}
	$(".my-key-input").keyup(function() {
		tongbukeyvalue(this);
	});
	/* 价格输入 */
	$(".my-price").keyup(function() {
		var value = $(this).val();
		$(this).val(value.replace(/^(0+|\.)|[^\d\.]+/g, ""));
	});
	/* 库存输入 */
	$(".my-stock").keyup(function() {
		var value = $(this).val();
		$(this).val(value.replace(/^(0+)|[^\d]+/g, ""));
	});
	/* 封装产品基本信息 */
	function prepareProduct() {
		/* 遍历所有行 */
		var rows = new Array();
		$.each($(".my-value-row"), function(i, n) {
			var properties = new Array();
			/* 遍历当前行的key-value */
			$.each($(n).find(".my-value-background"), function(i, n) {
				var type = 2;
				var file_value = $(n).next().find("input").val();
				if(file_value == null || file_value == "") {
					type = 0;
				}
				properties.push({
					propertyName: $(n).data("key"),
					propertyValue: $(n).val(),
					type: type
				});
			});
			rows.push({
				price: $(n).find(".my-price").val(),
				stock: $(n).find(".my-stock").val(),
				properties: properties
			});
		});
		var product = {
				varietyId: $(".input-combobox.filter-title").data("varietyid"),
				name: $("#my_product_title").val(),
				rows: rows
		}
		return product;
	}
	/* 封装参数图片 */
	function prepareParamsImages(data) {
		var formData = new FormData();
		var hasFile = false;
		/* 搜寻文件 */
		$.each($(".my-value-rows .open-image"), function(i, n) {
			if($(n).find("input").val() != null && $(n).find("input").val() != "") {				
				var cur = n;
				var key = $(n).prev().data("key") + $(n).prev().val();
				$.each(data.propertyMap, function(i, n) {
					if(key == i) {
						if(!formData.has(n)) {
							formData.append("files", $(cur).find("input")[0].files[0]);
							formData.append("fileNames", n);
							formData.append(n, null);
							hasFile = true;
						}
						return false;
					}
				});
			}
		});
		return {
			hasFile: hasFile,
			formData: formData
		}
	}
	/* 封装宣传图片 */
	function prepareProductImages(data) {
		var hasFiles = false;
		var formData = new FormData();
		$.each($(".images-upload input:file"), function(i, n) {
			if($(n).val() != "") {
				hasFiles = true;
				formData.append("files", n.files[0]);
			}
		});
		formData.append("commodityId", data.commodityId);
		return {
			hasFiles: hasFiles,
			formData: formData
		}
	}
	/* 点击提交商品按钮 */
	$("#my_product_submit").click(function() {
		var product = prepareProduct();
		$.ajax({
			method: "POST",
			url: APP_PATH + "/backstage/product",
			data: JSON.stringify(product),
			contentType: "application/json",
			success: function(data) {
				if(!data.isPassed) {
					$("#error_message").text(data.errorMessage);
					return;
				}
				/* 上传参数图片 */
				var fileMap = prepareParamsImages(data);
				if(fileMap.hasFile) {
					$.ajax({
						method: "POST",
						url: APP_PATH + "/backstage/product_prop_images",
						data: fileMap.formData,
						processData: false,
						contentType: false
					});
				}
				/* 上传宣传图片 */
				var fileMap2 = prepareProductImages(data);
				if(fileMap2.hasFiles) {
					$.ajax({
						method: "POST",
						url: APP_PATH + "/backstage/product_images",
						data: fileMap2.formData,
						processData: false,
						contentType: false
					});	
				}
				$('#my_add_product_modal').modal('hide');
				initialModal();
				getCommditiesByPageNumber(1);
				$.scojs_message('添加商品成功', $.scojs_message.TYPE_OK);
			}
		});
	});	
</script>
<script src="${APP_PATH }/static/js/my_upload.js"></script>
<script>
/* 保存初始添加模板 */
var my_box_copy = $("#my_box").clone(true);
function initialModal() {
	$("#my_box_container").empty();
	$("#my_box_container").append(my_box_copy);
	my_box_copy = $(my_box_copy).clone(true);
}
</script>
