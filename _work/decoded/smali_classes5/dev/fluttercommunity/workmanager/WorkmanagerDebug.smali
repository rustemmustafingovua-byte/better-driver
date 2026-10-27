.class public abstract Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
.super Ljava/lang/Object;
.source "WorkmanagerDebugHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\"\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/WorkmanagerDebug;",
        "",
        "<init>",
        "()V",
        "onTaskStatusUpdate",
        "",
        "context",
        "Landroid/content/Context;",
        "taskInfo",
        "Ldev/fluttercommunity/workmanager/TaskDebugInfo;",
        "status",
        "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
        "result",
        "Ldev/fluttercommunity/workmanager/TaskResult;",
        "onExceptionEncountered",
        "exception",
        "",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

.field private static current:Ldev/fluttercommunity/workmanager/WorkmanagerDebug;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    .line 34
    new-instance v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion$current$1;

    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion$current$1;-><init>()V

    check-cast v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    sput-object v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->current:Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrent$cp()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
    .locals 1

    .line 31
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->current:Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    return-object v0
.end method

.method public static final synthetic access$setCurrent$cp(Ldev/fluttercommunity/workmanager/WorkmanagerDebug;)V
    .locals 0
    .param p0, "<set-?>"    # Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    .line 31
    sput-object p0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->current:Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    return-void
.end method

.method public static final getCurrent()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->getCurrent()Ldev/fluttercommunity/workmanager/WorkmanagerDebug;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static final setCurrent(Ldev/fluttercommunity/workmanager/WorkmanagerDebug;)V
    .locals 1
    .param p0, "handler"    # Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    invoke-virtual {v0, p0}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->setCurrent(Ldev/fluttercommunity/workmanager/WorkmanagerDebug;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onExceptionEncountered(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskInfo"    # Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    .param p3, "exception"    # Ljava/lang/Throwable;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onTaskStatusUpdate(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;)V
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

    .line 79
    return-void
.end method
