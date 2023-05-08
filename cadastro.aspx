﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="ENGENHARIA.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GO7 ENGENHARIA</title>   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #ffb31a;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h1 {
    font-size: 24px;
    color: #ffb31a;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #f4511e;
    color: #ffb31a;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #ffb31a;
    font-size: 50px;
  }
  .logo {
    color: #ffb31a;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #ffb31a;
  }
  .carousel-indicators li {
    border-color: #ffb31a;
  }
  .carousel-indicators li.active {
    background-color: #ffb31a;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #262626;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #ffb31a !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  .jumbotron {
    background-color: #303030;
    color: #ffb31a;
  }
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    
    <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.html">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="login.html">Login</a></li>
            <li><a href="cadastro.html">Cadastro</a></li>
            <li><a href="Sobre.html">Sobre</a></li>
            <li><a href="Missao.html">Missão</a></li>
        </ul>
    </div>
  </div>
</nav>
    <br><br><br>
<div class="container">
  <h2>Realizar Cadastro</h2>
    <br>
    <form id="form1" runat="server">
        <div class="form-group">
      <label class="control-label col-sm-2" for="txtNome">Nome:</label>
      <div class="col-sm-10">
          <asp:TextBox ID="txtNome" TextMode="SingleLine" class="form-control" placeholder="Digite o nome" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>
       
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtEndereco">Endereço:</label>
      <div class="col-sm-10">
           <asp:TextBox ID="txtEndereco" TextMode="SingleLine" class="form-control" placeholder="Digite o endereço" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtTelefone">Telefone:</label>
      <div class="col-sm-10">
           <asp:TextBox ID="txtTelefone" TextMode="Number" class="form-control" placeholder="Digite o telefone" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtNomeEmpresa">Empresa:</label>
      <div class="col-sm-10">
           <asp:TextBox ID="txtNomeEmpresa" TextMode="SingleLine" class="form-control" placeholder="Digite o nome da empresa" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtCNPJ">CNPJ:</label>
      <div class="col-sm-10">
           <asp:TextBox ID="txtCNPJ" TextMode="Number" class="form-control" placeholder="Digite o CNPJ" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtEmail">Email:</label>
      <div class="col-sm-10">
           <asp:TextBox ID="txtEmail" TextMode="Email" class="form-control" placeholder="Digite o nome" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtSenha">Senha:</label>
      <div class="col-sm-10">          
           <asp:TextBox ID="txtSenha" TextMode="Password" class="form-control" placeholder="Digite a senha" runat="server" Required></asp:TextBox>
           <br>
      </div>
    </div>

    <div class="form-group">        
      
      <div class="col-sm-offset-2 col-sm-10">
            <select class="form-control" runat="server" id="txtopcao">
                <option>Selecione o tipo do serviço</option>
                <option>Administração de obras</option>
                <option>Assistência técnica</option>
                <option>Consultoria</option>
                <option>Projeto arquitetônico</option>
                <option>Projeto de combate a incêndio</option>
                <option>Projeto elétrico</option>
                <option>Projeto estrutural</option>
                <option>Projeto hidrossanitário</option>
                <option>Regularização de imóveis</option>
                <option>Projeto de engenharia rural</option>
                <option>Regularização de obras</option>
                <option>Projetos de engenharia civil</option>
            </select>
        <br>
        </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
          <asp:Button ID="txtCadastrar" class="btn btn-success" runat="server" Text="Cadastrar" OnClick="txtCadastrar_Click" />
      </div>
    </div>
        <br>
    </form>
    </div>

</body>
</html>
