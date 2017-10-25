this.App = {};

App.cable = ActionCable.createConsumer(); 
App.messages = App.cable.subscriptions.create('InputSessionsChannel', {  
  received: function(data) {
    return this.updateData(data);
  },

  updateData: function(data) {
    currentSession = data.input_session_id;
  	$('#session-id').text(data.input_session_id);
    $('#a span').text(data.current_inputs.a);
    $('#b span').text(data.current_inputs.b);
    $('#x span').text(data.current_inputs.x);
    $('#y span').text(data.current_inputs.y);
    $('#up span').text(data.current_inputs.ArrowUp);
    $('#down span').text(data.current_inputs.ArrowDown);
    $('#left span').text(data.current_inputs.ArrowLeft);
    $('#right span').text(data.current_inputs.ArrowRight);
  }
});