.class public final Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u0000 B2\u00020\u0001:\u0001BB\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u001a\u0008\u0002\u0010\u0005\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010/J\u0014\u00100\u001a\u00020\u00152\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u00102\u001a\u000203H\u0096\u0080\u0004J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\u001b\u00106\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006H\u00c6\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u000b\u00108\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u0010,J\u009e\u0001\u0010?\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u001a\u0008\u0002\u0010\u0005\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00c6\u0001\u00a2\u0006\u0002\u0010@J\n\u0010A\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R#\u0010\u0005\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\n\n\u0002\u0010-\u001a\u0004\u0008+\u0010,\u00a8\u0006C"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
        "",
        "uniqueName",
        "",
        "taskName",
        "inputData",
        "",
        "initialDelaySeconds",
        "",
        "constraints",
        "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
        "backoffPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
        "tag",
        "existingWorkPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;",
        "outOfQuotaPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;",
        "foregroundServiceConfig",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "expedited",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)V",
        "getUniqueName",
        "()Ljava/lang/String;",
        "getTaskName",
        "getInputData",
        "()Ljava/util/Map;",
        "getInitialDelaySeconds",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getConstraints",
        "()Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
        "getBackoffPolicy",
        "()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
        "getTag",
        "getExistingWorkPolicy",
        "()Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;",
        "getOutOfQuotaPolicy",
        "()Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;",
        "getForegroundServiceConfig",
        "()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "getExpedited",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "toList",
        "",
        "equals",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
        "toString",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;


# instance fields
.field private final backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

.field private final constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

.field private final existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

.field private final expedited:Ljava/lang/Boolean;

.field private final foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

.field private final initialDelaySeconds:Ljava/lang/Long;

.field private final inputData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

.field private final tag:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;

.field private final uniqueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "inputData"    # Ljava/util/Map;
    .param p4, "initialDelaySeconds"    # Ljava/lang/Long;
    .param p5, "constraints"    # Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    .param p6, "backoffPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .param p7, "tag"    # Ljava/lang/String;
    .param p8, "existingWorkPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;
    .param p9, "outOfQuotaPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;
    .param p10, "foregroundServiceConfig"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .param p11, "expedited"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
            "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
            "Ljava/lang/String;",
            "Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;",
            "Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    .line 708
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    .line 709
    iput-object p3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    .line 710
    iput-object p4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    .line 711
    iput-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    .line 712
    iput-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 713
    iput-object p7, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    .line 714
    iput-object p8, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    .line 715
    iput-object p9, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    .line 717
    iput-object p10, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 727
    iput-object p11, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    .line 706
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 706
    and-int/lit8 p13, p12, 0x4

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    .line 709
    move-object p3, v0

    .line 706
    :cond_0
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_1

    .line 710
    move-object p4, v0

    .line 706
    :cond_1
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_2

    .line 711
    move-object p5, v0

    .line 706
    :cond_2
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_3

    .line 712
    move-object p6, v0

    .line 706
    :cond_3
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_4

    .line 713
    move-object p7, v0

    .line 706
    :cond_4
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_5

    .line 714
    move-object p8, v0

    .line 706
    :cond_5
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_6

    .line 715
    move-object p9, v0

    .line 706
    :cond_6
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_7

    .line 717
    move-object p10, v0

    .line 706
    :cond_7
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_8

    .line 727
    move-object p12, v0

    goto :goto_0

    .line 706
    :cond_8
    move-object p12, p11

    :goto_0
    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p12}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)V

    .line 728
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;ILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-object p7, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-object p8, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-object p10, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-object p11, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    :cond_a
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    return-object v0
.end method

.method public final component11()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
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

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    return-object v0
.end method

.method public final component6()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    return-object v0
.end method

.method public final component9()Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
            "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
            "Ljava/lang/String;",
            "Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;",
            "Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
            "Ljava/lang/Boolean;",
            ")",
            "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 762
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 765
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 766
    return v1

    .line 768
    :cond_1
    move-object v2, p1

    check-cast v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    .line 769
    .local v2, "other":Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 763
    .end local v2    # "other":Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
    :cond_3
    :goto_0
    return v0
.end method

.method public final getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .locals 1

    .line 712
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    return-object v0
.end method

.method public final getConstraints()Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    .locals 1

    .line 711
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    return-object v0
.end method

.method public final getExistingWorkPolicy()Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;
    .locals 1

    .line 714
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    return-object v0
.end method

.method public final getExpedited()Ljava/lang/Boolean;
    .locals 1

    .line 727
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getForegroundServiceConfig()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 1

    .line 717
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    return-object v0
.end method

.method public final getInitialDelaySeconds()Ljava/lang/Long;
    .locals 1

    .line 710
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getInputData()Ljava/util/Map;
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

    .line 709
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    return-object v0
.end method

.method public final getOutOfQuotaPolicy()Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;
    .locals 1

    .line 715
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueName()Ljava/lang/String;
    .locals 1

    .line 707
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 773
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 774
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 775
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 776
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 777
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 778
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 779
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 780
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 781
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 782
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 783
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 784
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 785
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public final toList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    .line 749
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    .line 748
    nop

    .line 750
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    .line 748
    nop

    .line 751
    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    .line 748
    nop

    .line 752
    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    .line 748
    nop

    .line 753
    iget-object v5, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 748
    nop

    .line 754
    iget-object v6, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    .line 748
    nop

    .line 755
    iget-object v7, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    .line 748
    nop

    .line 756
    iget-object v8, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    .line 748
    nop

    .line 757
    iget-object v9, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 748
    nop

    .line 758
    iget-object v10, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 748
    nop

    .line 747
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneOffTaskRequest(uniqueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taskName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inputData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->inputData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initialDelaySeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", constraints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", backoffPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", existingWorkPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outOfQuotaPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->outOfQuotaPolicy:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", foregroundServiceConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expedited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->expedited:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
