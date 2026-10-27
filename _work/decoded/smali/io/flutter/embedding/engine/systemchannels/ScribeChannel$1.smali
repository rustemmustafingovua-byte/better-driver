.class Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;
.super Ljava/lang/Object;
.source "ScribeChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 45
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;)Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    move-result-object v0

    const-string v1, "ScribeChannel"

    if-nez v0, :cond_0

    .line 46
    const-string v0, "No ScribeMethodHandler registered. Scribe call not handled."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 49
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 50
    .local v0, "method":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "Scribe.isStylusHandwritingAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "Scribe.startStylusHandwriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "Scribe.isFeatureAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 62
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 59
    :pswitch_0
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    invoke-static {v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->access$300(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 60
    goto :goto_2

    .line 56
    :pswitch_1
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    invoke-static {v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->access$200(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 57
    goto :goto_2

    .line 53
    :pswitch_2
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    invoke-static {v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->access$100(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 54
    nop

    .line 65
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2a11fcff -> :sswitch_2
        0x68dc8e5d -> :sswitch_1
        0x7e58a2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
