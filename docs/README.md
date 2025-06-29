# Documentação – Servidor DNS e DHCP (Linux)

Este diretório contém arquivos de apoio à documentação visual do projeto de Servidor DNS e DHCP em Ubuntu Server, utilizando Bind9 e isc-dhcp-server.

## 📂 Conteúdo

- `diagrama_rede.png`: Diagrama ilustrando a topologia da rede usada no projeto, incluindo o servidor Ubuntu, clientes e faixas de IP.
- `teste_dns.png`: Captura de tela mostrando a execução do comando `dig` para teste de resolução de nomes usando o servidor DNS configurado.
- `teste_dhcp.png`: Captura de tela exibindo a saída do comando `ip a` em uma máquina cliente que obteve IP via DHCP, validando o funcionamento do serviço.

## 💡 Objetivo

Fornecer uma visão clara e ilustrada do funcionamento do ambiente de rede configurado, facilitando a compreensão de como os serviços DNS e DHCP foram implementados, testados e integrados.

## 📌 Observações

Todos os testes foram realizados em um ambiente virtualizado com VirtualBox e Ubuntu Server. Os prints representam saídas reais obtidas durante a execução do projeto.

---

Para mais informações sobre configuração e execução do projeto, consulte o [README principal](../README.md).