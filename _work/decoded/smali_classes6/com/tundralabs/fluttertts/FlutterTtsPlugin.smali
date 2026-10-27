.class public final Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
.super Ljava/lang/Object;
.source "FlutterTtsPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tundralabs/fluttertts/FlutterTtsPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0008\u001c\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020(2\u0006\u0010,\u001a\u00020-H\u0016J\u000e\u00101\u001a\u00020(2\u0006\u00102\u001a\u00020!J\u000e\u00103\u001a\u00020(2\u0006\u00102\u001a\u00020!J\u0018\u00107\u001a\u00020(2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\nH\u0016J\u0010\u0010;\u001a\u00020(2\u0006\u0010<\u001a\u00020=H\u0002J\u0012\u0010>\u001a\u00020\r2\u0008\u0010?\u001a\u0004\u0018\u00010@H\u0002J&\u0010A\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\r0B2\u000e\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160DH\u0002J\u0012\u0010E\u001a\u00020\r2\u0008\u0010F\u001a\u0004\u0018\u00010\u0016H\u0002J\u001a\u0010G\u001a\u00020(2\u0008\u0010H\u001a\u0004\u0018\u00010\u00162\u0006\u0010:\u001a\u00020\nH\u0002J\u001a\u0010I\u001a\u00020(2\u0008\u0010F\u001a\u0004\u0018\u00010\u00162\u0006\u0010:\u001a\u00020\nH\u0002J&\u0010J\u001a\u00020(2\u0014\u0010K\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u00160\u001d2\u0006\u0010:\u001a\u00020\nH\u0002J\u0018\u0010L\u001a\u00020(2\u0006\u0010M\u001a\u00020=2\u0006\u0010:\u001a\u00020\nH\u0002J\u0018\u0010N\u001a\u00020(2\u0006\u0010O\u001a\u00020=2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010P\u001a\u00020(2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010Q\u001a\u00020(2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010R\u001a\u00020(2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010S\u001a\u00020(2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010T\u001a\u00020(2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010U\u001a\u00020(2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010V\u001a\u00020\r2\u0006\u0010W\u001a\u00020\u0016H\u0002J\u0008\u0010X\u001a\u00020(H\u0002J\u0018\u0010\\\u001a\u00020(2\u0006\u0010W\u001a\u00020\u00162\u0006\u0010]\u001a\u00020\u0016H\u0002J\u0018\u0010^\u001a\u00020(2\u0006\u0010_\u001a\u00020\u00162\u0006\u0010`\u001a\u00020aH\u0002J\u0012\u0010b\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000205X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010Y\u001a\u00020!8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[\u00a8\u0006d"
    }
    d2 = {
        "Lcom/tundralabs/fluttertts/FlutterTtsPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "<init>",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "methodChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "speakResult",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "synthResult",
        "awaitSpeakCompletion",
        "",
        "speaking",
        "awaitSynthCompletion",
        "synth",
        "context",
        "Landroid/content/Context;",
        "tts",
        "Landroid/speech/tts/TextToSpeech;",
        "tag",
        "",
        "googleTtsEngine",
        "isTtsInitialized",
        "pendingMethodCalls",
        "Ljava/util/ArrayList;",
        "Ljava/lang/Runnable;",
        "utterances",
        "Ljava/util/HashMap;",
        "bundle",
        "Landroid/os/Bundle;",
        "silencems",
        "",
        "lastProgress",
        "currentText",
        "pauseText",
        "isPaused",
        "queueMode",
        "initInstance",
        "",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "onAttachedToEngine",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "utteranceProgressListener",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "speakCompletion",
        "success",
        "synthCompletion",
        "onInitListener",
        "Landroid/speech/tts/TextToSpeech$OnInitListener;",
        "firstTimeOnInitListener",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "setSpeechRate",
        "rate",
        "",
        "isLanguageAvailable",
        "locale",
        "Ljava/util/Locale;",
        "areLanguagesInstalled",
        "",
        "languages",
        "",
        "isLanguageInstalled",
        "language",
        "setEngine",
        "engine",
        "setLanguage",
        "setVoice",
        "voice",
        "setVolume",
        "volume",
        "setPitch",
        "pitch",
        "getVoices",
        "getLanguages",
        "getEngines",
        "getDefaultEngine",
        "getDefaultVoice",
        "getSpeechRateValidRange",
        "speak",
        "text",
        "stop",
        "maxSpeechInputLength",
        "getMaxSpeechInputLength",
        "()I",
        "synthesizeToFile",
        "fileName",
        "invokeMethod",
        "method",
        "arguments",
        "",
        "ismServiceConnectionUsable",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/tundralabs/fluttertts/FlutterTtsPlugin$Companion;

.field private static final SILENCE_PREFIX:Ljava/lang/String; = "SIL_"

.field private static final SYNTHESIZE_TO_FILE_PREFIX:Ljava/lang/String; = "STF_"


# instance fields
.field private awaitSpeakCompletion:Z

.field private awaitSynthCompletion:Z

.field private bundle:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private currentText:Ljava/lang/String;

.field private final firstTimeOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final googleTtsEngine:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isPaused:Z

.field private isTtsInitialized:Z

.field private lastProgress:I

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final onInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private pauseText:Ljava/lang/String;

.field private final pendingMethodCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queueMode:I

.field private silencems:I

.field private speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private speaking:Z

.field private synth:Z

.field private synthResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final tag:Ljava/lang/String;

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private final utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final utterances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JdkVzFAdvoMiV5Ep5aatQlsHvwk(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onInitListener$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ud2Ne2QFHcK_tsTk3JTvk3NXKKE(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onMethodCall$lambda$0$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cKeIYd6ey_B-GMusr5zJjCZ-3to(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onMethodCall$lambda$1$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mq0sUTECHOoYNZ8FTWFjevrnX50(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->invokeMethod$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$szwG6qAFnx8UNC3NCu68jZICeU8(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->firstTimeOnInitListener$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFPsDNqPc6CBsULs3LmiLRZPZ_s(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakCompletion$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xVebhFbB-M_OQjxdgsfg33lPtp4(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synthCompletion$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->Companion:Lcom/tundralabs/fluttertts/FlutterTtsPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "TTS"

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    .line 32
    const-string v0, "com.google.android.tts"

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->googleTtsEngine:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->utterances:Ljava/util/HashMap;

    .line 72
    new-instance v0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;

    invoke-direct {v0, p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$utteranceProgressListener$1;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)V

    check-cast v0, Landroid/speech/tts/UtteranceProgressListener;

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 190
    new-instance v0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 220
    new-instance v0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->firstTimeOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 20
    return-void
.end method

.method public static final synthetic access$getAwaitSpeakCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z
    .locals 1
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 20
    iget-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSpeakCompletion:Z

    return v0
.end method

.method public static final synthetic access$getAwaitSynthCompletion$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z
    .locals 1
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 20
    iget-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSynthCompletion:Z

    return v0
.end method

.method public static final synthetic access$getQueueMode$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)I
    .locals 1
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 20
    iget v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->queueMode:I

    return v0
.end method

.method public static final synthetic access$getTag$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 20
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUtterances$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Ljava/util/HashMap;
    .locals 1
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 20
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->utterances:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$invokeMethod(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$isPaused$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;)Z
    .locals 1
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    .line 20
    iget-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isPaused:Z

    return v0
.end method

.method public static final synthetic access$setLastProgress$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 0
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "<set-?>"    # I

    .line 20
    iput p1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->lastProgress:I

    return-void
.end method

.method public static final synthetic access$setPauseText$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPaused$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "<set-?>"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isPaused:Z

    return-void
.end method

.method public static final synthetic access$setSpeaking$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "<set-?>"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speaking:Z

    return-void
.end method

.method public static final synthetic access$setSynth$p(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "<set-?>"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synth:Z

    return-void
.end method

.method private final areLanguagesInstalled(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .param p1, "languages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 435
    .local v0, "result":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 436
    .local v2, "language":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageInstalled(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    .end local v2    # "language":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static final firstTimeOnInitListener$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 4
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "status"    # I

    .line 221
    if-nez p1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 223
    nop

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getLocale(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 236
    .local v0, "$i$a$-synchronized-FlutterTtsPlugin$firstTimeOnInitListener$1$1":I
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    .line 237
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 238
    .local v2, "call":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .end local v2    # "call":Ljava/lang/Runnable;
    goto :goto_1

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 241
    nop

    .end local v0    # "$i$a$-synchronized-FlutterTtsPlugin$firstTimeOnInitListener$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize TextToSpeech with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_2
    return-void
.end method

.method private final getDefaultEngine(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 562
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDefaultEngine(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    .local v0, "defaultEngine":Ljava/lang/String;
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method private final getDefaultVoice(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 567
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    .line 568
    .local v0, "defaultVoice":Landroid/speech/tts/Voice;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v1, "voice":Ljava/util/HashMap;
    if-eqz v0, :cond_0

    .line 570
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "name"

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locale"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_0
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method private final getEngines(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v0, "engines":Ljava/util/ArrayList;
    nop

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getEngines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 553
    .local v2, "engineInfo":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v3, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    .end local v2    # "engineInfo":Landroid/speech/tts/TextToSpeech$EngineInfo;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEngines: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method private final getLanguages(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 526
    const-string v0, "getLanguages: "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "locales":Ljava/util/ArrayList;
    nop

    .line 528
    nop

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getAvailableLanguages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 532
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v3    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 542
    .local v2, "e":Ljava/util/MissingResourceException;
    iget-object v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v2    # "e":Ljava/util/MissingResourceException;
    :cond_0
    :goto_1
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method private final getMaxSpeechInputLength()I
    .locals 1

    .line 617
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v0

    return v0
.end method

.method private final getSpeechRateValidRange(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v0, "data":Ljava/util/HashMap;
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "min"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "normal"

    const-string v3, "0.5"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "max"

    const-string v3, "1.5"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "platform"

    const-string v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 587
    return-void
.end method

.method private final getVoices(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "voices":Ljava/util/ArrayList;
    nop

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/Voice;

    .line 513
    .local v2, "voice":Landroid/speech/tts/Voice;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v3, "voiceMap":Ljava/util/HashMap;
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string v5, "name"

    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string v5, "locale"

    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    .end local v2    # "voice":Landroid/speech/tts/Voice;
    .end local v3    # "voiceMap":Ljava/util/HashMap;
    :cond_0
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 523
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method private final initInstance(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 3
    .param p1, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;
    .param p2, "context"    # Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->context:Landroid/content/Context;

    .line 51
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter_tts"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 52
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->handler:Landroid/os/Handler;

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->bundle:Landroid/os/Bundle;

    .line 55
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->firstTimeOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->googleTtsEngine:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    .line 56
    return-void
.end method

.method private final invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    return-void
.end method

.method private static final invokeMethod$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "$method"    # Ljava/lang/String;
    .param p2, "$arguments"    # Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 638
    nop

    .line 639
    nop

    .line 637
    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    :cond_0
    return-void
.end method

.method private final isLanguageAvailable(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 430
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isLanguageInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .line 442
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "forLanguageTag(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "voiceToCheck":Landroid/speech/tts/Voice;
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/Voice;

    .line 446
    .local v3, "v":Landroid/speech/tts/Voice;
    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    move-object v1, v3

    .line 448
    nop

    .line 451
    .end local v3    # "v":Landroid/speech/tts/Voice;
    :cond_1
    if-eqz v1, :cond_2

    .line 452
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v2

    const-string v3, "getFeatures(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    .local v2, "features":Ljava/util/Set;
    const-string v3, "notInstalled"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    .line 456
    .end local v1    # "voiceToCheck":Landroid/speech/tts/Voice;
    .end local v2    # "features":Ljava/util/Set;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final ismServiceConnectionUsable(Landroid/speech/tts/TextToSpeech;)Z
    .locals 6
    .param p1, "tts"    # Landroid/speech/tts/TextToSpeech;

    .line 645
    const/4 v0, 0x1

    .line 646
    .local v0, "isBindConnection":Z
    if-nez p1, :cond_0

    .line 647
    const/4 v1, 0x0

    return v1

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "getDeclaredFields(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "j":I
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 651
    aget-object v4, v1, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 652
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mServiceConnection"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.speech.tts.TextToSpeech$Connection"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    nop

    .line 654
    :try_start_0
    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 655
    const/4 v0, 0x0

    .line 656
    iget-object v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    const-string v5, "*******TTS -> mServiceConnection == null*******"

    invoke-static {v4, v5}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 662
    :catch_0
    move-exception v4

    .line 663
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 660
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 661
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 658
    :catch_2
    move-exception v4

    .line 659
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 650
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "j":I
    :cond_2
    return v0
.end method

.method private static final onInitListener$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 4
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "status"    # I

    .line 191
    if-nez p1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 193
    nop

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getLocale(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    .local v0, "$i$a$-synchronized-FlutterTtsPlugin$onInitListener$1$1":I
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    .line 207
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 208
    .local v2, "call":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .end local v2    # "call":Ljava/lang/Runnable;
    goto :goto_1

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 211
    nop

    .end local v0    # "$i$a$-synchronized-FlutterTtsPlugin$onInitListener$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    monitor-exit p0

    .line 212
    const-string v0, "tts.init"

    iget-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize TextToSpeech with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "tts.init"

    iget-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    :goto_2
    return-void
.end method

.method private static final onMethodCall$lambda$0$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "$call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "$result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private static final onMethodCall$lambda$1$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "$call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "$result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private final setEngine(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1, "engine"    # Ljava/lang/String;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 460
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method private final setLanguage(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 466
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "forLanguageTag(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 469
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 473
    :goto_0
    return-void
.end method

.method private final setPitch(FLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "pitch"    # F
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 500
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pitch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value - Range is from 0.5 to 2.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 507
    :goto_1
    return-void
.end method

.method private final setSpeechRate(F)V
    .locals 1
    .param p1, "rate"    # F

    .line 426
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 427
    return-void
.end method

.method private final setVoice(Ljava/util/HashMap;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "voice"    # Ljava/util/HashMap;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/Voice;

    .line 477
    .local v1, "ttsVoice":Landroid/speech/tts/Voice;
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 477
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 481
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 482
    return-void

    .line 485
    .end local v1    # "ttsVoice":Landroid/speech/tts/Voice;
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voice name not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method private final setVolume(FLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "volume"    # F
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 490
    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "volume"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value - Range is from 0.0 to 1.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 497
    :goto_1
    return-void
.end method

.method private final speak(Ljava/lang/String;)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 590
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->utterances:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->ismServiceConnectionUsable(Landroid/speech/tts/TextToSpeech;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 593
    iget v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->silencems:I

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 595
    iget v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->silencems:I

    int-to-long v4, v4

    .line 596
    nop

    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIL_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 594
    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v3, v5, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    iget v5, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->queueMode:I

    iget-object v6, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    .line 604
    :cond_1
    iput-boolean v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    .line 605
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->onInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v5, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->googleTtsEngine:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    .line 606
    nop

    .line 592
    :cond_2
    :goto_0
    return v2
.end method

.method private static final speakCompletion$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 2
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "$success"    # I

    .line 179
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 181
    return-void
.end method

.method private final stop()V
    .locals 2

    .line 611
    iget-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSynthCompletion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synth:Z

    .line 612
    :cond_0
    iget-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSpeakCompletion:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speaking:Z

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 614
    return-void
.end method

.method private static final synthCompletion$lambda$0(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V
    .locals 2
    .param p0, "this$0"    # Lcom/tundralabs/fluttertts/FlutterTtsPlugin;
    .param p1, "$success"    # I

    .line 186
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synthResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 620
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 623
    nop

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STF_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    const-string v5, "utteranceId"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->bundle:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v2

    .line 626
    nop

    .line 628
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 629
    iget-object v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully created file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed creating file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    const-string v1, "getBinaryMessenger(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->initInstance(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->stop()V

    .line 65
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->context:Landroid/content/Context;

    .line 67
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 68
    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 69
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    monitor-enter p0

    const/4 v0, 0x0

    .line 250
    .local v0, "$i$a$-synchronized-FlutterTtsPlugin$onMethodCall$1":I
    :try_start_0
    iget-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isTtsInitialized:Z

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 253
    .local v1, "suspendedCall":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    nop

    .line 249
    .end local v0    # "$i$a$-synchronized-FlutterTtsPlugin$onMethodCall$1":I
    .end local v1    # "suspendedCall":Ljava/lang/Runnable;
    monitor-exit p0

    return-void

    .line 256
    .restart local v0    # "$i$a$-synchronized-FlutterTtsPlugin$onMethodCall$1":I
    :cond_0
    nop

    .end local v0    # "$i$a$-synchronized-FlutterTtsPlugin$onMethodCall$1":I
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    monitor-exit p0

    .line 257
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "getMaxSpeechInputLength"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getMaxSpeechInputLength()I

    move-result v0

    .line 310
    .local v0, "res":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "res":I
    goto/16 :goto_2

    .line 257
    :sswitch_1
    const-string v1, "getLanguages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 382
    :cond_2
    invoke-direct {p0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getLanguages(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 257
    :sswitch_2
    const-string v1, "setVoice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 389
    :cond_3
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 390
    .local v0, "voice":Ljava/util/HashMap;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->setVoice(Ljava/util/HashMap;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .end local v0    # "voice":Ljava/util/HashMap;
    goto/16 :goto_2

    .line 257
    :sswitch_3
    const-string v1, "setPitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    .line 373
    :cond_4
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "pitch":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->setPitch(FLio/flutter/plugin/common/MethodChannel$Result;)V

    .end local v0    # "pitch":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_4
    const-string v1, "synthesizeToFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 314
    :cond_5
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synth:Z

    if-eqz v1, :cond_6

    .line 316
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 317
    return-void

    .line 319
    :cond_6
    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-boolean v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSynthCompletion:Z

    if-eqz v2, :cond_7

    .line 322
    iput-boolean v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synth:Z

    .line 323
    iput-object p2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synthResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto/16 :goto_2

    .line 325
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_5
    const-string v1, "setSpeechRate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 360
    :cond_8
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "rate":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->setSpeechRate(F)V

    .line 364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "rate":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_6
    const-string v1, "isLanguageInstalled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    .line 406
    :cond_9
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "language":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageInstalled(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "language":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_7
    const-string v1, "getSpeechRateValidRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    .line 384
    :cond_a
    invoke-direct {p0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getSpeechRateValidRange(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 257
    :sswitch_8
    const-string v1, "getDefaultVoice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    .line 387
    :cond_b
    invoke-direct {p0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getDefaultVoice(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 257
    :sswitch_9
    const-string v1, "getVoices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1

    .line 383
    :cond_c
    invoke-direct {p0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getVoices(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 257
    :sswitch_a
    const-string v1, "setSilence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1

    .line 400
    :cond_d
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "silencems":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->silencems:I

    .end local v0    # "silencems":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_b
    const-string v1, "setVolume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    .line 368
    :cond_e
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "volume":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->setVolume(FLio/flutter/plugin/common/MethodChannel$Result;)V

    .end local v0    # "volume":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_c
    const-string v1, "setLanguage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_1

    .line 378
    :cond_f
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "language":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->setLanguage(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .end local v0    # "language":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_d
    const-string v1, "isLanguageAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_1

    .line 394
    :cond_10
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .restart local v0    # "language":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "forLanguageTag(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .local v1, "locale":Ljava/util/Locale;
    invoke-direct {p0, v1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "locale":Ljava/util/Locale;
    goto/16 :goto_2

    .line 257
    :sswitch_e
    const-string v1, "setEngine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1

    .line 355
    :cond_11
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "engine":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->setEngine(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .end local v0    # "engine":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_f
    const-string v1, "speak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1

    .line 259
    :cond_12
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 261
    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->currentText:Ljava/lang/String;

    .line 264
    :cond_13
    iget-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isPaused:Z

    if-eqz v1, :cond_15

    .line 266
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->currentText:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 267
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 269
    :cond_14
    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->currentText:Ljava/lang/String;

    .line 271
    iput v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->lastProgress:I

    .line 274
    :cond_15
    :goto_0
    iget-boolean v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speaking:Z

    if-eqz v1, :cond_16

    .line 276
    iget v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->queueMode:I

    if-nez v1, :cond_16

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 278
    return-void

    .line 281
    :cond_16
    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speak(Ljava/lang/String;)Z

    move-result v1

    .line 282
    .local v1, "b":Z
    if-nez v1, :cond_17

    .line 283
    monitor-enter p0

    const/4 v2, 0x0

    .line 284
    .local v2, "$i$a$-synchronized-FlutterTtsPlugin$onMethodCall$2":I
    :try_start_2
    new-instance v3, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda5;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 285
    .local v3, "suspendedCall":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pendingMethodCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .end local v2    # "$i$a$-synchronized-FlutterTtsPlugin$onMethodCall$2":I
    .end local v3    # "suspendedCall":Ljava/lang/Runnable;
    monitor-exit p0

    .line 287
    return-void

    .line 283
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 290
    :cond_17
    iget-boolean v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSpeakCompletion:Z

    if-eqz v2, :cond_18

    iget v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->queueMode:I

    if-nez v2, :cond_18

    .line 291
    iput-boolean v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speaking:Z

    .line 292
    iput-object p2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto/16 :goto_2

    .line 294
    :cond_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "b":Z
    goto/16 :goto_2

    .line 257
    :sswitch_10
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_1

    .line 330
    :cond_19
    iput-boolean v4, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isPaused:Z

    .line 331
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 332
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->lastProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    .line 334
    :cond_1a
    invoke-direct {p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->stop()V

    .line 335
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_24

    .line 337
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 338
    iput-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto/16 :goto_2

    .line 257
    :sswitch_11
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_1

    .line 343
    :cond_1b
    iput-boolean v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->isPaused:Z

    .line 344
    iput-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->pauseText:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->stop()V

    .line 346
    iput v3, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->lastProgress:I

    .line 347
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_24

    .line 349
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 350
    iput-object v2, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speakResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto/16 :goto_2

    .line 257
    :sswitch_12
    const-string v1, "setQueueMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_1

    .line 416
    :cond_1c
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "queueMode":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->queueMode:I

    .line 418
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "queueMode":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    :sswitch_13
    const-string v1, "getDefaultEngine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_1

    .line 386
    :cond_1d
    invoke-direct {p0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getDefaultEngine(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 257
    :sswitch_14
    const-string v1, "getEngines"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_1

    .line 385
    :cond_1e
    invoke-direct {p0, p2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->getEngines(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 257
    :sswitch_15
    const-string v1, "awaitSynthCompletion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_1

    .line 304
    :cond_1f
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSynthCompletion:Z

    .line 305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 257
    :sswitch_16
    const-string v1, "setSharedInstance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_1

    .line 404
    :cond_20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 257
    :sswitch_17
    const-string v1, "areLanguagesInstalled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_1

    .line 411
    :cond_21
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 412
    .local v0, "languages":Ljava/util/List;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->areLanguagesInstalled(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .end local v0    # "languages":Ljava/util/List;
    goto :goto_2

    .line 257
    :sswitch_18
    const-string v1, "awaitSpeakCompletion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_1

    .line 299
    :cond_22
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->awaitSpeakCompletion:Z

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 421
    :cond_23
    :goto_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 423
    :cond_24
    :goto_2
    return-void

    .line 249
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x511bb6e8 -> :sswitch_18
        -0x493dc8ed -> :sswitch_17
        -0x44c85ae4 -> :sswitch_16
        -0x2a3337fe -> :sswitch_15
        -0x21cb75c5 -> :sswitch_14
        -0x20d2fbd3 -> :sswitch_13
        -0xbeff7ee -> :sswitch_12
        0x360802 -> :sswitch_11
        0x65825f6 -> :sswitch_10
        0x688ffd2 -> :sswitch_f
        0xae45144 -> :sswitch_e
        0x10844647 -> :sswitch_d
        0x166531da -> :sswitch_c
        0x27f73e1c -> :sswitch_b
        0x2df97ddf -> :sswitch_a
        0x34c06877 -> :sswitch_9
        0x39af6de7 -> :sswitch_8
        0x39ef4599 -> :sswitch_7
        0x3dfdf2f8 -> :sswitch_6
        0x40cf8ee4 -> :sswitch_5
        0x4f15f761 -> :sswitch_4
        0x538783fe -> :sswitch_3
        0x53dea1f0 -> :sswitch_2
        0x59ed4965 -> :sswitch_1
        0x67d6e880 -> :sswitch_0
    .end sparse-switch
.end method

.method public final speakCompletion(I)V
    .locals 2
    .param p1, "success"    # I

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->speaking:Z

    .line 178
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda6;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public final synthCompletion(I)V
    .locals 2
    .param p1, "success"    # I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->synth:Z

    .line 186
    iget-object v0, p0, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/tundralabs/fluttertts/FlutterTtsPlugin;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method
