<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1101297859/25.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1318107)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
# DevExpress VCL — AI-powered Smart Paste Functionality

This example adds an [AI-powered Smart Paste command](https://docs.devexpress.com/VCL/405528/ExpressCrossPlatformLibrary/common-features/ai-powered-extensions) to our [Grid](https://docs.devexpress.com/VCL/171093/ExpressQuantumGrid/vcl-data-grid) and [Layout](https://docs.devexpress.com/VCL/152013/ExpressLayoutControl/introduction) controls. Our command is based on the official Embarcadero [SmartCore AI Components Pack](https://docwiki.embarcadero.com/RADStudio/Florence/en/SmartCore_AI_Component_Pack) available in the [GetIt Package Manager](https://getitnow.embarcadero.com/smartcore-ai-components). VCL developers can switch between different AI service providers as requirements dictate.

> A _Smart Paste_ command analyzes clipboard content and assigns correct values (in specific formats) to corresponding editors in a complex UI layout or within grid cells.

## Prerequisites

* Embarcadero RAD Studio IDE 13 or newer (Community Edition is not supported)
* [SmartCore AI Component Pack](https://docwiki.embarcadero.com/RADStudio/Florence/en/SmartCore_AI_Component_Pack) installed from [GetIt](https://getitnow.embarcadero.com/smartcore-ai-components)
* DevExpress VCL Components v25.2.3 or newer

## Deploy and Run the Example

To connect this sample project to an AI service provider, you must:

1. Open the main form in **Designer** mode.
2. Select the OpenAI or Google Gemini provider component.
3. Expand the `Params` node in the **Object Inspector** and paste a valid API key into the `APIKey` input box.
4. Uncomment the `TdxSmartCoreAIChatClient.Create` method call for the target AI provider:

```
procedure TSmartCoreAIDemoMainForm.FormCreate(Sender: TObject);
var
  Client: TdxAIChatClient;
begin
  // OpenAI
  // Client := TdxSmartCoreAIChatClient.Create(OpenAIDriver);

  // Google Gemini
  // Client := TdxSmartCoreAIChatClient.Create(GeminiDriver);

  TdxAIChatClients.AddChatClient(Client);
end;
```

> [!NOTE]
> DevExpress AI-powered Extensions follow the "bring your own key" principle. DevExpress does not offer a REST API and does not ship any built-in LLMs/SLMs. You need an active subscription for the required AI service to obtain the REST API endpoint, key, and model deployment name. These variables must be specified at application startup to register AI clients and enable DevExpress AI-powered Extensions in your application.

## Test the Example

### Layout Control

1. Run the sample project.
2. Click the **Copy Text** button or copy text manually (you can edit text directly within the editor box if you wish).
3. Click the **AI-powered Smart Paste** button to insert clipboard content into grouped editors.

![DevExpress VCL - Smart Paste Functionality in the Layout Control](/Delphi/Images/vcl-smartpaste-layout-control-example.gif)

### Grid Control

1. Switch to the **Grid** tab within the sample app.
2. Copy any text line from the memo editor.
3. Move focus to the target grid record or switch to **Append** mode.
4. Right-click the grid's pop-up menu and select the **Smart Paste** option.

![DevExpress VCL - Smart Paste Functionality in the Data Grid Control](/Delphi/Images/vcl-smartpaste-grid-control-example.gif)

## Documentation

* [AI-powered Smart Paste for Native VCL Controls](https://docs.devexpress.com/VCL/405528/ExpressCrossPlatformLibrary/common-features/ai-powered-extensions#native-vcl-control-with-support-for-ai-powered-smart-paste)
* [TcxCustomGridTableView.SmartPaste](https://docs.devexpress.com/VCL/cxGridCustomTableView.TcxCustomGridTableView.SmartPaste(System.String))
* [TdxCustomLayoutGroup.SmartPaste](https://docs.devexpress.com/VCL/dxLayoutContainer.TdxCustomLayoutGroup.SmartPaste(System.String))
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-smartpaste-example&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-smartpaste-example&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
