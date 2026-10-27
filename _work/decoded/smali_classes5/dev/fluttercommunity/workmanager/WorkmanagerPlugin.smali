.class public final Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;
.super Ljava/lang/Object;
.source "WorkmanagerPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkmanagerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkmanagerPlugin.kt\ndev/fluttercommunity/workmanager/WorkmanagerPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,287:1\n1786#2,3:288\n*S KotlinDebug\n*F\n+ 1 WorkmanagerPlugin.kt\ndev/fluttercommunity/workmanager/WorkmanagerPlugin\n*L\n218#1:288,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u0014J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000cH\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000cH\u0016J*\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001f2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010 \u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020!2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010\"\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020#2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010$\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020%2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010&\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\'2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010+\u001a\u00020\u00102\u0006\u0010,\u001a\u00020*2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J\"\u0010-\u001a\u00020\u00102\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u0010.\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J\"\u00100\u001a\u00020\u00102\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J,\u00101\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*2\u001a\u0010\u001b\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001020\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J<\u00103\u001a\u00020\u00102\u0018\u00104\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010*\u0012\u0006\u0012\u0004\u0018\u000106\u0018\u0001052\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J\"\u00107\u001a\u00020\u00102\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016J*\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020/2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u001d\u0012\u0004\u0012\u00020\u00100\u001cH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;",
        "<init>",
        "()V",
        "workManagerWrapper",
        "Ldev/fluttercommunity/workmanager/WorkManagerWrapper;",
        "preferenceManager",
        "Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;",
        "currentDispatcherHandle",
        "",
        "pluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "boundWorker",
        "Ldev/fluttercommunity/workmanager/BackgroundWorker;",
        "bindWorker",
        "",
        "worker",
        "bindWorker$workmanager_android_debug",
        "unbindWorker",
        "unbindWorker$workmanager_android_debug",
        "onAttachedToEngine",
        "binding",
        "onDetachedFromEngine",
        "initialize",
        "request",
        "Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "registerOneOffTask",
        "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
        "registerPeriodicTask",
        "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;",
        "registerProcessingTask",
        "Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;",
        "registerHealthResearchTask",
        "Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;",
        "registerContinuedProcessingTask",
        "Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;",
        "cancelByUniqueName",
        "uniqueName",
        "",
        "cancelByTag",
        "tag",
        "cancelAll",
        "isScheduledByUniqueName",
        "",
        "printScheduledTasks",
        "getWorkInfoByUniqueName",
        "Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;",
        "reportProgress",
        "progress",
        "",
        "",
        "notifyBackgroundChannelInitialized",
        "setProgressListener",
        "enabled",
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


# instance fields
.field private boundWorker:Ldev/fluttercommunity/workmanager/BackgroundWorker;

.field private currentDispatcherHandle:J

.field private pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private preferenceManager:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;

.field private workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->currentDispatcherHandle:J

    .line 21
    return-void
.end method

.method public static final synthetic access$setCurrentDispatcherHandle$p(Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;J)V
    .locals 0
    .param p0, "$this"    # Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;
    .param p1, "<set-?>"    # J

    .line 21
    iput-wide p1, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->currentDispatcherHandle:J

    return-void
.end method


