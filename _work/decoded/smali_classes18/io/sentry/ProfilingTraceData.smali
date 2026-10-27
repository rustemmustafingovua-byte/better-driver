.class public final Lio/sentry/ProfilingTraceData;
.super Ljava/lang/Object;
.source "ProfilingTraceData.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfilingTraceData$JsonKeys;,
        Lio/sentry/ProfilingTraceData$Deserializer;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final TRUNCATION_REASON_BACKGROUNDED:Ljava/lang/String; = "backgrounded"

.field public static final TRUNCATION_REASON_NORMAL:Ljava/lang/String; = "normal"

.field public static final TRUNCATION_REASON_TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field private androidApiLevel:I

.field private buildId:Ljava/lang/String;

.field private cpuArchitecture:Ljava/lang/String;

.field private deviceCpuFrequencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private deviceIsEmulator:Z

.field private deviceLocale:Ljava/lang/String;

.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceOsBuildNumber:Ljava/lang/String;

.field private deviceOsName:Ljava/lang/String;

.field private deviceOsVersion:Ljava/lang/String;

.field private devicePhysicalMemoryBytes:Ljava/lang/String;

.field private durationNs:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private final measurementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private sampledProfile:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private final traceFile:Ljava/io/File;

.field private traceId:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private transactionName:Ljava/lang/String;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation
.end field

.field private truncationReason:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/io/File;

    const-string v1, "dummy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Lio/sentry/ITransaction;)V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/ProfilingTraceData$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/ProfilingTraceData$1;

    .line 20
    invoke-direct {p0}, Lio/sentry/ProfilingTraceData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/sentry/ITransaction;)V
    .locals 21
    .param p1, "traceFile"    # Ljava/io/File;
    .param p2, "transaction"    # Lio/sentry/ITransaction;

    .line 80
    nop

    .line 82
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lio/sentry/ProfilingTraceData$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lio/sentry/ProfilingTraceData$$ExternalSyntheticLambda0;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 80
    const-string v7, "0"

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "normal"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v20}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "traceFile"    # Ljava/io/File;
    .param p2, "profileStartTimestamp"    # Ljava/util/Date;
    .param p4, "transactionName"    # Ljava/lang/String;
    .param p5, "transactionId"    # Ljava/lang/String;
    .param p6, "traceId"    # Ljava/lang/String;
    .param p7, "durationNanos"    # Ljava/lang/String;
    .param p8, "sdkInt"    # I
    .param p9, "cpuArchitecture"    # Ljava/lang/String;
    .param p11, "deviceManufacturer"    # Ljava/lang/String;
    .param p12, "deviceModel"    # Ljava/lang/String;
    .param p13, "deviceOsVersion"    # Ljava/lang/String;
    .param p14, "deviceIsEmulator"    # Ljava/lang/Boolean;
    .param p15, "devicePhysicalMemoryBytes"    # Ljava/lang/String;
    .param p16, "buildId"    # Ljava/lang/String;
    .param p17, "release"    # Ljava/lang/String;
    .param p18, "environment"    # Ljava/lang/String;
    .param p19, "truncationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p3, "transactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    .local p10, "deviceCpuFrequenciesReader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local p20, "measurementsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceFile:Ljava/io/File;

    .line 126
    iput-object p2, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    .line 127
    move-object v0, p9

    iput-object v0, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    .line 128
    move-object/from16 v1, p10

    iput-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;

    .line 131
    iput p8, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    .line 133
    const-string v2, ""

    if-eqz p11, :cond_0

    move-object/from16 v3, p11

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    .line 134
    if-eqz p12, :cond_1

    move-object/from16 v3, p12

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    .line 135
    if-eqz p13, :cond_2

    move-object/from16 v3, p13

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    .line 136
    if-eqz p14, :cond_3

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    .line 137
    nop

    .line 138
    if-eqz p15, :cond_4

    move-object/from16 v3, p15

    goto :goto_4

    :cond_4
    const-string v3, "0"

    :goto_4
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    .line 140
    const-string v3, "android"

    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    .line 141
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    .line 142
    if-eqz p16, :cond_5

    move-object/from16 v3, p16

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    .line 146
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "unknown"

    goto :goto_6

    :cond_6
    move-object v3, p4

    :goto_6
    iput-object v3, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    .line 147
    iput-object p7, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    .line 150
    iput-object v2, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    .line 151
    if-eqz p17, :cond_7

    move-object/from16 v2, p17

    :cond_7
    iput-object v2, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    .line 155
    iput-object p6, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    .line 156
    invoke-static {}, Lio/sentry/SentryUUID;->generateSentryId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    .line 157
    if-eqz p18, :cond_8

    move-object/from16 v4, p18

    goto :goto_7

    :cond_8
    const-string v4, "production"

    :goto_7
    iput-object v4, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    .line 158
    move-object/from16 v4, p19

    iput-object v4, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lio/sentry/ProfilingTraceData;->isTruncationReasonValid()Z

    move-result v5

    if-nez v5, :cond_9

    .line 160
    const-string v5, "normal"

    iput-object v5, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 162
    :cond_9
    move-object/from16 v5, p20

    iput-object v5, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    .line 163
    return-void
