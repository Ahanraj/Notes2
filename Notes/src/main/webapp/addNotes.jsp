<%@ include file="all_components/allcss.jsp"%>
<title>Add Note</title>
<%@ include file="all_components/navbar.jsp"%>

<div class="container mt-5 mb-5">
	<h1 class="text-center">Add Your Note</h1>
	<div class="row">
		<div class="col -md-12">
		
			<form>
				<div class="form-group">
					<label for="">Enter Title</label>
					<input type="text" class="form-control" id="" aria-describedby="" placeholder="Enter title">
				</div>
				
				<div class="form-group">
					<label for="">Content</label>
					<textarea rows="12" cols="6" class="form-control" id="" placeholder="Enter your content"></textarea>
				</div>
				
				<button type="submit" class="btn btn-primary">Add Note</button>
			</form>
			
		</div>
	</div>


</div>
<%@ include file="all_components/footer.jsp"%>