# virtual methods
.method public final bindWorker$workmanager_android_debug(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V
    .locals 1
    .param p1, "worker"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;

    const-string v0, "worker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->boundWorker:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 47
    return-void
.end method

.method public cancelAll(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    nop

    .line 203
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->cancelAll()Landroidx/work/Operation;

    .line 204
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelByTag(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    nop

    .line 194
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->cancelByTag(Ljava/lang/String;)Landroidx/work/Operation;

    .line 195
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelByUniqueName(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    nop

    .line 182
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->cancelByUniqueName(Ljava/lang/String;)Landroidx/work/Operation;

    .line 183
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getWorkInfoByUniqueName(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    nop

    .line 235
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->getWorkInfoByUniqueName(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    .local v0, "workInfos":Ljava/util/List;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/WorkInfo;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toWorkInfoData(Landroidx/work/WorkInfo;Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    .end local v0    # "workInfos":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public initialize(Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    :try_start_0
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->getCallbackHandle()J

    move-result-wide v0

    .line 90
    .local v0, "handle":J
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->preferenceManager:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;

    if-nez v2, :cond_0

    const-string v2, "preferenceManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2, v0, v1}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->saveCallbackDispatcherHandleKey(J)V

    .line 93
    iput-wide v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->currentDispatcherHandle:J

    .line 97
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    if-eqz v2, :cond_1

    .local v2, "it":Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$a$-let-WorkmanagerPlugin$initialize$1":I
    sget-object v4, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->INSTANCE:Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v5

    const-string v6, "getBinaryMessenger(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->setAppMessenger(ZLio/flutter/plugin/common/BinaryMessenger;)V

    .line 99
    nop

    .line 97
    .end local v2    # "it":Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    .end local v3    # "$i$a$-let-WorkmanagerPlugin$initialize$1":I
    :cond_1
    nop

    .line 101
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "handle":J
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isScheduledByUniqueName(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    nop

    .line 215
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->getWorkInfoByUniqueName(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    .local v0, "workInfos":Ljava/util/List;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 218
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 288
    .local v3, "$i$f$all":I
    instance-of v4, v1, Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    goto :goto_2

    .line 289
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/work/WorkInfo;

    .local v7, "it":Landroidx/work/WorkInfo;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$a$-all-WorkmanagerPlugin$isScheduledByUniqueName$scheduled$1":I
    invoke-virtual {v7}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v9

    sget-object v10, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v9, v10, :cond_3

    invoke-virtual {v7}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v9

    sget-object v10, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v9, v10, :cond_2

    goto :goto_0

    :cond_2
    move v7, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v5

    .line 289
    .end local v7    # "it":Landroidx/work/WorkInfo;
    .end local v8    # "$i$a$-all-WorkmanagerPlugin$isScheduledByUniqueName$scheduled$1":I
    :goto_1
    if-nez v7, :cond_1

    move v1, v2

    goto :goto_2

    .line 290
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_4
    move v1, v5

    .line 218
    .end local v1    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$all":I
    :goto_2
    if-eqz v1, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    nop

    .line 216
    :goto_3
    nop

    .line 219
    .local v2, "scheduled":Z
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 220
    .end local v0    # "workInfos":Ljava/util/List;
    .end local v2    # "scheduled":Z
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public notifyBackgroundChannelInitialized(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->boundWorker:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 265
    .local v0, "worker":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->onDartBackgroundChannelInitialized()V

    .line 272
    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 9
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 63
    nop

    .line 64
    new-instance v0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;

    .line 65
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v3, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin$onAttachedToEngine$1;

    invoke-direct {v3, p0}, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin$onAttachedToEngine$1;-><init>(Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;)V

    check-cast v3, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;

    .line 64
    invoke-direct {v0, v1, v3}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;-><init>(Landroid/content/Context;Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$DispatcherHandleListener;)V

    .line 63
    iput-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->preferenceManager:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;

    .line 72
    new-instance v0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    .line 73
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;->Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v4

    const-string v0, "getBinaryMessenger(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;->setUp$default(Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;Lio/flutter/plugin/common/BinaryMessenger;Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 7
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;->Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v0, "getBinaryMessenger(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;->setUp$default(Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;Lio/flutter/plugin/common/BinaryMessenger;Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;Ljava/lang/String;ILjava/lang/Object;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    .line 79
    iput-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 80
    return-void
.end method

.method public printScheduledTasks(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "printScheduledTasks is not supported on Android"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public registerContinuedProcessingTask(Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    nop

    .line 169
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 171
    nop

    .line 170
    const-string v1, "Continued processing tasks are not supported on Android"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 169
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 168
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public registerHealthResearchTask(Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    nop

    .line 155
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 157
    nop

    .line 156
    const-string v1, "Health research tasks are not supported on Android"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 155
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 154
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public registerOneOffTask(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->currentDispatcherHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "You have not properly initialized the Flutter WorkManager Package. You should ensure you have called the \'initialize\' function first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void

    .line 116
    :cond_0
    nop

    .line 117
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->enqueueOneOffTask(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;)V

    .line 118
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerPeriodicTask(Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->currentDispatcherHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "You have not properly initialized the Flutter WorkManager Package. You should ensure you have called the \'initialize\' function first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void

    .line 133
    :cond_0
    nop

    .line 134
    :try_start_0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->workManagerWrapper:Ldev/fluttercommunity/workmanager/WorkManagerWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->enqueuePeriodicTask(Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;)V

    .line 135
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerProcessingTask(Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Processing tasks are not supported on Android"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public reportProgress(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "progress"    # Ljava/util/Map;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->boundWorker:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 251
    .local v0, "worker":Ldev/fluttercommunity/workmanager/BackgroundWorker;
    if-nez v0, :cond_0

    .line 256
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->reportProgress(Ljava/util/Map;)V

    .line 260
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public setProgressListener(ZLkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    if-eqz v0, :cond_0

    .local v0, "it":Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$a$-let-WorkmanagerPlugin$setProgressListener$1":I
    sget-object v2, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->INSTANCE:Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    const-string v4, "getBinaryMessenger(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->setAppMessenger(ZLio/flutter/plugin/common/BinaryMessenger;)V

    .line 283
    nop

    .line 281
    .end local v0    # "it":Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    .end local v1    # "$i$a$-let-WorkmanagerPlugin$setProgressListener$1":I
    nop

    .line 284
    :cond_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public final unbindWorker$workmanager_android_debug(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V
    .locals 1
    .param p1, "worker"    # Ldev/fluttercommunity/workmanager/BackgroundWorker;

    const-string v0, "worker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->boundWorker:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    if-ne v0, p1, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;->boundWorker:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 59
    :cond_0
    return-void
.end method
