.class public final Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
.super Ljava/lang/Object;
.source "ApplicationExitInfoEventProcessor.java"

# interfaces
.implements Lio/sentry/BackfillingEventProcessor;
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;,
        Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;,
        Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
    }
.end annotation


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final hintEnrichers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final persistingScopeObserver:Lio/sentry/cache/PersistingScopeObserver;

.field private final sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;-><init>(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$1;)V

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->hintEnrichers:Ljava/util/List;

    .line 115
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 117
    iput-object p3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 118
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->persistingScopeObserver:Lio/sentry/cache/PersistingScopeObserver;

    .line 120
    new-instance v0, Lio/sentry/SentryStackTraceFactory;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v0, v1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 123
    .local v0, "sentryStackTraceFactory":Lio/sentry/SentryStackTraceFactory;
    new-instance v1, Lio/sentry/SentryExceptionFactory;

    invoke-direct {v1, v0}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    iput-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    .line 124
    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;Lio/sentry/SentryBaseEvent;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
    .param p1, "x1"    # Lio/sentry/SentryBaseEvent;

    .line 93
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setDefaultPlatform(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method static synthetic access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 93
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    return-object v0
.end method

.method static synthetic access$300(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/SentryExceptionFactory;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 93
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    return-object v0
.end method

.method static synthetic access$400(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getBuildOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Lio/sentry/protocol/DebugImage;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->createProguardDebugImage(Ljava/lang/String;)Lio/sentry/protocol/DebugImage;

    move-result-object v0

    return-object v0
.end method

.method private backfillOptions(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 418
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setRelease(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 419
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setEnvironment(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 420
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 421
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 422
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setSdk(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 423
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setApp(Lio/sentry/SentryBaseEvent;)V

    .line 424
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setOptionsTags(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 425
    return-void
.end method

.method private backfillScope(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 198
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setRequest(Lio/sentry/SentryBaseEvent;)V

    .line 199
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setUser(Lio/sentry/SentryBaseEvent;)V

    .line 200
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setScopeTags(Lio/sentry/SentryBaseEvent;)V

    .line 201
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setBreadcrumbs(Lio/sentry/SentryBaseEvent;)V

    .line 202
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setExtras(Lio/sentry/SentryBaseEvent;)V

    .line 203
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setContexts(Lio/sentry/SentryBaseEvent;)V

    .line 204
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setTransaction(Lio/sentry/SentryEvent;)V

    .line 205
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setFingerprints(Lio/sentry/SentryEvent;)V

    .line 206
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setLevel(Lio/sentry/SentryEvent;)V

    .line 207
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setTrace(Lio/sentry/SentryEvent;)V

    .line 208
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setReplayId(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 209
    return-void
.end method

.method private static createProguardDebugImage(Ljava/lang/String;)Lio/sentry/protocol/DebugImage;
    .locals 2
    .param p0, "proguardUuid"    # Ljava/lang/String;

    .line 1103
    new-instance v0, Lio/sentry/protocol/DebugImage;

    invoke-direct {v0}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 1104
    .local v0, "debugImage":Lio/sentry/protocol/DebugImage;
    const-string v1, "proguard"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v0, p0}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 1106
    return-object v0
.end method

.method private findEnricher(Ljava/lang/Object;)Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
    .locals 3
    .param p1, "hint"    # Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->hintEnrichers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;

    .line 128
    .local v1, "enricher":Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
    invoke-interface {v1, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;->supports(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return-object v1

    .line 131
    .end local v1    # "enricher":Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBuildOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p4, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;",
            ")TT;"
        }
    .end annotation

    .line 571
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "currentValue":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->CURRENT:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    if-eq p4, v0, :cond_2

    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED_WITH_CURRENT_FALLBACK:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->NONE:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    if-ne p4, v0, :cond_1

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 577
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 573
    :cond_2
    :goto_0
    return-object p3
.end method

.method private getDevice()Lio/sentry/protocol/Device;
    .locals 6

    .line 725
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    .line 726
    .local v0, "device":Lio/sentry/protocol/Device;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setManufacturer(Ljava/lang/String;)V

    .line 727
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setBrand(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getFamily(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setFamily(Ljava/lang/String;)V

    .line 729
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModel(Ljava/lang/String;)V

    .line 730
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModelId(Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->getArchitectures()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setArchs([Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 734
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    .line 735
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    if-eqz v1, :cond_0

    .line 737
    invoke-direct {p0, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getMemorySize(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setMemorySize(Ljava/lang/Long;)V

    .line 740
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v2}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setSimulator(Ljava/lang/Boolean;)V

    .line 742
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    invoke-static {v2, v3}, Lio/sentry/android/core/ContextUtils;->getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 743
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_1

    .line 744
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Device;->setScreenWidthPixels(Ljava/lang/Integer;)V

    .line 745
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Device;->setScreenHeightPixels(Ljava/lang/Integer;)V

    .line 746
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Device;->setScreenDensity(Ljava/lang/Float;)V

    .line 747
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Device;->setScreenDpi(Ljava/lang/Integer;)V

    .line 750
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 751
    invoke-direct {p0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Device;->setId(Ljava/lang/String;)V

    .line 754
    :cond_2
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v3

    .line 755
    .local v3, "cpuFrequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 756
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/protocol/Device;->setProcessorFrequency(Ljava/lang/Double;)V

    .line 757
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/protocol/Device;->setProcessorCount(Ljava/lang/Integer;)V

    .line 760
    :cond_3
    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 4

    .line 693
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 694
    :catchall_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting installationId."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLaunchOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p4, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;",
            ")TT;"
        }
    .end annotation

    .line 549
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "currentValue":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->CURRENT:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    if-ne p4, v0, :cond_0

    .line 550
    return-object p3

    .line 551
    :cond_0
    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->NONE:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    if-ne p4, v0, :cond_1

    .line 552
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, "persistedValue":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    sget-object v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    if-ne p4, v1, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    move-object v1, p3

    goto :goto_1

    .line 557
    :cond_3
    :goto_0
    move-object v1, v0

    .line 556
    :goto_1
    return-object v1
.end method

.method private getMemorySize(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;
    .locals 2
    .param p1, "memInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 764
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsSource(Lio/sentry/hints/Backfillable;)Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    .locals 9
    .param p1, "hint"    # Lio/sentry/hints/Backfillable;

    .line 588
    instance-of v0, p1, Lio/sentry/hints/AbnormalExit;

    if-eqz v0, :cond_0

    .line 589
    move-object v0, p1

    check-cast v0, Lio/sentry/hints/AbnormalExit;

    invoke-interface {v0}, Lio/sentry/hints/AbnormalExit;->timestamp()Ljava/lang/Long;

    move-result-object v0

    .local v0, "timestamp":Ljava/lang/Long;
    goto :goto_0

    .line 590
    .end local v0    # "timestamp":Ljava/lang/Long;
    :cond_0
    instance-of v0, p1, Lio/sentry/hints/NativeCrashExit;

    if-eqz v0, :cond_1

    .line 591
    move-object v0, p1

    check-cast v0, Lio/sentry/hints/NativeCrashExit;

    invoke-interface {v0}, Lio/sentry/hints/NativeCrashExit;->timestamp()Ljava/lang/Long;

    move-result-object v0

    .restart local v0    # "timestamp":Ljava/lang/Long;
    goto :goto_0

    .line 593
    .end local v0    # "timestamp":Ljava/lang/Long;
    :cond_1
    const/4 v0, 0x0

    .line 595
    .restart local v0    # "timestamp":Ljava/lang/Long;
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v1}, Lio/sentry/android/core/PersistingOptionsCacheGenerationObserver;->read(Lio/sentry/SentryOptions;)Ljava/lang/Long;

    move-result-object v1

    .line 596
    .local v1, "cachedLastUpdateTime":Ljava/lang/Long;
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v2, v3}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 597
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    iget-wide v5, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 599
    .local v5, "currentLastUpdateTime":J
    :goto_1
    if-eqz v0, :cond_4

    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gtz v7, :cond_4

    .line 600
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 601
    sget-object v3, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED_WITH_CURRENT_FALLBACK:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    goto :goto_2

    .line 602
    :cond_3
    sget-object v3, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->CURRENT:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 600
    :goto_2
    return-object v3

    .line 604
    :cond_4
    if-nez v1, :cond_5

    .line 605
    sget-object v3, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    return-object v3

    .line 608
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-lez v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-gtz v3, :cond_6

    .line 609
    sget-object v3, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    return-object v3

    .line 611
    :cond_6
    sget-object v3, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->NONE:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    return-object v3
.end method

.method private mergeOS(Lio/sentry/SentryBaseEvent;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 768
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 769
    .local v0, "currentOS":Lio/sentry/protocol/OperatingSystem;
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 770
    invoke-static {v1, v2}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    .line 773
    .local v1, "androidOS":Lio/sentry/protocol/OperatingSystem;
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    .line 775
    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {v0}, Lio/sentry/protocol/OperatingSystem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "osNameKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "os_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 781
    :cond_0
    const-string v2, "os_1"

    .line 783
    :goto_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .end local v2    # "osNameKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 676
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 677
    .local v0, "user":Lio/sentry/protocol/User;
    if-nez v0, :cond_0

    .line 678
    new-instance v1, Lio/sentry/protocol/User;

    invoke-direct {v1}, Lio/sentry/protocol/User;-><init>()V

    move-object v0, v1

    .line 679
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 683
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 684
    invoke-direct {p0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 686
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/DataCollectionResolver;->isUserInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    const-string v1, "{{auto}}"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    .line 689
    :cond_2
    return-void
.end method

.method private readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 406
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->persistingScopeObserver:Lio/sentry/cache/PersistingScopeObserver;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->persistingScopeObserver:Lio/sentry/cache/PersistingScopeObserver;

    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sampleReplay(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Z
    .locals 9
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 213
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v0

    .line 214
    .local v0, "currentSampleRate":Ljava/lang/Double;
    const-class v1, Ljava/lang/String;

    .line 218
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    :goto_0
    const-string v3, "replay-error-sample-rate.json"

    invoke-direct {p0, v3, v1, v2, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getLaunchOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, "replayErrorSampleRate":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 222
    return v2

    .line 227
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 228
    .local v3, "replayErrorSampleRateDouble":D
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v5

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2

    .line 229
    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 230
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "Not capturing replay for ANR %s due to not being sampled."

    .line 234
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 231
    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    return v2

    .line 240
    .end local v3    # "replayErrorSampleRateDouble":D
    :cond_2
    nop

    .line 242
    const/4 v2, 0x1

    return v2

    .line 237
    :catchall_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Error parsing replay sample rate."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    return v2
.end method

.method private setApp(Lio/sentry/SentryBaseEvent;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 428
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    .line 429
    .local v0, "app":Lio/sentry/protocol/App;
    if-nez v0, :cond_0

    .line 430
    new-instance v1, Lio/sentry/protocol/App;

    invoke-direct {v1}, Lio/sentry/protocol/App;-><init>()V

    move-object v0, v1

    .line 432
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 435
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 436
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/protocol/App;->setAppIdentifier(Ljava/lang/String;)V

    .line 440
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 441
    invoke-static {v2, v3}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/DeviceInfoUtil;->getSplitApksInfo()Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    move-result-object v2

    .line 442
    .local v2, "splitApksInfo":Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    if-eqz v2, :cond_2

    .line 443
    invoke-virtual {v2}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->isSplitApks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/App;->setSplitApks(Ljava/lang/Boolean;)V

    .line 444
    invoke-virtual {v2}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 445
    invoke-virtual {v2}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/App;->setSplitNames(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v2    # "splitApksInfo":Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    :cond_2
    goto :goto_0

    .line 448
    :catchall_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error getting split apks info."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 453
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setAppVersionAndBuild(Lio/sentry/SentryBaseEvent;)V

    .line 454
    return-void
.end method

.method private setAppVersionAndBuild(Lio/sentry/SentryBaseEvent;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 457
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "release":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 460
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v1

    .line 461
    .local v1, "app":Lio/sentry/protocol/App;
    if-nez v1, :cond_0

    .line 462
    new-instance v2, Lio/sentry/protocol/App;

    invoke-direct {v2}, Lio/sentry/protocol/App;-><init>()V

    move-object v1, v2

    .line 464
    :cond_0
    nop

    .line 465
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "versionName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "versionCode":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lio/sentry/protocol/App;->setAppVersion(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, v3}, Lio/sentry/protocol/App;->setAppBuild(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v1    # "app":Lio/sentry/protocol/App;
    .end local v2    # "versionName":Ljava/lang/String;
    .end local v3    # "versionCode":Ljava/lang/String;
    goto :goto_0

    .line 470
    :catchall_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 472
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 473
    const-string v5, "Failed to parse release from scope cache: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private setBreadcrumbs(Lio/sentry/SentryBaseEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 354
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    .line 355
    .local v0, "eventBreadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v2, Ljava/util/List;

    .line 362
    const-string v3, "breadcrumbs.json"

    invoke-direct {p0, v1, v3, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 363
    .local v1, "breadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    if-nez v1, :cond_1

    .line 364
    return-void

    .line 366
    :cond_1
    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setBreadcrumbs(Ljava/util/List;)V

    .line 367
    return-void
.end method

.method private setContexts(Lio/sentry/SentryBaseEvent;)V
    .locals 7
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 317
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "contexts.json"

    const-class v2, Lio/sentry/protocol/Contexts;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Contexts;

    .line 318
    .local v0, "persistedContexts":Lio/sentry/protocol/Contexts;
    if-nez v0, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    .line 322
    .local v1, "eventContexts":Lio/sentry/protocol/Contexts;
    new-instance v2, Lio/sentry/protocol/Contexts;

    invoke-direct {v2, v0}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 323
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 324
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "trace"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v4, Lio/sentry/SpanContext;

    if-eqz v5, :cond_1

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 329
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 332
    :cond_3
    return-void
.end method

.method private setDebugMeta(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 497
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object v0

    .line 499
    .local v0, "debugMeta":Lio/sentry/protocol/DebugMeta;
    if-nez v0, :cond_0

    .line 500
    new-instance v1, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v1}, Lio/sentry/protocol/DebugMeta;-><init>()V

    move-object v0, v1

    .line 502
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 503
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 505
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    .line 506
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    if-eqz v1, :cond_3

    .line 507
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 509
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v3

    .line 508
    const-string v4, "proguard-uuid.json"

    invoke-direct {p0, v4, v2, v3, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getBuildOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 511
    .local v2, "proguardUuid":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 512
    invoke-static {v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->createProguardDebugImage(Ljava/lang/String;)Lio/sentry/protocol/DebugImage;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_2
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 516
    .end local v2    # "proguardUuid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setDefaultPlatform(Lio/sentry/SentryBaseEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 669
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 671
    const-string v0, "java"

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setPlatform(Ljava/lang/String;)V

    .line 673
    :cond_0
    return-void
.end method

.method private setDevice(Lio/sentry/SentryBaseEvent;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 716
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-direct {p0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    .line 719
    :cond_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 520
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 521
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getDist()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dist.json"

    invoke-direct {p0, v2, v0, v1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getLaunchOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    .line 524
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 525
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "release":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 528
    const/16 v1, 0x2b

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "versionCode":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v1    # "versionCode":Ljava/lang/String;
    goto :goto_0

    .line 530
    :catchall_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 532
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 533
    const-string v5, "Failed to parse release from scope cache: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    .end local v0    # "release":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private setEnvironment(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 488
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 491
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    .line 490
    const-string v2, "environment.json"

    invoke-direct {p0, v2, v0, v1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getLaunchOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setEnvironment(Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method private setExtras(Lio/sentry/SentryBaseEvent;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 336
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/Map;

    .line 337
    const-string v2, "extras.json"

    invoke-direct {p0, v0, v2, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 338
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setExtras(Ljava/util/Map;)V

    goto :goto_1

    .line 344
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 346
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_0

    .line 350
    :cond_3
    :goto_1
    return-void
.end method

.method private setFingerprints(Lio/sentry/SentryEvent;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 302
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/List;

    .line 303
    const-string v2, "fingerprint.json"

    invoke-direct {p0, v0, v2, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 304
    .local v0, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    .line 307
    :cond_0
    return-void
.end method

.method private setLevel(Lio/sentry/SentryEvent;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 294
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "level.json"

    const-class v2, Lio/sentry/SentryLevel;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryLevel;

    .line 295
    .local v0, "level":Lio/sentry/SentryLevel;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 298
    :cond_0
    return-void
.end method

.method private setOptionsTags(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 627
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 632
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getTags()Ljava/util/Map;

    move-result-object v1

    .line 629
    const-string v2, "tags.json"

    invoke-direct {p0, v2, v0, v1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getLaunchOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 634
    .local v0, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 635
    return-void

    .line 637
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 638
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 640
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 641
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 642
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 646
    :cond_3
    :goto_1
    return-void
.end method

.method private setRelease(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 480
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 482
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release.json"

    invoke-direct {p0, v2, v0, v1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getLaunchOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRelease(Ljava/lang/String;)V

    .line 484
    :cond_0
    return-void
.end method

.method private setReplayId(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 16
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v2, Ljava/lang/String;

    const-string v3, "replay.json"

    invoke-direct {v0, v1, v3, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "persistedReplayId":Ljava/lang/String;
    iget-object v2, v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "cacheDirPath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replay_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v4, "replayFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 254
    invoke-direct/range {p0 .. p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->sampleReplay(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    return-void

    .line 259
    :cond_1
    const/4 v1, 0x0

    .line 260
    const-wide/high16 v7, -0x8000000000000000L

    .line 261
    .local v7, "lastModified":J
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 262
    .local v5, "dirs":[Ljava/io/File;
    if-eqz v5, :cond_3

    .line 263
    array-length v9, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v5, v10

    .line 264
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 265
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v12, v12, v7

    if-lez v12, :cond_2

    .line 266
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gtz v12, :cond_2

    .line 267
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 268
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .end local v11    # "dir":Ljava/io/File;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 275
    .end local v5    # "dirs":[Ljava/io/File;
    .end local v7    # "lastModified":J
    :cond_3
    if-nez v1, :cond_4

    .line 276
    return-void

    .line 280
    :cond_4
    iget-object v5, v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v5, v1, v3}, Lio/sentry/cache/PersistingScopeObserver;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    const-string v5, "replay_id"

    invoke-virtual {v3, v5, v1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method private setRequest(Lio/sentry/SentryBaseEvent;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 396
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "request.json"

    const-class v2, Lio/sentry/protocol/Request;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Request;

    .line 398
    .local v0, "request":Lio/sentry/protocol/Request;
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRequest(Lio/sentry/protocol/Request;)V

    .line 400
    .end local v0    # "request":Lio/sentry/protocol/Request;
    :cond_0
    return-void
.end method

.method private setScopeTags(Lio/sentry/SentryBaseEvent;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 371
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/Map;

    .line 373
    const-string v2, "tags.json"

    invoke-direct {p0, v0, v2, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 374
    .local v0, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 381
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 382
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 386
    :cond_3
    :goto_1
    return-void
.end method

.method private setSdk(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 616
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 617
    const-class v0, Lio/sentry/protocol/SdkVersion;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 619
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v1

    .line 618
    const-string v2, "sdk-version.json"

    invoke-direct {p0, v2, v0, v1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getBuildOption(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SdkVersion;

    .line 620
    .local v0, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    .line 622
    .end local v0    # "sdkVersion":Lio/sentry/protocol/SdkVersion;
    :cond_0
    return-void
.end method

.method private setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 702
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 703
    invoke-static {v0, v1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/DeviceInfoUtil;->getSideLoadedInfo()Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    .line 704
    .local v0, "sideLoadedInfo":Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->asTags()Ljava/util/Map;

    move-result-object v1

    .line 706
    .local v1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 707
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 712
    .end local v0    # "sideLoadedInfo":Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    .end local v1    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 710
    :catchall_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting side loaded info."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private setStaticValues(Lio/sentry/SentryEvent;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 664
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 665
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V

    .line 666
    return-void
.end method

.method private setTrace(Lio/sentry/SentryEvent;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 285
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "trace.json"

    const-class v2, Lio/sentry/SpanContext;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanContext;

    .line 286
    .local v0, "spanContext":Lio/sentry/SpanContext;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 291
    :cond_0
    return-void
.end method

.method private setTransaction(Lio/sentry/SentryEvent;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 310
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "transaction.json"

    const-class v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, "transaction":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 312
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method private setUser(Lio/sentry/SentryBaseEvent;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 389
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "user.json"

    const-class v2, Lio/sentry/protocol/User;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->readFromDisk(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/User;

    .line 391
    .local v0, "user":Lio/sentry/protocol/User;
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 393
    .end local v0    # "user":Lio/sentry/protocol/User;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 659
    const-wide/16 v0, 0x2ee0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 8
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 146
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "unwrappedHint":Ljava/lang/Object;
    instance-of v1, v0, Lio/sentry/hints/Backfillable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 149
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 150
    const-string v4, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-object p1

    .line 155
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/sentry/hints/Backfillable;

    .line 156
    .local v1, "backfillable":Lio/sentry/hints/Backfillable;
    invoke-direct {p0, v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->findEnricher(Ljava/lang/Object;)Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;

    move-result-object v3

    .line 158
    .local v3, "hintEnricher":Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
    if-eqz v3, :cond_1

    .line 159
    invoke-interface {v3, p1, v1, v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;->applyPreEnrichment(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Ljava/lang/Object;)V

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->mergeOS(Lio/sentry/SentryBaseEvent;)V

    .line 165
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setDevice(Lio/sentry/SentryBaseEvent;)V

    .line 167
    invoke-direct {p0, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->getOptionsSource(Lio/sentry/hints/Backfillable;)Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    move-result-object v4

    .line 169
    .local v4, "optionsSource":Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    invoke-interface {v1}, Lio/sentry/hints/Backfillable;->shouldEnrich()Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setRelease(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 171
    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setEnvironment(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 172
    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 173
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setAppVersionAndBuild(Lio/sentry/SentryBaseEvent;)V

    .line 174
    iget-object v5, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 175
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    const-string v7, "The event is Backfillable, but should not be enriched, skipping."

    invoke-interface {v5, v6, v7, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    return-object p1

    .line 182
    :cond_2
    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->backfillScope(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 184
    invoke-direct {p0, p1, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->backfillOptions(Lio/sentry/SentryEvent;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 186
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->setStaticValues(Lio/sentry/SentryEvent;)V

    .line 188
    if-eqz v3, :cond_3

    .line 189
    invoke-interface {v3, p1, v1, v0, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;->applyPostEnrichment(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 192
    :cond_3
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 141
    return-object p1
.end method
