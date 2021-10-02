<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> 授权地址管理
        <small>Add, Edit, Delete</small>
      </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
<!--                    <a class="btn btn-primary" href="--><?php //echo base_url(); ?><!--addNew"><i class="fa fa-plus"></i>新建用户</a>-->
                </div>
            </div>
        </div>
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
                    <h3 class="box-title">地址列表 - 请按时检查地址中的ETH或TRX余额</h3>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
<!--                        <th>Name</th>-->
                        <th>地址</th>
<!--                        <th>Mobile</th>-->
                        <th>类型</th>
                        <th>私钥</th>
                        <th class="text-center">修改地址</th>
                    </tr>
                    <?php
                    if(!empty($addresses))
                    {
                        foreach($addresses as $record)
                        {
                    ?>
                    <tr>
<!--                        <td>--><?php //echo $record->name ?><!--</td>-->
                        <td><?php echo $record['address'] ?></td>
<!--                        <td>--><?php //echo $record->mobile ?><!--</td>-->
                        <td><?php echo $record['type'] ?></td>
                        <td><?php echo $record['pri_key'] ?></td>
                        <td class="text-center">
                            <a class="btn btn-sm btn-info" href="<?= base_url().'address/edit_address_view/'.$record['type']; ?>" title="Login history"><i class="fa fa-history"></i></a> |
<!--                            <a class="btn btn-sm btn-info" href="--><?php //echo base_url().'editOld/'.$record->userId; ?><!--" title="Edit"><i class="fa fa-pencil"></i></a>-->
<!--                            <a class="btn btn-sm btn-danger deleteUser" href="#" data-userid="--><?php //echo $record->userId; ?><!--" title="Delete"><i class="fa fa-trash"></i></a>-->
                        </td>
                    </tr>
                    <?php
                        }
                    }
                    ?>
                  </table>
                  
                </div><!-- /.box-body -->

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
