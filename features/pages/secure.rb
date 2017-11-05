class SecurePage < SitePrism::Page

    element :mensagem, '[id="flash"]'
    element :botao_logout, '[class="button secondary radius"]'
end