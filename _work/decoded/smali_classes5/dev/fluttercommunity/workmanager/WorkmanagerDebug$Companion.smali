.class public final Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;
.super Ljava/lang/Object;
.source "WorkmanagerDebugHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0008\u0010\n\u001a\u00020\u0005H\u0007J1\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\'\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018R\u0018\u0010\u0004\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u00a8\u0006\u0019"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;",
        "",
        "<init>",
        "()V",
        "current",
        "Ldev/fluttercommunity/workmanager/WorkmanagerDebug;",
        "getCurrent$annotations",
        "setCurrent",
        "",
        "handler",
        "getCurrent",
        "onTaskStatusUpdate",
        "context",
        "Landroid/content/Context;",
        "taskInfo",
        "Ldev/fluttercommunity/workmanager/TaskDebugInfo;",
        "status",
        "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
        "result",
        "Ldev/fluttercommunity/workmanager/TaskResult;",
        "onTaskStatusUpdate$workmanager_android_debug",
        "onExceptionEncountered",
        "exception",
        "",
        "onExceptionEncountered$workmanager_android_debug",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getCurrent$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic onTaskStatusUpdate$workmanager_android_debug$default(Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;ILjava/lang/Object;)V
    .locals 0

    .line 51
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 55
    const/4 p4, 0x0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onTaskStatusUpdate$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 48
    invoke-static {}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->access$getCurrent$cp()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    move-result-object v0

    return-object v0
.end method

.method public final onExceptionEncountered$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskInfo"    # Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    .param p3, "exception"    # Ljava/lang/Throwable;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->access$getCurrent$cp()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->onExceptionEncountered(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public final onTaskStatusUpdate$workmanager_android_debug(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskInfo"    # Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    .param p3, "status"    # Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    .param p4, "result"    # Ldev/fluttercommunity/workmanager/TaskResult;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->access$getCurrent$cp()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->onTaskStatusUpdate(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;)V

    .line 58
    return-void
.end method

.method public final setCurrent(Ldev/fluttercommunity/workmanager/WorkmanagerDebug;)V
    .locals 1
    .param p1, "handler"    # Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->access$setCurrent$cp(Ldev/fluttercommunity/workmanager/WorkmanagerDebug;)V

    .line 42
    return-void
.end method
