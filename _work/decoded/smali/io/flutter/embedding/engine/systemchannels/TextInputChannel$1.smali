.class Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;
.super Ljava/lang/Object;
.source "TextInputChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 19
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 60
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "data"

    iget-object v4, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v4}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v4

    if-nez v4, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v4, v2, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 67
    .local v4, "method":Ljava/lang/String;
    iget-object v5, v2, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 68
    .local v5, "args":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' message."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TextInputChannel"

    invoke-static {v7, v6}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v6, "TextInput.requestAutofill"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "TextInput.clearClient"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v6, "TextInput.finishAutofillContext"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_3
    const-string v6, "TextInput.setEditableSizeAndTransform"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_4
    const-string v6, "TextInput.sendAppPrivateCommand"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_5
    const-string v6, "TextInput.show"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :sswitch_6
    const-string v6, "TextInput.hide"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :sswitch_7
    const-string v6, "TextInput.setClient"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_8
    const-string v6, "TextInput.setEditingState"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_9
    const-string v6, "TextInput.setPlatformViewClient"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :goto_0
    const/4 v6, -0x1

    :goto_1
    const-string v9, "error"

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_0

    .line 159
    invoke-interface {v3}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_4

    .line 155
    :pswitch_0
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v6}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->finishAutofillContext(Z)V

    .line 156
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 157
    goto/16 :goto_4

    .line 140
    :pswitch_1
    :try_start_0
    move-object v6, v5

    check-cast v6, Lorg/json/JSONObject;

    .line 141
    .local v6, "arguments":Lorg/json/JSONObject;
    const-string v7, "action"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "action":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "data":Ljava/lang/String;
    const/4 v11, 0x0

    .line 144
    .local v11, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 145
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v11, v12

    .line 146
    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0, v7, v11}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v6    # "arguments":Lorg/json/JSONObject;
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "data":Ljava/lang/String;
    .end local v11    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_4

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "exception":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    .end local v0    # "exception":Lorg/json/JSONException;
    goto/16 :goto_4

    .line 135
    :pswitch_2
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->clearClient()V

    .line 136
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 137
    goto/16 :goto_4

    .line 119
    :pswitch_3
    :try_start_1
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    .line 120
    .local v0, "arguments":Lorg/json/JSONObject;
    const-string v6, "width"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-wide v12, v6

    .line 121
    .local v12, "width":D
    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 122
    .local v14, "height":D
    const-string v6, "transform"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 123
    .local v6, "jsonMatrix":Lorg/json/JSONArray;
    const/16 v7, 0x10

    new-array v8, v7, [D

    move-object/from16 v16, v8

    .line 124
    .local v16, "matrix":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_3

    .line 125
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v17

    aput-wide v17, v16, v8

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 128
    .end local v8    # "i":I
    :cond_3
    iget-object v7, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v7}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v11

    invoke-interface/range {v11 .. v16}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditableSizeAndTransform(DD[D)V

    .line 129
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v0    # "arguments":Lorg/json/JSONObject;
    .end local v6    # "jsonMatrix":Lorg/json/JSONArray;
    .end local v12    # "width":D
    .end local v14    # "height":D
    .end local v16    # "matrix":[D
    goto/16 :goto_4

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .local v0, "exception":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .end local v0    # "exception":Lorg/json/JSONException;
    goto/16 :goto_4

    .line 110
    :pswitch_4
    :try_start_2
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    .line 111
    .local v0, "editingState":Lorg/json/JSONObject;
    iget-object v6, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v6}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v6

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 112
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .end local v0    # "editingState":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 113
    :catch_2
    move-exception v0

    .line 114
    .local v0, "exception":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .end local v0    # "exception":Lorg/json/JSONException;
    goto/16 :goto_4

    .line 98
    :pswitch_5
    :try_start_3
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    .line 99
    .local v0, "arguments":Lorg/json/JSONObject;
    const-string v6, "platformViewId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 100
    .local v6, "platformViewId":I
    const-string v8, "usesVirtualDisplay"

    .line 101
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 102
    .local v7, "usesVirtualDisplay":Z
    iget-object v8, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v8}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setPlatformViewClient(IZ)V

    .line 103
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    .end local v0    # "arguments":Lorg/json/JSONObject;
    .end local v6    # "platformViewId":I
    .end local v7    # "usesVirtualDisplay":Z
    goto :goto_4

    .line 104
    :catch_3
    move-exception v0

    .line 105
    .local v0, "exception":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .end local v0    # "exception":Lorg/json/JSONException;
    goto :goto_4

    .line 93
    :pswitch_6
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->requestAutofill()V

    .line 94
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 95
    goto :goto_4

    .line 80
    :pswitch_7
    :try_start_4
    move-object v0, v5

    check-cast v0, Lorg/json/JSONArray;

    .line 81
    .local v0, "argumentList":Lorg/json/JSONArray;
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 82
    .local v6, "textInputClientId":I
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 83
    .local v7, "jsonConfiguration":Lorg/json/JSONObject;
    iget-object v8, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v8}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v8

    .line 84
    invoke-static {v7}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    move-result-object v11

    .line 83
    invoke-interface {v8, v6, v11}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 85
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    .line 90
    .end local v0    # "argumentList":Lorg/json/JSONArray;
    .end local v6    # "textInputClientId":I
    .end local v7    # "jsonConfiguration":Lorg/json/JSONObject;
    goto :goto_4

    .line 86
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    .line 89
    .local v0, "exception":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .end local v0    # "exception":Ljava/lang/Exception;
    goto :goto_4

    .line 75
    :pswitch_8
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->hide()V

    .line 76
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 77
    goto :goto_4

    .line 71
    :pswitch_9
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->show()V

    .line 72
    invoke-interface {v3, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 73
    nop

    .line 162
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_9
        -0x3c861a16 -> :sswitch_8
        -0x23d2364 -> :sswitch_7
        0x101f2613 -> :sswitch_6
        0x102423ce -> :sswitch_5
        0x26b1e570 -> :sswitch_4
        0x47cf0f0b -> :sswitch_3
        0x66f8a3d9 -> :sswitch_2
        0x71834287 -> :sswitch_1
        0x7df775f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
