.class Lio/flutter/plugin/editing/TextInputPlugin$2;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformViewsController2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/TextInputPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/editing/TextInputPlugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClient()V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->clearTextInputClient()V

    .line 167
    return-void
.end method

.method public finishAutofillContext(Z)V
    .locals 1
    .param p1, "shouldSave"    # Z

    .line 133
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$600(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$600(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->commit()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$600(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->cancel()V

    .line 141
    :goto_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 119
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$200(Lio/flutter/plugin/editing/TextInputPlugin;)Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->PHYSICAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$300(Lio/flutter/plugin/editing/TextInputPlugin;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$400(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V

    .line 124
    :goto_0
    return-void
.end method

.method public requestAutofill()V
    .locals 1

    .line 128
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)V

    .line 129
    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 171
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->sendTextInputAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 1
    .param p1, "textInputClientId"    # I
    .param p2, "configuration"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 146
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->setTextInputClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 147
    return-void
.end method

.method public setEditableSizeAndTransform(DD[D)V
    .locals 6
    .param p1, "width"    # D
    .param p3, "height"    # D
    .param p5, "transform"    # [D

    .line 161
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "width":D
    .end local p3    # "height":D
    .end local p5    # "transform":[D
    .local v1, "width":D
    .local v3, "height":D
    .local v5, "transform":[D
    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/TextInputPlugin;->access$800(Lio/flutter/plugin/editing/TextInputPlugin;DD[D)V

    .line 162
    return-void
.end method

.method public setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 2
    .param p1, "editingState"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 156
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->setTextInputEditingState(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 157
    return-void
.end method

.method public setPlatformViewClient(IZ)V
    .locals 1
    .param p1, "platformViewId"    # I
    .param p2, "usesVirtualDisplay"    # Z

    .line 151
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->access$700(Lio/flutter/plugin/editing/TextInputPlugin;IZ)V

    .line 152
    return-void
.end method

.method public show()V
    .locals 2

    .line 114
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin;->showTextInput(Landroid/view/View;)V

    .line 115
    return-void
.end method
