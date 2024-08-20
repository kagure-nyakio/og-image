defmodule OgImageWeb.ImageHTML do
  use OgImageWeb, :html

  @doc """
  A logo and text on a light background.
  """
  def light(assigns) do
    ~H"""
    <body class="bg-[#F8F2E6] grid h-screen items-center">
      <div  class="w-[80%] mx-auto">
        <.intro_text class="text-black"/>
        <h1 class="font-semibold text-[#D2FD88] text-[3rem] leading-[1.2]">
          <%= @text %>
        </h1>
      </div>
    </body>
    """
  end

  @doc """
  A logo and text on a dark background.
  """
  def dark(assigns) do
    ~H"""
    <body class="bg-[#020202] grid h-screen items-center">
      <div class="w-[80%] mx-auto">
        <.intro_text class="text-white mb-32"/>
        <h1 class="font-semibold text-[#D2FD88] text-[3rem] leading-[1.2]">
          <%= @text %>
        </h1>
      </div>
    </body>
    """
  end

  @doc """
  A fallback image.
  """
  def fallback(assigns) do
    ~H"""
    <body class="bg-[#F8F2E6] flex items-center justify-center h-screen">
      <div>
         <.intro_text class="text-black"/>
      </div>
    </body>
    """
  end

  defp intro_text(assigns) do
    ~H"""
    <div class={["flex items-center justify-between w-full", @class]}>
      <h1 class="font-bold text-[2.5rem] leading-[1.2]">
        Nyakio Muriuki
      </h1>

      <div>
        <p class="text-[2rem] font-semibold" mb-6>
          Sofware Developer
        </p>
        <p class="text-center">
          nyakio.me
        </p>
      </div>
    </div>
    """
  end
end
