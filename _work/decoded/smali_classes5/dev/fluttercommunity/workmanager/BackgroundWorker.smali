.class public final Ldev/fluttercommunity/workmanager/BackgroundWorker;
.super Landroidx/work/ListenableWorker;
.source "BackgroundWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/BackgroundWorker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackgroundWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundWorker.kt\ndev/fluttercommunity/workmanager/BackgroundWorker\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,455:1\n508#2:456\n454#2:457\n493#2:462\n442#2:463\n1266#3,4:458\n1#4:464\n*S KotlinDebug\n*F\n+ 1 BackgroundWorker.kt\ndev/fluttercommunity/workmanager/BackgroundWorker\n*L\n427#1:456\n427#1:457\n427#1:462\n427#1:463\n427#1:458,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 <2\u00020\u0001:\u0001<B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010.\u001a\u0008\u0012\u0004\u0012\u00020&0(H\u0016J\u001c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020&0(2\u000c\u00100\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010(H\u0002J\u0008\u00101\u001a\u000202H\u0016J \u00103\u001a\u0002022\u0018\u00104\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000bJ(\u00105\u001a\u0002022\u0008\u00106\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u00108\u001a\u00020\u0016H\u0002J\u0008\u00109\u001a\u00020\u0016H\u0002J\u0006\u0010:\u001a\u000202J\u0008\u0010;\u001a\u000202H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010$\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\'\u001a\u0010\u0012\u000c\u0012\n )*\u0004\u0018\u00010&0&0(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/BackgroundWorker;",
        "Landroidx/work/ListenableWorker;",
        "applicationContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "flutterApi",
        "Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;",
        "payload",
        "",
        "",
        "",
        "getPayload",
        "()Ljava/util/Map;",
        "dartTask",
        "getDartTask",
        "()Ljava/lang/String;",
        "uniqueName",
        "getUniqueName",
        "runAttemptCount",
        "",
        "randomThreadIdentifier",
        "mainHandler",
        "Landroid/os/Handler;",
        "engine",
        "Lio/flutter/embedding/engine/FlutterEngine;",
        "initializationWatchdog",
        "Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;",
        "taskStarted",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "boundPlugin",
        "Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;",
        "startTime",
        "",
        "completer",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;",
        "Landroidx/work/ListenableWorker$Result;",
        "resolvableFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "kotlin.jvm.PlatformType",
        "foregroundServiceConfig",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "directExecutor",
        "Ljava/util/concurrent/Executor;",
        "startWork",
        "combineForegroundWithResult",
        "foregroundFuture",
        "onStopped",
        "",
        "reportProgress",
        "progress",
        "stopEngine",
        "result",
        "errorMessage",
        "stopReason",
        "workerStopReason",
        "onDartBackgroundChannelInitialized",
        "executeBackgroundTask",
        "Companion",
        "workmanager_android_debug"
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/BackgroundWorker$Companion;

.field public static final DART_INITIALIZATION_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DART_TASK_KEY:Ljava/lang/String; = "dev.fluttercommunity.workmanager.DART_TASK"

.field public static final PAYLOAD_KEY:Ljava/lang/String; = "dev.fluttercommunity.workmanager.INPUT_DATA"


# instance fields
.field private boundPlugin:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

.field private completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final directExecutor:Ljava/util/concurrent/Executor;

.field private volatile engine:Lio/flutter/embedding/engine/FlutterEngine;

.field private flutterApi:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

.field private final foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

.field private initializationWatchdog:Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;

.field private final mainHandler:Landroid/os/Handler;

.field private final randomThreadIdentifier:I

.field private resolvableFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final runAttemptCount:I

.field private startTime:J

.field private final taskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final workerParams:Landroidx/work/WorkerParameters;


