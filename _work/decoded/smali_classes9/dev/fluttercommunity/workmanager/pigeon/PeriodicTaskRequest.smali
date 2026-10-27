.class public final Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u0000 ?2\u00020\u0001:\u0001?B\u008f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u001a\u0008\u0002\u0010\u0008\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010+J\u0014\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010/\u001a\u000200H\u0096\u0080\u0004J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0006H\u00c6\u0003J\u0010\u00104\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u001b\u00105\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\tH\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u000b\u00107\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u009c\u0001\u0010<\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u001a\u0008\u0002\u0010\u0008\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0002\u0010=J\n\u0010>\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001cR#\u0010\u0008\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008 \u0010\u001cR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u00a8\u0006@"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;",
        "",
        "uniqueName",
        "",
        "taskName",
        "frequencySeconds",
        "",
        "flexIntervalSeconds",
        "inputData",
        "",
        "initialDelaySeconds",
        "constraints",
        "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
        "backoffPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
        "tag",
        "existingWorkPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
        "foregroundServiceConfig",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V",
        "getUniqueName",
        "()Ljava/lang/String;",
        "getTaskName",
        "getFrequencySeconds",
        "()J",
        "getFlexIntervalSeconds",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getInputData",
        "()Ljava/util/Map;",
        "getInitialDelaySeconds",
        "getConstraints",
        "()Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
        "getBackoffPolicy",
        "()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
        "getTag",
        "getExistingWorkPolicy",
        "()Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
        "getForegroundServiceConfig",
        "()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "toList",
        "",
        "equals",
        "",
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
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;


# instance fields
.field private final backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

.field private final constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

.field private final existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

.field private final flexIntervalSeconds:Ljava/lang/Long;

.field private final foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

.field private final frequencySeconds:J

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

.field private final tag:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;

.field private final uniqueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V
    .locals 1
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "frequencySeconds"    # J
    .param p5, "flexIntervalSeconds"    # Ljava/lang/Long;
    .param p6, "inputData"    # Ljava/util/Map;
    .param p7, "initialDelaySeconds"    # Ljava/lang/Long;
    .param p8, "constraints"    # Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    .param p9, "backoffPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .param p10, "tag"    # Ljava/lang/String;
    .param p11, "existingWorkPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    .param p12, "foregroundServiceConfig"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
            "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
            "Ljava/lang/String;",
            "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    .line 792
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    .line 793
    iput-wide p3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    .line 794
    iput-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    .line 795
    iput-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    .line 796
    iput-object p7, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    .line 797
    iput-object p8, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    .line 798
    iput-object p9, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 799
    iput-object p10, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    .line 800
    iput-object p11, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 802
    iput-object p12, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 790
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 790
    and-int/lit8 p14, p13, 0x8

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    .line 794
    move-object p5, v0

    .line 790
    :cond_0
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1

    .line 795
    move-object p6, v0

    .line 790
    :cond_1
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_2

    .line 796
    move-object p7, v0

    .line 790
    :cond_2
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_3

    .line 797
    move-object p8, v0

    .line 790
    :cond_3
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_4

    .line 798
    move-object p9, v0

    .line 790
    :cond_4
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_5

    .line 799
    move-object p10, v0

    .line 790
    :cond_5
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_6

    .line 800
    move-object p11, v0

    .line 790
    :cond_6
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_7

    .line 802
    move-object p13, v0

    goto :goto_0

    .line 790
    :cond_7
    move-object p13, p12

    :goto_0
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-wide p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p13}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V

    .line 803
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;ILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-wide p3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p7, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p8, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p9, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p10, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p11, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    :cond_9
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_a

    iget-object p12, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    :cond_a
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    return-object v0
.end method

.method public final component11()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ljava/util/Map;
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

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    return-object v0
.end method

.method public final component8()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
            "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
            "Ljava/lang/String;",
            "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
            ")",
            "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskName"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    move-object v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 837
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

    .line 840
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 841
    return v1

    .line 843
    :cond_1
    move-object v2, p1

    check-cast v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    .line 844
    .local v2, "other":Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-wide v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 838
    .end local v2    # "other":Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
    :cond_3
    :goto_0
    return v0
.end method

.method public final getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .locals 1

    .line 798
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    return-object v0
.end method

.method public final getConstraints()Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    .locals 1

    .line 797
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    return-object v0
.end method

.method public final getExistingWorkPolicy()Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    .locals 1

    .line 800
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    return-object v0
.end method

.method public final getFlexIntervalSeconds()Ljava/lang/Long;
    .locals 1

    .line 794
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getForegroundServiceConfig()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 1

    .line 802
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    return-object v0
.end method

.method public final getFrequencySeconds()J
    .locals 2

    .line 793
    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    return-wide v0
.end method

.method public final getInitialDelaySeconds()Ljava/lang/Long;
    .locals 1

    .line 796
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

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

    .line 795
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 799
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1

    .line 792
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueName()Ljava/lang/String;
    .locals 1

    .line 791
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 848
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 849
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 850
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 851
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-wide v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 852
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 853
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 854
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 855
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 856
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 857
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 858
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 859
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 860
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

    .line 823
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    .line 824
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    .line 823
    nop

    .line 825
    iget-wide v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 823
    nop

    .line 826
    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    .line 823
    nop

    .line 827
    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    .line 823
    nop

    .line 828
    iget-object v5, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    .line 823
    nop

    .line 829
    iget-object v6, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    .line 823
    nop

    .line 830
    iget-object v7, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 823
    nop

    .line 831
    iget-object v8, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    .line 823
    nop

    .line 832
    iget-object v9, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 823
    nop

    .line 833
    iget-object v10, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 823
    nop

    .line 822
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodicTaskRequest(uniqueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taskName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frequencySeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->frequencySeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flexIntervalSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->flexIntervalSeconds:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inputData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->inputData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initialDelaySeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->initialDelaySeconds:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", constraints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->constraints:Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", backoffPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", existingWorkPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->existingWorkPolicy:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", foregroundServiceConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->foregroundServiceConfig:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
