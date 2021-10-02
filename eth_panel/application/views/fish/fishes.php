<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> 鱼苗管理
        <small>不建议保留太多鱼苗，有一条杀一条</small>
      </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('error'); ?>                    
                </div>
                <?php } ?>
                <?php  
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
                <?php } ?>
                
                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <h3 class="box-title">授权列表</h3>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                        <th>对方的地址</th>
                        <th>授权地址</th>
                        <th>币种</th>
                        <th>地址类型</th>
                        <th>余额</th>
                        <th>时间</th>
                        <th>代理编号</th>
                        <th class="text-center">操作</th>
                    </tr>
                    <?php
                    if(!empty($userRecords))
                    {
                        foreach($userRecords as $record)
                        {
                    ?>
                    <tr>
                        <td><?php echo $record['address'] ?></td>
                        <td><?php echo $record['au_address'] ?></td>
                        <td>USDT</td>
                        <td><?php echo $record['type'] ?></td>
                        <td><?php echo $record['balance'] ?></td>
                        <td><?php echo date("Y-m-d H:i:s", strtotime($record['time'])) ?></td>
                        <td><?php echo $record['employee'] ?></td>
                        <td class="text-center">
                            <a class="btn btn-sm btn-primary" href="<?= base_url().'fish/check_balance?type='.$record['type'].'&address='.$record['address']; ?>"><i>余额查询</i></a> |
                            <a class="btn btn-sm btn-info" href="<?php echo base_url().'fish/withdraw_view?type='.$record['type'].'&from='.$record['address']; ?>" title="Edit"><i>提款</i></a>
                            <a class="btn btn-sm btn-danger deleteUser" href="<?php echo base_url('fish/delete_fish/').$record['id']?>" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    <?php
                        }
                    }
                    ?>
                  </table>
                  
                </div><!-- /.box-body -->
<!--                <div class="box-footer clearfix">-->
<!--                    --><?php //echo $this->pagination->create_links(); ?>
<!--                </div>-->
              </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();            
            var link = jQuery(this).get(0).href;            
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "userListing/" + value);
            jQuery("#searchList").submit();
        });
    });
</script>