.end method

.method static synthetic access$1002(Lio/sentry/ProfilingTraceData;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/util/List;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/ProfilingTraceData;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return p1
.end method

.method static synthetic access$1102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lio/sentry/ProfilingTraceData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;

    .line 20
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lio/sentry/ProfilingTraceData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;

    .line 20
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2502(Lio/sentry/ProfilingTraceData;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/util/Date;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/ProfilingTraceData;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return p1
.end method

.method static synthetic access$902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfilingTraceData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-object p1
.end method

.method private isTruncationReasonValid()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 167
    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 168
    const-string v1, "backgrounded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 166
    :goto_1
    return v0
.end method

.method static synthetic lambda$new$0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAndroidApiLevel()I
    .locals 1

    .line 178
    iget v0, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return v0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuArchitecture()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCpuFrequencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsBuildNumber()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePhysicalMemoryBytes()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationNs()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurementsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSampledProfile()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 270
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 1

    .line 174
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->traceFile:Ljava/io/File;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-object v0
.end method

.method public getTruncationReason()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
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

    .line 457
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isDeviceIsEmulator()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return v0
.end method

.method public readDeviceCpuFrequencies()V
    .locals 1

    .line 367
    :try_start_0
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    .line 371
    :goto_0
    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 408
    const-string v0, "android_api_level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 409
    const-string v0, "device_locale"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 410
    const-string v0, "device_manufacturer"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 411
    const-string v0, "device_model"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 412
    const-string v0, "device_os_build_number"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 413
    const-string v0, "device_os_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 414
    const-string v0, "device_os_version"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 415
    const-string v0, "device_is_emulator"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    .line 416
    const-string v0, "architecture"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 418
    const-string v0, "device_cpu_frequencies"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 419
    const-string v0, "device_physical_memory_bytes"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 420
    const-string v0, "platform"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 421
    const-string v0, "build_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 422
    const-string v0, "transaction_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 423
    const-string v0, "duration_ns"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 424
    const-string v0, "version_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 425
    const-string v0, "version_code"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 426
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const-string v0, "transactions"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 429
    :cond_0
    const-string v0, "transaction_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 430
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 431
    const-string v0, "profile_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 432
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 433
    const-string v0, "truncation_reason"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 434
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 435
    const-string v0, "sampled_profile"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 439
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->getIndent()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "prevIndent":Ljava/lang/String;
    const-string v1, ""

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->setIndent(Ljava/lang/String;)V

    .line 441
    const-string v1, "measurements"

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 442
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->setIndent(Ljava/lang/String;)V

    .line 443
    const-string v1, "timestamp"

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 444
    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 447
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 448
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 449
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 451
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 452
    return-void
.end method

.method public setAndroidApiLevel(I)V
    .locals 0
    .param p1, "androidApiLevel"    # I

    .line 278
    iput p1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    .line 279
    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 0
    .param p1, "buildId"    # Ljava/lang/String;

    .line 330
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setCpuArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuArchitecture"    # Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setDeviceCpuFrequencies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p1, "deviceCpuFrequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    .line 311
    return-void
.end method

.method public setDeviceIsEmulator(Z)V
    .locals 0
    .param p1, "deviceIsEmulator"    # Z

    .line 306
    iput-boolean p1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    .line 307
    return-void
.end method

.method public setDeviceLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceLocale"    # Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceManufacturer"    # Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setDeviceOsBuildNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceOsBuildNumber"    # Ljava/lang/String;

    .line 298
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceOsVersion"    # Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setDevicePhysicalMemoryBytes(Ljava/lang/String;)V
    .locals 0
    .param p1, "devicePhysicalMemoryBytes"    # Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setDurationNs(Ljava/lang/String;)V
    .locals 0
    .param p1, "durationNs"    # Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .line 358
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileId"    # Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setSampledProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "sampledProfile"    # Ljava/lang/String;

    .line 362
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 318
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    .line 319
    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "traceId"    # Ljava/lang/String;

    .line 350
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setTransactionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionName"    # Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p1, "transactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    .line 327
    return-void
.end method

.method public setTruncationReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "truncationReason"    # Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 462
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    .line 463
    return-void
.end method
