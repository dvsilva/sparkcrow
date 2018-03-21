<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Lista de Usuários</span></div>
		<div class="panel-body">
			<div class="table-responsive">
		        <table class="table table-hover">
		            <thead>
		            <tr>
		                <th>First Name</th>
		                <th>Location</th>
		                <th>Sensor</th>
		                <th>Latitude</th>
		                <th>Longitude</th>
		                <th>Quantidade</th>
		            </tr>
		            </thead>
		            <tbody>
		            <tr ng-repeat="u in ctrl.getAllUsers()">
		                <td>{{u.firstName}}</td>
		                <td>{{u.location}}</td>
		                <td>{{u.sensor}}</td>
		                <td>{{u.latitude}}</td>
		                <td>{{u.longitude}}</td>
		                <td>{{u.quantidade}}</td>
		            </tr>
		            </tbody>
		        </table>		
			</div>
		</div>
    </div>
    
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Lista de Sensores</span></div>
		<div class="panel-body">
			<div class="table-responsive">
		        <table class="table table-hover">
		            <thead>
		            <tr>
		                <th>First Name</th>
		                <th>Sensor</th>
		                <th>Quantidade</th>
		            </tr>
		            </thead>
		            <tbody>
		            <tr ng-repeat="u in ctrl.getAllSensor()">
		                <td>{{u.firstName}}</td>
		                <td>{{u.sensor}}</td>
		                <td>{{u.quatidade}}</td>
		            </tr>
		            </tbody>
		        </table>		
			</div>
		</div>
    </div>

    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Lista de Contadores</span></div>
		<div class="panel-body">
			<div class="table-responsive">
		        <table class="table table-hover">
		            <thead>
		            <tr>
		                <th>Activity</th>
		                <th>Quantidade</th>
		            </tr>
		            </thead>
		            <tbody>
		            <tr ng-repeat="u in ctrl.getAllContadores()">
		                <td>{{u.activity}}</td>
		                <td>{{u.quatidade}}</td>
		            </tr>
		            </tbody>
		        </table>		
			</div>
		</div>
    </div>
</div>