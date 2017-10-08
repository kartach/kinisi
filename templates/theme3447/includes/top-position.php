<div id="top" class="stuck_position">
                    
    <?php $layout = $params->get('top_layout','normal');?>
    <?php if($layout != "fullwidth"){ ?>
    <div class="container<?php if($layout == "fluid") echo '-fluid'; ?>">
        <div class="row">
    <?php } ?>

            <jdoc:include type="modules" name="top_left" style="themeHtml5"/>

            <div id="logo" class="<?php if($layout == "normal"):?>col-sm-<?php echo $this->params->get('logoBlockWidth'); ?><?php endif;?>">
                <a href="<?php echo JURI::base(); ?>">
                    <?php if(isset($logo)): ?>
                        <img src="<?php echo $logo; ?>" alt="<?php echo $sitename; ?>">
                    <?php else: ?>
                    <span class="site-logo"><?php echo wrap_chars_with_span($sitename);?></span>
                    <?php endif;?>
                    <?php if($this->params->get('LogoDescription')):?>
                        <div class="site-description"><?php echo $this->params->get("logo_description_title");?></div>
                    <?php endif;?>
                </a>
            </div>
            <jdoc:include type="modules" name="top_center" style="themeHtml5"/>

            <jdoc:include type="modules" name="top_right" style="themeHtml5"/>   

            <jdoc:include type="modules" name="top" style="themeHtml5"/>
    <?php if($layout != "fullwidth"){ ?>
        </div>
    </div>
    <?php } ?>
</div>