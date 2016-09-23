<select  style="background:#22B92E" class="selectpicker categoryDemo" data-style="btn-info" id="categoryId">
<#list categories as category>
		<option value=${category.categoryId}>${category.categoryName}</option>
</#list>
</select>
  

