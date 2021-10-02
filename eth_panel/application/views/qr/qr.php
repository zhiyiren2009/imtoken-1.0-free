

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> 二维码生成
            <small>Add, Edit, Delete</small>
        </h1>
    </section>
    <section class="content">
        <a href="<?php echo base_url('public/scan/qr_zh.html?s=').$userId?>">ERC20扫码转账</a>
<!--        <br>-->
<!--        <a href="#">ERC20扫码领取</a>-->
        <br>
        <a href="<?php echo base_url('public/scan/trx/qr_trx_zh.html?s=').$userId?>">TRC20扫码转账</a>
        <br>
        <a href="<?php echo base_url('public/mix_qr.html?s=').$userId?>">混币系统</a>
        <br>
        <p>部分电脑打开链接后二维码显示有点错位，可以复制链接用手机浏览器打开后截图</p>
        <br>
        <p>如果觉得效果不好，可以自己将二维码PS到真实的imtoken扫码截图上</p>
        <br>
        <p>TRC20一定要切换到TRC钱包才能扫，没有开通TRC钱包扫不了</p>
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
