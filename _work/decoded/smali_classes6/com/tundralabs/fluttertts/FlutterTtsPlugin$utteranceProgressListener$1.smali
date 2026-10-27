.class public final Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "FlutterTtsPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tundralabs/fluttertts/FlutterTtsPlugin;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\"\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J(\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000cH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "onStart",
        "",
        "utteranceId",
        "",
        "onDone",
        "onStop",
        "interrupted",
        "",
        "onProgress",
        "startAt",
        "",
        "endAt",
        "onRangeStart",
        "frame",
        "onError",
        "errorCode",
        "flutter_tts_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;


# direct methods
.method constructor <init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    iput-object p1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 72
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method

.method private final onProgress(Ljava/lang/String;II)V
    .locals 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "startAt"    # I
    .param p3, "endAt"    # I

    .line 126
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "STF_"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getUtterances$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v1, "data":Ljava/util/HashMap;
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "text"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "start"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "end"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "word"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v3, "speak.onProgress"

    invoke-static {v2, v3, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/HashMap;
    :cond_0
    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 6
    .param p1, "utteranceId"    # Ljava/lang/String;

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "SIL_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    const-string v0, "STF_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v2, "Utterance ID has completed: "

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getTag$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSynthCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-virtual {v0, v4}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synthCompletion(I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "synth.onComplete"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getTag$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSpeakCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getQueueMode$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)I

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-virtual {v0, v4}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakCompletion(I)V

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "speak.onComplete"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setLastProgress$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    .line 106
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setPauseText$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getUtterances$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "STF_"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSynthCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setSynth$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v1, "synth.onError"

    const-string v2, "Error from TextToSpeech (synth)"

    invoke-static {v0, v1, v2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSpeakCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setSpeaking$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v1, "speak.onError"

    const-string v2, "Error from TextToSpeech (speak)"

    invoke-static {v0, v1, v2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "STF_"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSynthCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setSynth$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from TextToSpeech (synth) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "synth.onError"

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSpeakCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setSpeaking$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from TextToSpeech (speak) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "speak.onError"

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "startAt"    # I
    .param p3, "endAt"    # I
    .param p4, "frame"    # I

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "STF_"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setLastProgress$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onRangeStart(Ljava/lang/String;III)V

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->onProgress(Ljava/lang/String;II)V

    .line 144
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "STF_"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "synth.onStart"

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$isPaused$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "speak.onContinue"

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0, v3}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setPaused$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getTag$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Utterance ID has started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "speak.onStart"

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    :goto_0
    nop

    .line 88
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getTag$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Utterance ID has been stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$getAwaitSpeakCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$setSpeaking$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-static {v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$isPaused$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "speak.onPause"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;->this$0:Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    const-string v2, "speak.onCancel"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void
.end method