# direct methods
.method public static synthetic $r8$lambda$D62eDO2HRL3cet3wD1-B0plHmL8(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->resolvableFuture$lambda$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DtFAWSvur9dLU6wqkI6ABQw42xo(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lio/flutter/embedding/engine/loader/FlutterLoader;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startWork$lambda$1(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lw2YfcuxzVYlFD1vEkkJ8Br274I(Ldev/fluttercommunity/workmanager/BackgroundWorker;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startWork$lambda$1$1$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XzyDA6vmv_etOnhO_592CvZyqMY(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->directExecutor$lambda$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zlg9N8NfMcT44KGxE_mOzY9p6XQ(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->combineForegroundWithResult$lambda$0(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zn0JWykyWPIkkUwcQ9mc89Us5Yw(Ldev/fluttercommunity/workmanager/BackgroundWorker;ILkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->onStopped$lambda$0$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;ILkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aZatY59EPOURtN-F2U0XbEFftYs(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 0

    invoke-static {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$lambda$0(Lio/flutter/embedding/engine/FlutterEngine;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cl3nUI6_3ymKSZju-ZBqF7-cB5c(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V
    .locals 0

    invoke-static {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->onDartBackgroundChannelInitialized$lambda$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$grnK6ySq3i0vOK0VbNDpwiIgeHk(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->combineForegroundWithResult$lambda$0$0(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPkHRyRO7IeIaBbUQxHyqA4u51Y(Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->onStopped$lambda$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xH10hcnHLr9TnvvvUWO4ws8YYJE(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->executeBackgroundTask$lambda$2(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/BackgroundWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/BackgroundWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->Companion:Ldev/fluttercommunity/workmanager/BackgroundWorker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "workerParams"    # Landroidx/work/WorkerParameters;

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 31
    nop

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 30
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerParams:Landroidx/work/WorkerParameters;

    .line 64
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerParams:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getRunAttemptCount()I

    move-result v0

    iput v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->runAttemptCount:I

    .line 65
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    iput v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->randomThreadIdentifier:I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->mainHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->taskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    new-instance v0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda0;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "getFuture(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->resolvableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 106
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerParams:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object v0

    invoke-static {v0}, Ldev/fluttercommunity/workmanager/InputDataUtilsKt;->decodeForegroundServiceConfig(Landroidx/work/Data;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    move-result-object v0

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 108
    new-instance v0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->directExecutor:Ljava/util/concurrent/Executor;

    .line 28
    return-void
.end method

.method private final combineForegroundWithResult(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "foregroundFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 235
    if-nez p1, :cond_0

    .line 236
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->resolvableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "getFuture(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final combineForegroundWithResult$lambda$0(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4
    .param p0, "$foregroundFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p2, "combinedCompleter"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v0, "combinedCompleter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 242
    .local v0, "completed":Ljava/util/concurrent/atomic/AtomicBoolean;
    nop

    .line 241
    new-instance v1, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0, p2}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 254
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p1, Ldev/fluttercommunity/workmanager/BackgroundWorker;->directExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 255
    iget-object v2, p1, Ldev/fluttercommunity/workmanager/BackgroundWorker;->resolvableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p1, Ldev/fluttercommunity/workmanager/BackgroundWorker;->directExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 256
    const/4 v2, 0x0

    return-object v2
.end method

.method private static final combineForegroundWithResult$lambda$0$0(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 7
    .param p0, "$foregroundFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p2, "$completed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "$combinedCompleter"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 243
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Ldev/fluttercommunity/workmanager/BackgroundWorker;->resolvableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    move-object v0, p0

    .line 464
    .local v0, "it":Lcom/google/common/util/concurrent/ListenableFuture;
    const/4 v1, 0x0

    .line 244
    .local v1, "$i$a$-takeUnless-BackgroundWorker$combineForegroundWithResult$1$listener$1$1":I
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .end local v0    # "it":Lcom/google/common/util/concurrent/ListenableFuture;
    .end local v1    # "$i$a$-takeUnless-BackgroundWorker$combineForegroundWithResult$1$listener$1$1":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .restart local v0    # "it":Lcom/google/common/util/concurrent/ListenableFuture;
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$a$-let-BackgroundWorker$combineForegroundWithResult$1$listener$1$2":I
    nop

    .line 246
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    .line 248
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getApplicationContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v1, v6}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 249
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 244
    .end local v0    # "it":Lcom/google/common/util/concurrent/ListenableFuture;
    .end local v2    # "$i$a$-let-BackgroundWorker$combineForegroundWithResult$1$listener$1$2":I
    nop

    .line 251
    :cond_1
    iget-object v0, p1, Ldev/fluttercommunity/workmanager/BackgroundWorker;->resolvableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 253
    :cond_2
    return-void
.end method

.method private static final directExecutor$lambda$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "it"    # Ljava/lang/Runnable;

    .line 108
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final executeBackgroundTask()V
    .locals 13

    .line 427
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getPayload()Ljava/util/Map;

    move-result-object v0

    .local v0, "$this$mapKeys$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 456
    .local v1, "$i$f$mapKeys":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .local v2, "destination$iv$iv":Ljava/util/Map;
    move-object v3, v0

    .local v3, "$this$mapKeysTo$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 457
    .local v4, "$i$f$mapKeysTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    move-object v6, v2

    .local v6, "destination$iv$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 458
    .local v7, "$i$f$associateByTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 459
    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "it":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 427
    .local v11, "$i$a$-mapKeys-BackgroundWorker$executeBackgroundTask$pigeonPayload$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 459
    .end local v10    # "it":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-mapKeys-BackgroundWorker$executeBackgroundTask$pigeonPayload$1":I
    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 457
    .local v11, "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1$iv$iv":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 459
    .end local v10    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1$iv$iv":I
    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 461
    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 457
    .end local v5    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$associateByTo":I
    nop

    .line 456
    .end local v2    # "destination$iv$iv":Ljava/util/Map;
    .end local v3    # "$this$mapKeysTo$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapKeysTo":I
    nop

    .line 427
    .end local v0    # "$this$mapKeys$iv":Ljava/util/Map;
    .end local v1    # "$i$f$mapKeys":I
    nop

    .local v6, "$this$mapValues$iv":Ljava/util/Map;
    const/4 v0, 0x0

    .line 462
    .local v0, "$i$f$mapValues":I
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .local v1, "destination$iv$iv":Ljava/util/Map;
    move-object v2, v6

    .local v2, "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 463
    .local v3, "$i$f$mapValuesTo":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    move-object v5, v1

    .local v5, "destination$iv$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 458
    .restart local v7    # "$i$f$associateByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 459
    .restart local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    .restart local v10    # "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 463
    .local v11, "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 459
    .end local v10    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "it":Ljava/util/Map$Entry;
    const/4 v12, 0x0

    .line 427
    .local v12, "$i$a$-mapValues-BackgroundWorker$executeBackgroundTask$pigeonPayload$2":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 459
    .end local v11    # "it":Ljava/util/Map$Entry;
    .end local v12    # "$i$a$-mapValues-BackgroundWorker$executeBackgroundTask$pigeonPayload$2":I
    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 461
    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .line 463
    .end local v4    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "destination$iv$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$associateByTo":I
    nop

    .line 462
    .end local v1    # "destination$iv$iv":Ljava/util/Map;
    .end local v2    # "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    .end local v3    # "$i$f$mapValuesTo":I
    nop

    .line 427
    .end local v0    # "$i$f$mapValues":I
    .end local v6    # "$this$mapValues$iv":Ljava/util/Map;
    nop

    .line 429
    .local v5, "pigeonPayload":Ljava/util/Map;
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getDartTask()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "localDartTask":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 432
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Dart task is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 433
    .local v2, "exception":Ljava/lang/IllegalStateException;
    sget-object v3, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "getApplicationContext(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v1, v6}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 435
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V

    .line 436
    return-void

    .line 439
    .end local v2    # "exception":Ljava/lang/IllegalStateException;
    :cond_2
    move-object v7, p0

    iget-object v2, v7, Ldev/fluttercommunity/workmanager/BackgroundWorker;->flutterApi:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

    if-nez v2, :cond_3

    const-string v2, "flutterApi"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    new-instance v2, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda9;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    invoke-virtual {v1, v0, v5, v2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;->executeTask(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    .line 453
    return-void
.end method

.method private static final executeBackgroundTask$lambda$2(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lkotlin/Result;)Lkotlin/Unit;
    .locals 14
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p1, "result"    # Lkotlin/Result;

    .line 440
    nop

    .line 441
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 443
    .local v0, "wasSuccessful":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    :goto_2
    move-object v3, v1

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .end local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .local v2, "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    invoke-static/range {v2 .. v7}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V

    .end local v0    # "wasSuccessful":Z
    goto :goto_3

    .line 445
    .end local v2    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .restart local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    :cond_3
    move-object v2, p0

    .end local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .restart local v2    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 446
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    .line 449
    .local p0, "exception":Ljava/lang/Throwable;
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v9

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v10, v1

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    .end local v2    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .local v8, "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    invoke-static/range {v8 .. v13}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V

    .line 452
    .end local v8    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .end local p0    # "exception":Ljava/lang/Throwable;
    .restart local v2    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getDartTask()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerParams:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "dev.fluttercommunity.workmanager.DART_TASK"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerParams:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ldev/fluttercommunity/workmanager/InputDataUtilsKt;->decodePayload(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final onDartBackgroundChannelInitialized$lambda$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V
    .locals 3
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 417
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->isStopped()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    if-nez v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->taskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->initializationWatchdog:Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->disarm()V

    .line 420
    :cond_1
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->executeBackgroundTask()V

    .line 422
    :cond_2
    return-void

    .line 417
    :cond_3
    :goto_0
    return-void
.end method

.method private static final onStopped$lambda$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/lang/String;I)V
    .locals 14
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p1, "$localDartTask"    # Ljava/lang/String;
    .param p2, "$stopReason"    # I

    .line 273
    move/from16 v10, p2

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->initializationWatchdog:Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->disarm()V

    .line 275
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->flutterApi:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_2

    .line 276
    nop

    .line 277
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->flutterApi:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

    if-nez v0, :cond_1

    const-string v0, "flutterApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    int-to-long v2, v10

    new-instance v4, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v10}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;I)V

    invoke-virtual {v0, p1, v2, v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;->onTaskStopped(Ljava/lang/String;JLkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-void

    .line 281
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 282
    .local v11, "e":Ljava/lang/Exception;
    sget-object v12, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    .line 283
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v0, "getApplicationContext(...)"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ldev/fluttercommunity/workmanager/TaskDebugInfo;

    .line 285
    nop

    .line 284
    nop

    .line 286
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getPayload()Ljava/util/Map;

    move-result-object v3

    .line 287
    iget-wide v4, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startTime:J

    .line 284
    const/16 v8, 0x32

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 289
    move-object v1, v11

    check-cast v1, Ljava/lang/Throwable;

    .line 282
    invoke-virtual {v12, v13, v0, v1}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 293
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v10

    invoke-static/range {v1 .. v6}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V

    .line 294
    return-void
.end method

.method private static final onStopped$lambda$0$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;ILkotlin/Result;)Lkotlin/Unit;
    .locals 6
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p1, "$stopReason"    # I
    .param p2, "it"    # Lkotlin/Result;

    .line 278
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    .end local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .end local p1    # "$stopReason":I
    .local v0, "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .local v3, "$stopReason":I
    invoke-static/range {v0 .. v5}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V

    .line 279
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final resolvableFuture$lambda$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v0, "completer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final startWork$lambda$1(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lio/flutter/embedding/engine/loader/FlutterLoader;)V
    .locals 17
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .param p1, "$flutterLoader"    # Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 132
    move-object/from16 v0, p0

    new-instance v1, Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 133
    iget-object v1, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .local v1, "engine":Lio/flutter/embedding/engine/FlutterEngine;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$a$-let-BackgroundWorker$startWork$1$1":I
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v4

    const-class v5, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    invoke-interface {v4, v5}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    move-result-object v4

    instance-of v5, v4, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    if-eqz v5, :cond_0

    check-cast v4, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .local v4, "plugin":Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;
    const/4 v5, 0x0

    .line 138
    .local v5, "$i$a$-let-BackgroundWorker$startWork$1$1$1":I
    iput-object v4, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->boundPlugin:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    .line 139
    invoke-virtual {v4, v0}, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->bindWorker$workmanager_android_debug(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    .line 140
    nop

    .line 137
    .end local v4    # "plugin":Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;
    .end local v5    # "$i$a$-let-BackgroundWorker$startWork$1$1$1":I
    nop

    .line 140
    :cond_1
    nop

    .line 133
    .end local v1    # "engine":Lio/flutter/embedding/engine/FlutterEngine;
    .end local v3    # "$i$a$-let-BackgroundWorker$startWork$1$1":I
    nop

    .line 142
    :cond_2
    sget-object v1, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->Companion:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getApplicationContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$Companion;->getCallbackHandle(Landroid/content/Context;)J

    move-result-wide v5

    .line 143
    .local v5, "callbackHandle":J
    invoke-static {v5, v6}, Lio/flutter/view/FlutterCallbackInformation;->lookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;

    move-result-object v1

    .line 145
    .local v1, "callbackInfo":Lio/flutter/view/FlutterCallbackInformation;
    if-nez v1, :cond_4

    .line 146
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to resolve Dart callback for handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, "exception":Ljava/lang/IllegalStateException;
    sget-object v7, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v2, v4}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 148
    iget-object v2, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    return-void

    .line 152
    .end local v3    # "exception":Ljava/lang/IllegalStateException;
    :cond_4
    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getDartTask()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "localDartTask":Ljava/lang/String;
    if-nez v8, :cond_6

    .line 155
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "Dart task is null"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v3    # "exception":Ljava/lang/IllegalStateException;
    sget-object v7, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v7, v9, v2, v4}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 157
    iget-object v2, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 158
    :cond_5
    return-void

    .line 161
    .end local v3    # "exception":Ljava/lang/IllegalStateException;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    move-result-object v3

    const-string v7, "findAppBundlePath(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .local v3, "dartBundlePath":Ljava/lang/String;
    new-instance v7, Ldev/fluttercommunity/workmanager/TaskDebugInfo;

    .line 165
    nop

    .line 164
    nop

    .line 166
    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getPayload()Ljava/util/Map;

    move-result-object v10

    .line 167
    iget-wide v11, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startTime:J

    .line 168
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 169
    iget-object v14, v1, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    .line 164
    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v16}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    move-object v11, v7

    .line 172
    .local v11, "taskInfo":Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    iget v7, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->runAttemptCount:I

    if-lez v7, :cond_7

    sget-object v7, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RETRYING:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    goto :goto_1

    :cond_7
    sget-object v7, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->STARTED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    :goto_1
    move-object v12, v7

    .line 173
    .local v12, "startStatus":Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    sget-object v9, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onTaskStatusUpdate$workmanager_android_debug$default(Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;ILjava/lang/Object;)V

    .line 175
    iget-object v4, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v4, :cond_8

    .local v4, "engine":Lio/flutter/embedding/engine/FlutterEngine;
    const/4 v7, 0x0

    .line 176
    .local v7, "$i$a$-let-BackgroundWorker$startWork$1$2":I
    new-instance v9, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v10

    invoke-virtual {v10}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v10

    const-string v13, "getBinaryMessenger(...)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x2

    invoke-direct {v9, v10, v2, v13, v2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->flutterApi:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerFlutterApi;

    .line 178
    invoke-virtual {v4}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v2

    .line 179
    new-instance v9, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;

    .line 180
    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 181
    nop

    .line 182
    nop

    .line 179
    invoke-direct {v9, v10, v3, v1}, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lio/flutter/view/FlutterCallbackInformation;)V

    .line 178
    invoke-virtual {v2, v9}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V

    .line 197
    new-instance v2, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;

    .line 198
    iget-object v9, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->mainHandler:Landroid/os/Handler;

    .line 199
    nop

    .line 196
    new-instance v10, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda10;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    .line 197
    const-wide/16 v13, 0x7530

    invoke-direct {v2, v9, v13, v14, v10}, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;-><init>(Landroid/os/Handler;JLkotlin/jvm/functions/Function0;)V

    .line 196
    nop

    .line 209
    .local v2, "watchdog":Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;
    iput-object v2, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->initializationWatchdog:Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;

    .line 210
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;->arm()V

    .line 220
    nop

    .line 175
    .end local v2    # "watchdog":Ldev/fluttercommunity/workmanager/DartInitializationWatchdog;
    .end local v4    # "engine":Lio/flutter/embedding/engine/FlutterEngine;
    .end local v7    # "$i$a$-let-BackgroundWorker$startWork$1$2":I
    nop

    .line 221
    :cond_8
    return-void
.end method

.method private static final startWork$lambda$1$1$0(Ldev/fluttercommunity/workmanager/BackgroundWorker;)Lkotlin/Unit;
    .locals 7
    .param p0, "this$0"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 201
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    nop

    .line 203
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 204
    nop

    .line 202
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Dart engine did not initialize the background channel within 30000 ms"

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .local v1, "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    invoke-static/range {v1 .. v6}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v1    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .restart local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    :cond_0
    move-object v1, p0

    .line 208
    .end local p0    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    .restart local v1    # "this$0":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final stopEngine(Landroidx/work/ListenableWorker$Result;Ljava/lang/String;I)V
    .locals 16
    .param p1, "result"    # Landroidx/work/ListenableWorker$Result;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "stopReason"    # I

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startTime:J

    sub-long/2addr v2, v4

    .line 330
    .local v2, "fetchDuration":J
    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getDartTask()Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "localDartTask":Ljava/lang/String;
    const-string v14, "getApplicationContext(...)"

    const/4 v15, 0x0

    if-nez v5, :cond_1

    .line 333
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Dart task is null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 334
    .local v4, "exception":Ljava/lang/IllegalStateException;
    sget-object v6, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v15, v8}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 335
    iget-object v6, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v6, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void

    .line 340
    .end local v4    # "exception":Ljava/lang/IllegalStateException;
    :cond_1
    new-instance v4, Ldev/fluttercommunity/workmanager/TaskDebugInfo;

    .line 341
    nop

    .line 340
    nop

    .line 342
    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getPayload()Ljava/util/Map;

    move-result-object v7

    .line 343
    iget-wide v8, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startTime:J

    .line 340
    const/16 v12, 0x32

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 339
    nop

    .line 347
    .local v4, "taskInfo":Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    new-instance v6, Ldev/fluttercommunity/workmanager/TaskResult;

    .line 348
    instance-of v7, v1, Landroidx/work/ListenableWorker$Result$Success;

    .line 349
    nop

    .line 351
    nop

    .line 352
    instance-of v8, v1, Landroidx/work/ListenableWorker$Result$Failure;

    if-eqz v8, :cond_3

    if-nez p2, :cond_2

    const-string v8, "Task failed"

    goto :goto_0

    :cond_2
    move-object/from16 v8, p2

    goto :goto_0

    .line 353
    :cond_3
    move-object v8, v15

    .line 347
    :goto_0
    invoke-direct {v6, v7, v2, v3, v8}, Ldev/fluttercommunity/workmanager/TaskResult;-><init>(ZJLjava/lang/String;)V

    .line 346
    nop

    .line 358
    .local v6, "taskResult":Ldev/fluttercommunity/workmanager/TaskResult;
    nop

    .line 359
    instance-of v7, v1, Landroidx/work/ListenableWorker$Result$Success;

    if-eqz v7, :cond_4

    sget-object v7, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->COMPLETED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move/from16 v8, p3

    goto :goto_1

    .line 360
    :cond_4
    instance-of v7, v1, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz v7, :cond_5

    sget-object v7, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RESCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move/from16 v8, p3

    goto :goto_1

    .line 361
    :cond_5
    sget-object v7, Ldev/fluttercommunity/workmanager/StopReasonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/StopReasonUtils;

    move/from16 v8, p3

    invoke-virtual {v7, v8}, Ldev/fluttercommunity/workmanager/StopReasonUtils;->toTaskStatus(I)Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move-result-object v7

    .line 358
    :goto_1
    nop

    .line 357
    nop

    .line 363
    .local v7, "status":Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    sget-object v9, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v4, v7, v6}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onTaskStatusUpdate$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;)V

    .line 367
    if-eqz v1, :cond_6

    .line 368
    iget-object v9, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v9, :cond_6

    invoke-virtual {v9, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 373
    :cond_6
    iget-object v9, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->boundPlugin:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    if-eqz v9, :cond_7

    invoke-virtual {v9, v0}, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->unbindWorker$workmanager_android_debug(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    .line 374
    :cond_7
    iput-object v15, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->boundPlugin:Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    .line 379
    iget-object v9, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 380
    .local v9, "engineToDestroy":Lio/flutter/embedding/engine/FlutterEngine;
    iput-object v15, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 381
    if-eqz v9, :cond_8

    .line 382
    iget-object v10, v0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->mainHandler:Landroid/os/Handler;

    new-instance v11, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda1;

    invoke-direct {v11, v9}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda1;-><init>(Lio/flutter/embedding/engine/FlutterEngine;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    :cond_8
    return-void
.end method

.method static synthetic stopEngine$default(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/work/ListenableWorker$Result;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 323
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 325
    const/4 p2, 0x0

    .line 323
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 326
    const/4 p3, 0x0

    .line 323
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->stopEngine(Landroidx/work/ListenableWorker$Result;Ljava/lang/String;I)V

    return-void
.end method

.method private static final stopEngine$lambda$0(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 0
    .param p0, "$engineToDestroy"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 383
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->destroy()V

    .line 384
    return-void
.end method

.method private final workerStopReason()I
    .locals 2

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 396
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getStopReason()I

    move-result v0

    goto :goto_0

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0
.end method


# virtual methods
.method public final getUniqueName()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerParams:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "dev.fluttercommunity.workmanager.UNIQUE_NAME"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onDartBackgroundChannelInitialized()V
    .locals 2

    .line 413
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->mainHandler:Landroid/os/Handler;

    new-instance v1, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda6;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public onStopped()V
    .locals 4

    .line 261
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getDartTask()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "localDartTask":Ljava/lang/String;
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->workerStopReason()I

    move-result v1

    .line 272
    .local v1, "stopReason":I
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->mainHandler:Landroid/os/Handler;

    new-instance v3, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, v1}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public final reportProgress(Ljava/util/Map;)V
    .locals 14
    .param p1, "progress"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "localUniqueName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 311
    sget-object v1, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    .line 312
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v4, Ldev/fluttercommunity/workmanager/TaskDebugInfo;

    iget-wide v8, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startTime:J

    const/16 v12, 0x36

    const/4 v13, 0x0

    const-string v5, "unknown"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 314
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot report progress for a task without a unique name"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 311
    invoke-virtual {v1, v2, v4, v3}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 316
    return-void

    .line 319
    :cond_0
    invoke-static {p1}, Ldev/fluttercommunity/workmanager/InputDataUtilsKt;->encodeProgressData(Ljava/util/Map;)Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 320
    sget-object v1, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->INSTANCE:Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->onProgressReported(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->startTime:J

    .line 117
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "config":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    const/4 v2, 0x0

    .line 118
    .local v2, "$i$a$-let-BackgroundWorker$startWork$foregroundFuture$1":I
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getApplicationContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;->createForegroundInfo(Landroid/content/Context;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)Landroidx/work/ForegroundInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 117
    .end local v0    # "config":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .end local v2    # "$i$a$-let-BackgroundWorker$startWork$foregroundFuture$1":I
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 116
    :goto_0
    nop

    .line 121
    .local v0, "foregroundFuture":Lcom/google/common/util/concurrent/ListenableFuture;
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v2

    const-string v3, "flutterLoader(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .local v2, "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    invoke-virtual {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 127
    :cond_1
    nop

    .line 128
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 129
    nop

    .line 130
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    nop

    .line 127
    new-instance v5, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v2}, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;-><init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationCompleteAsync(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 223
    invoke-direct {p0, v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->combineForegroundWithResult(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method
