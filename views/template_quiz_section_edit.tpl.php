<h2> Test Sections </h2>

<table class="table bordered border hovered" border="0" data-role="">
    <thead>
        <tr>
            <th>Section</th>
            <th>Type</th>
            <th>Total Qns</th>
            <th>Pick Qns</th>
        </tr>
    </thead>
    <tbody>
        <? foreach ($sections as $r) {?>
        <tr>
            <td><?=$r['title']?></td>
            <td><?=$r['type']?></td>
            <td><?=$r['qno']?></td>
            <td>
                <?=insertTextInput('|',"section[$r[id]]",0,'section-qns-no','Enter the test qns','number',1,"required||Qn No is required","max=$r[qno]")?>
            </td>
        </tr>
        <? } ?>
    </tbody>
</table>

<?=insertSaveButton('Save');?>

<script>
    function checkMaxQnCount(obj) {
        var qnsNo = parseInt($(obj).val());
        var maxQns = parseInt($(obj).attr('max'));

        if (qnsNo > maxQns) {
            triggerError('Maximum Qns : '+maxQns);
            $(obj).val(maxQns);
        }
    }
    
    $(document).on('keyup','.section-qns-no',function(){
        checkMaxQnCount(this);
    })
</script>