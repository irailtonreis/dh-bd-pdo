<!DOCTYPE html>
<html lang="en">
  <?php require_once("inc/head.php"); ?>
<body>
  <?php require_once("inc/header.php") ?>

  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/free-delivery.jpg" alt="Primeiro Slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/motoboy-delivery.jpg" alt="Segundo Slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/uber-eats.jpg" alt="Terceiro Slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Anterior</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Próximo</span>
  </a>
</div>

<div class="container mt-5">
  <h1>Cards</h1>
  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. At animi quasi recusandae culpa optio delectus excepturi quibusdam quae mollitia hic! Maiores, enim iste? Ipsam, nobis! Earum laudantium fugiat reiciendis similique!</p>
  <div class="card-deck">
    <div class="card">
      <img class="card-img-top" src="img/free-delivery.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Título do card</h5>
        <p class="card-text">Este é um card mais longo com suporte a texto embaixo, que funciona como uma introdução a um conteúdo adicional. Este conteúdo é um pouco maior.</p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="img/motoboy-delivery.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Título do card</h5>
        <p class="card-text">Este é um card com suporte a texto embaixo, que funciona como uma introdução a um conteúdo adicional.</p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="img/uber-eats.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Título do card</h5>
        <p class="card-text">Este é um card maior com suporte a texto embaixo, que funciona como uma introdução a um conteúdo adicional. Este card tem o conteúdo ainda maior que o primeiro, para mostrar a altura igual, em ação.</p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
      </div>
    </div>
  </div>

  <form class="mt-5" action="utils/salvarContato.php" method="POST">
    <h1>Preencha o formulário para entrar em contato</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reiciendis eveniet, similique obcaecati qui corporis dolore quisquam placeat incidunt facilis? Facere aspernatur dolorum vitae sequi ut at doloremque, quia aut.</p>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="input-nome">Nome</label>
        <input type="text" class="form-control" name="nome" id="input-nome" placeholder="Email">
      </div>
      <div class="form-group col-md-6">
        <label for="input-email">E-mail</label>
        <input type="email" class="form-control" name="email" id="input-email" placeholder="E-mail">
      </div>
      <div class="form-group col-md-6">
        <label for="input-senha">Senha</label>
        <input type="password" class="form-control" name="senha" id="input-senha" placeholder="Email">
      </div>
      <div class="form-group col-md-6">
        <label for="input-confirma">Confirma Senha</label>
        <input type="password" class="form-control" name="confirma_senha" id="input-confirma" placeholder="E-mail">
      </div>
    </div>
    <button type="submit" class="btn btn-primary">Enviar</button>
  </form>
</div>


</body>
</html>