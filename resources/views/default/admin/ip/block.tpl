{include file='admin/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> 
           节点被封IP
        </h1>
    </section>


    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body table-responsive no-padding">
                        {$logs->render()}
						
						<table class="table table-hover">
							<tr>
								<th>ID</th>
								<th>节点ID</th>
								<th>节点名称</th>
								<th>IP</th>
								<th>归属地</th>
								<th>时间</th>
							</tr>
							{foreach $logs as $log}
								<tr>
									<td>#{$log->id}</td>
									<td>{$log->node()->id}</td>
									<td>{$log->node()->name}</td>
									<td>{$log->ip}</td>
									<td>{$loc[$log->ip]}</td>
									<td>{$log->time()}</td>
								</tr>
							{/foreach}
						</table>
                        {$logs->render()}
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

{include file='user/footer.tpl'}