--// Serviços
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// Criar GUI
local ScreenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.Name = "KillV2"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 230, 0, 100)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.BackgroundTransparency = 0.1

-- Título
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "☠️ Kill V2"
Title.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20

-- Botão
local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(1, -20, 0, 45)
Button.Position = UDim2.new(0, 10, 0, 50)
Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 18
Button.Text = "Kill SCP-173"
Button.AutoButtonColor = true

-- Função pra matar SCP-173
local function killSCP()
    local scp = workspace:FindFirstChild("SCP-173")
    if scp and scp:FindFirstChild("Humanoid") then
        scp.Humanoid.Health = 0
        print("SCP-173 eliminado pelo Kill V2")
    else
        print("SCP-173 não encontrado")
    end
end

-- Conectar botão
Button.MouseButton1Click:Connect(killSCP)
