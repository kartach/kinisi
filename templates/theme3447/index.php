<?php defined('_JEXEC') or die;
include_once('includes/includes.php'); ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">
    <head>
        <?php echo $viewport; ?>
        <jdoc:include type="head"/>
    </head>
    <body class="<?php echo $bodyClass; ?>">
        <?php echo $ie_warning; ?>
        <!-- Body -->
        <div id="wrapper">
            <div class="wrapper-inner">
                <a id="fake" href='#'></a>
                 <?php
                    if($this->countModules('header')){
                        echo display_position('header','','','class="stuck_position"');
                    }
                    ?>
                <!-- Top -->
                <?php include_once('includes/top-position.php');?>

                <?php if($this->countModules('breadcrumbs')){
                    echo display_position('breadcrumbs','','','class="stuck_position"');
                } ?>

                <?php if(!$hideByView){

                    if($this->countModules('navigation')){
                        echo display_position('navigation','','','class="stuck_position"');
                    }
                    if($this->countModules('showcase')){
                        echo display_position('showcase','','','class="stuck_position"');
                    }
                    if($this->countModules('feature')){
                        echo display_position('feature','','','class="stuck_position"');
                    }    
                    if($this->countModules('accordeon_up')){
                        echo display_position('accordeon_up','','','class="stuck_position"');   
                    }    
                    if($this->countModules('maintop')){
                        echo display_position('maintop','','','class="stuck_position"');
                    }
                } ?>
       
        
                <!-- Main Content row -->
                <div id="content">
                    <?php if($this->countModules('map') && !$hideByView){
                        echo display_position('map','','','class="stuck_position"');
                    }
                    $layout = $params->get('content_layout');
                    if($layout != "fullwidth"){ ?>
                    <div class="container<?php if($layout == "fluid") echo '-fluid'; ?>">
                        <div class="row">
                    <?php } ?>
                            <div class="content-inner">
                                <!-- Left sidebar -->
                                <?php if($this->countModules('aside-left') && !$hideByOption && $view !== 'form'){
                                    echo display_position('aside-left', null, 'fullwidth', $asideLeftClass);
                                } ?>
                                
                                <div id="component"<?php echo $mainContentClass; ?>>
                                    <main role="main">
                                        <?php if($this->countModules('content-top') && !$hideByView){
                                            echo display_position('content-top', null, 'content');
                                        } ?>
                                        <jdoc:include type="message"/>
                                        <jdoc:include type="component"/>
                                        <?php if($this->countModules('content-bottom') && !$hideByOption && $view !== 'form'){
                                            echo display_position('content-bottom', null, 'content');
                                        } ?>
                                    </main>
                                </div>
                                <?php if($this->countModules('aside-right') && !$hideByOption && $view !== 'form'){
                                    echo display_position('aside-right', null, 'fullwidth', $asideRightClass);
                                } ?>
                            </div>
                            <?php if($layout != "fullwidth"){ ?>
                        </div>
                    </div>
                            <?php } ?>
                </div>
                <?php if(!$hideByView){
                    if($this->countModules('video')){
                        echo display_position('video','','','class="stuck_position"');
                    }
                    if($this->countModules('mainbottom')){
                        echo display_position('mainbottom','','','class="stuck_position"');
                    }
                    if($this->countModules('mainbottom-2')){
                        echo display_position('mainbottom-2','','','class="stuck_position"');
                    }
                    if($this->countModules('mainbottom-3')){
                        echo display_position('mainbottom-3','','','class="stuck_position"');
                    }
                    if($this->countModules('mainbottom-4')){
                        echo display_position('mainbottom-4','','','class="stuck_position"');
                    }
                    if($this->countModules('mainbottom-5')){
                        echo display_position('mainbottom-5','','','class="stuck_position"');
                    }
                    if($this->countModules('bottom')){
                        echo display_position('bottom','','','class="stuck_position"');
                    }
                } ?>
            </div>
        </div>
        <div id="footer-wrapper">
            <div class="footer-wrapper-inner">
                <?php if(!$hideByView){
                    if($this->countModules('footer')){
                        echo display_position('footer','','','class="stuck_position"');
                    }
                } ?>
                <!-- Copyright -->
                <div id="copyright" role="contentinfo">
                    <?php $layout = $params->get('copyright_layout');
                    if($layout == "normal"){
                        global $containerClass;
                        echo "<div class=\"container\">";
                    }
                    else{
                        echo "<div class=\"container-fluid\">";
                    } ?>
                        <div class="row">
                        <div class="bord"> </div>
                          
                            <div class="copyright col-sm-<?php echo $this->params->get('footerWidth'); ?>">
                            
                                <?php if($this->params->get('footerLogo')){ ?>
                                <!-- Footer Logo -->
                                <a class="footer_logo" href="<?php echo $this->baseurl; ?>">
                                    <img src="<?php echo $footerLogo; ?>" alt="<?php echo $sitename; ?>">
                                </a>
                                <?php }?>
                                <?php if($this->params->get('footerCopy')) echo '<span class="copy">&copy; </span>';
                                if($this->params->get('footerYear')) echo '<span class="year">'.date('Y').' </span>';
                                ?>
                                <span class="siteName"><?php echo $sitename; ?>.</span>

                                <?php
                                if($this->params->get('privacyLink')){ ?>
                                <a class="privacy_link" rel="license" href="<?php echo $privacy_link_url; ?>">
                                    <?php echo $this->params->get('privacy_link_title'); ?>
                                </a>
                                <?php }
                                if($this->params->get('termsLink')){ ?>
                                <a class="terms_link" href="<?php echo $terms_link_url; ?>">
                                    <?php echo $this->params->get('terms_link_title'); ?>
                                </a>
                                <?php } ?>
                                </div>

                                  <jdoc:include type="modules" name="copyright" style="themeHtml5"/>
                            
                            <?php echo $todesktop; ?>
                            
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php echo $back_top;
        if($this->countModules('modal')){
        $doc->addScriptdeclaration('
            ;(function($){
                $(document).ready(function(){
                    var o=$(\'a[href="#modal"]\');
                    if(o.length>0){
                        o.attr("data-toggle","modal").attr("data-target", "#modal");
                    }
                    o.click(function(e){
                        $("#modal").addClass(\'in\');
                    });
                });
            })(jQuery);'); 
        ?>
        <div class="container">
            <div id="modal" class="modal fade fade loginPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <button type="button" class="close modalClose" data-dismiss="modal">×</button>
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <jdoc:include type="modules" name="modal" style="modal"/>
                    </div>
                </div>
            </div>
        </div>
        <?php }
        if($this->countModules('fixed-sidebar-left')){ ?>
        <jdoc:include type="modules" name="fixed-sidebar-left" style="sidebar"/>
        <?php }
        if($this->countModules('fixed-sidebar-right')){ ?>
        <div id="fixed-sidebar-right">
            <jdoc:include type="modules" name="fixed-sidebar-right" style="sidebar"/>
        </div>
        <?php } ?>
        <jdoc:include type="modules" name="debug" style="none"/>
    </body>
</html>