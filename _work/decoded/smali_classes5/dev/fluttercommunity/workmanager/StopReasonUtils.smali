.class public final Ldev/fluttercommunity/workmanager/StopReasonUtils;
.super Ljava/lang/Object;
.source "StopReasonUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/StopReasonUtils;",
        "",
        "<init>",
        "()V",
        "STOP_REASON_UNKNOWN",
        "",
        "STOP_REASON_CANCELLED_BY_APP",
        "STOP_REASON_SYSTEM_IGNORED_CANCELLED_BY_APP",
        "toTaskStatus",
        "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
        "stopReason",
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
.field public static final INSTANCE:Ldev/fluttercommunity/workmanager/StopReasonUtils;

.field public static final STOP_REASON_CANCELLED_BY_APP:I = 0x3

.field public static final STOP_REASON_SYSTEM_IGNORED_CANCELLED_BY_APP:I = 0x4

.field public static final STOP_REASON_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldev/fluttercommunity/workmanager/StopReasonUtils;

    invoke-direct {v0}, Ldev/fluttercommunity/workmanager/StopReasonUtils;-><init>()V

    sput-object v0, Ldev/fluttercommunity/workmanager/StopReasonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/StopReasonUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toTaskStatus(I)Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    .locals 1
    .param p1, "stopReason"    # I

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 28
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->FAILED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    goto :goto_0

    .line 27
    :pswitch_0
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->CANCELLED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 29
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
