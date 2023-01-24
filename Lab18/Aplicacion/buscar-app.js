$(document).ready(function(){
  $('#search').focus();

  $('#search').on('keyup', function(){
    var search = $('#search').val();
    $.ajax({
      type: 'POST',
      url: 'buscar-tarea.php',
      data: {'search': search},
      success: function (response) {
      if(!response.error) {
            let tasks = JSON.parse(response);
            let template = '';
            tasks.forEach(task => {
              template += `
                     <li><a href="#" class="task-item">${task.name}</a></li>
                    ` 
            });
            $('#task-result').show();
            $('#container').html(template);
      }
    }
  }
  )
  }
  )
}
);  
