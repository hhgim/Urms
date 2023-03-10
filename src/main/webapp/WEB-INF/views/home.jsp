<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/css/button.css" />
</head>
<style>
 .tabnav {
		margin : 0 auto;
		border-collapse : collapse;
		width : 60%;
		font-size : 16px;
 }
</style>
<body>
	<div id="main">
		<%@ include file="/WEB-INF/include/menus.jsp" %>
<section class="tabs" aria-multiselectable="false">
  <ul class="tabs__navlist" role="tablist">
    <li class="tabs__nav-item is-active" role="presentation">
      <button class="tabs__nav-trigger" id="tab-label-1" role="tab" aria-setsize="3" aria-posinset="1" tabindex="0" aria-controls="tab-panel-1" aria-selected="true">Tab 1</button>
    </li><li class="tabs__nav-item" role="presentation">
      <button class="tabs__nav-trigger" id="tab-label-2" role="tab" aria-setsize="3" aria-posinset="2" tabindex="-1" aria-controls="tab-panel-2" aria-selected="false">Tab 2</button>
    </li><li class="tabs__nav-item" role="presentation">
      <button class="tabs__nav-trigger" id="tab-label-3" role="tab" aria-setsize="3" aria-posinset="3" tabindex="-1" aria-controls="tab-panel-3" aria-selected="false">Tab 3</button>
    </li>
  </ul>
  <div class="tabs__panels">
    <div class="tabs__panel is-current" id="tab-panel-1" role="tabpanel" aria-labelledby="tab-label-1" tabindex="-1">
      <h3>Tab 1</h3>
      <div class="panel-body">
        <p>The important achievement of Apollo was demonstrating that humanity is not forever chained to this planet and our visions go rather further than that and our opportunities are unlimited.</p>
      </div>
    </div>
    <div class="tabs__panel" id="tab-panel-2" aria-hidden="true" role="tabpanel" aria-labelledby="tab-label-2" tabindex="-1">
      <h3>Tab 2</h3>
      <div class="panel-body">
        <p>Never limit yourself because of others' limited imagination; never limit others because of your own limited imagination.</p>
      </div>
    </div>
    <div class="tabs__panel" id="tab-panel-3" aria-hidden="true" role="tabpanel" aria-labelledby="tab-label-3" tabindex="-1">
      <h3>Tab 3</h3>
      <div class="panel-body">
        <p>After Apollo 17, America stopped looking towards the next horizon. The United States had become a space-faring nation, but threw it away. We have sacrificed space exploration for space exploitation, which is interesting but scarcely visionary.</p>
      </div>
    </div>
  </div>
</section>
	</div>
</body>
</html>