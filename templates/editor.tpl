<div id="editor" class="property-editor animated">
{*
    <div class="panel panel-default panel-block panel-title-block">
        <div class="panel-heading">
            <div>
                <i class="icon-edit"></i>
                <h1>
                    <span class="page-title">Kasten Objekt bearbeiten</span>
                    <small>
                        Sie können ihre Daten jetzt bearbeiten
                    </small>
                </h1>
                <div class="pull-right">
                    <a href="javascript:;" onclick="ce.editor.open()" class="btn btn-success">
                        <i class="icon-check-sign"></i>
                        <span>
                            SPEICHERN
                        </span>
                    </a>
                    <a href="javascript:;" onclick="ce.editor.open()" class="btn btn-danger">
                        <i class="icon-remove"></i>
                        <span>
                            ABBRECHEN
                        </span>
                    </a>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle asterisk" data-toggle="dropdown" aria-expanded="false"><i><img src="/eddit/assets/flags/de.gif"></i> DEUTSCH <span class="caret"></span></button>
                        <ul class="dropdown-menu dropdown-menu-arrow" role="menu">
                            <li><a href="#"><i><img src="/eddit/assets/flags/de.gif"></i> Deutsch</a></li>
                            <li><a href="#"><i><img src="/eddit/assets/flags/en.gif"></i> Englisch</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="properties">

                    <h4 class="section-title">Überschrift</h4>
                    <div class="input-group opt-in disabled">
                        <span class="input-group-addon">
                            <input type="checkbox" class="checker">
                        </span>
                        <input type="text" class="form-control opt-in" placeholder="Write your text here" disabled>
                        <div class="form-control form-control-static">Ich bin der Text aus der Master-Sprache</div>
                    </div>

                    <h4 class="section-title">Bild</h4>
                    <div class="input-group opt-in disabled">
                        <span class="input-group-addon">
                            <input type="checkbox" class="checker">
                        </span>
                        <div class="dropzone-cropper clearfix">
                            <div class="cropper"  style="width: 600px; height: 400px; overflow: hidden">
                                <img>
                            </div>
                            <div class="file-info">
                                <p class="name">Dateiname.jpg</p>
                                <p class="size">518 kB</p>
                                <p class="date">Gestern, 14:28</p>
                                <p class="pixel">1722 x 1368 Pixel</p>
                                <p class="coords" style="word-wrap:break-word">...</p>
                                <button class="btn btn-primary" onclick="$('.dropzone-cropper img').data('cropbox').setCrop({ cropX: 570, cropY: 170, cropW: 600, cropH: 400 })">TESTCROP</button>
                            </div>
                            <div class="hover-layer">
                                <i class="icon-download"></i>
                                <span>DATEIEN HIER ABLEGEN</span>
                            </div>
                        </div>
                        <div class="form-control form-control-static">
                            <img class="master-image" src="http://cordial.click-edit.com/media/H/100/bilder/WIEN/diashow/hotel/htl_wien_01.jpg">
                            <div class="file-info">
                                <p class="name">Dateiname.jpg</p>
                                <p class="size">518 kB</p>
                                <p class="date">Gestern, 14:28</p>
                                <p class="pixel">1722 x 1368 Pixel</p>
                            </div>
                        </div>
                    </div>

                    <h4 class="section-title">Link</h4>
                    <div class="input-group opt-in disabled field-link">
                        <span class="input-group-addon">
                            <input type="checkbox" class="checker">
                        </span>
                        <div class="input-group-btn  opt-in">
                            <button type="button" class="btn btn-default asterisk" onclick="$('#myModal').modal({ keyboard: false });"><i class="icon-asterisk"></i></button>
                            <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            </ul>
                        </div><!-- /input-group -->
                        <input type="text" class="form-control opt-in" placeholder="Set your Link using the Asterisk" aria-label="..." disabled>
                        <div class="form-control form-control-static">Ich bin der Link aus der Master-Sprache</div>
                    </div>

                    <h4 class="section-title">Text</h4>
                    <div class="input-group opt-in disabled">
                        <span class="input-group-addon">
                            <input type="checkbox" class="checker">
                        </span>
                        <textarea class="form-control opt-in wysiwyg-basic" aria-label="..." placeholder="Write your text here" >
                            <p>Ich bin der laaange Text aus der Master-Sprache. </p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id efficitur mauris, nec viverra diam. Vestibulum ex metus, imperdiet ac nunc hendrerit, mattis finibus leo. Duis commodo ac nibh non aliquet. Nunc vitae accumsan purus. In lacinia ornare leo, quis iaculis ex vehicula sed. Mauris in tempus arcu. Vivamus ornare lacus at dolor pharetra, eget cursus elit semper. Nulla posuere mollis nibh ac lacinia. In et orci quis orci finibus tempus non vel lectus. Donec porta, magna quis vehicula venenatis, eros mauris facilisis diam, interdum venenatis lorem arcu sed turpis. Cras velit ligula, tristique ac lacus ac, posuere elementum justo.</p>
                        </textarea>
                        <div class="form-control form-control-static">
                        <p>Ich bin der laaange Text aus der Master-Sprache. </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id efficitur mauris, nec viverra diam. Vestibulum ex metus, imperdiet ac nunc hendrerit, mattis finibus leo. Duis commodo ac nibh non aliquet. Nunc vitae accumsan purus. In lacinia ornare leo, quis iaculis ex vehicula sed. Mauris in tempus arcu. Vivamus ornare lacus at dolor pharetra, eget cursus elit semper. Nulla posuere mollis nibh ac lacinia. In et orci quis orci finibus tempus non vel lectus. Donec porta, magna quis vehicula venenatis, eros mauris facilisis diam, interdum venenatis lorem arcu sed turpis. Cras velit ligula, tristique ac lacus ac, posuere elementum justo.</p>
                        </div>
                    </div>

                    <h4 class="section-title">Sichtbarkeit</h4>
                    <div class="input-group opt-in disabled">
                        <span class="input-group-addon">
                            <input type="checkbox" class="checker">
                        </span>

                    <div class="form-control opt-in" style="height:auto">
                        <div class="make-switch has-switch" data-on="success" data-off="danger" data-on-label="Sichtbar" data-off-label="Unsichtbar" style="margin: 0.5em; width: 200px">
                            <input type="checkbox" checked="">
                        </div>
                    </div>
                    <div class="form-control form-control-static">
                        Sichtbar
                    </div>


                    </div>

    </div>
*}
</div>
