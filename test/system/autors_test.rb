require "application_system_test_case"

class AutorsTest < ApplicationSystemTestCase
  setup do
    @autor = autors(:one)
  end

  test "visiting the index" do
    visit autors_url
    assert_selector "h1", text: "Autors"
  end

  test "Criando um Autor" do
    visit autors_url
    click_on "Novo Autor"

    fill_in "Nome", with: @autor.nome
    click_on "Criar"

    assert_text "Autor foi criado com sucesso"
    click_on "Voltar"
  end

  test "Atualizando um Autor" do
    visit autors_url
    click_on "Editar", match: :first

    fill_in "Nome", with: @autor.nome
    click_on "Atualizar"

    assert_text "Autor foi atualizado"
    click_on "Voltar"
  end

  test "Deletando um Autor" do
    visit autors_url
    page.accept_confirm do
      click_on "Deletar", match: :first
    end

    assert_text "Autor foi deletado"
  end
end
