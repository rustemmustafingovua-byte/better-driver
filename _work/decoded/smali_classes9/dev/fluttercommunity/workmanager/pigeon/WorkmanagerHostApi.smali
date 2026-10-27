.class public interface abstract Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0005\u0008f\u0018\u0000 $2\u00020\u0001:\u0001$J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\n2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000c2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000e2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00102\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00122\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00152\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J\"\u0010\u0018\u001a\u00020\u00032\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J\"\u0010\u001b\u001a\u00020\u00032\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J,\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u001a\u0010\u0006\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J<\u0010\u001e\u001a\u00020\u00032\u0018\u0010\u001f\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010 2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u001a2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J\"\u0010#\u001a\u00020\u00032\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&\u00a8\u0006%\u00c0\u0006\u0003"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;",
        "",
        "initialize",
        "",
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
        "setProgressListener",
        "enabled",
        "notifyBackgroundChannelInitialized",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;->$$INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi;->Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerHostApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract cancelAll(Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract cancelByTag(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract cancelByUniqueName(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract getWorkInfoByUniqueName(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract initialize(Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract isScheduledByUniqueName(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract notifyBackgroundChannelInitialized(Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract printScheduledTasks(Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract registerContinuedProcessingTask(Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract registerHealthResearchTask(Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract registerOneOffTask(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract registerPeriodicTask(Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract registerProcessingTask(Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract reportProgress(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract setProgressListener(ZLkotlin/jvm/functions/Function1;)V
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
.end method
