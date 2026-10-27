.class public final Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;
.super Ljava/lang/Object;
.source "CellularNetworkTechnologyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;
    }
.end annotation


# static fields
.field public static final GENERATION_2G:Ljava/lang/String; = "2g"

.field public static final GENERATION_3G:Ljava/lang/String; = "3g"

.field public static final GENERATION_4G:Ljava/lang/String; = "4g"

.field public static final GENERATION_5G:Ljava/lang/String; = "5g"


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private volatile displayInfoCallback:Ljava/lang/Object;

.field private volatile displayInfoTechnology:Ljava/lang/String;

.field private final logger:Lio/sentry/ILogger;

.field private final registrationLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->registrationLock:Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    .line 60
    iput-object p3, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->displayInfoTechnology:Ljava/lang/String;

    return-object p1
.end method

.method private getDataNetworkTechnology()Ljava/lang/String;
    .locals 6

    .line 147
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 149
    return-object v2

    .line 154
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->context:Landroid/content/Context;

    .line 155
    const-string v1, "android.permission.READ_BASIC_PHONE_STATE"

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    return-object v2

    .line 158
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 159
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_2

    .line 160
    return-object v2

    .line 163
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    invoke-static {v1}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->networkTypeToGeneration(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v3, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Could not retrieve the cellular network technology."

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-object v2
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 5

    .line 173
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "service":Ljava/lang/Object;
    instance-of v1, v0, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TelephonyManager is not available."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 178
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyManager;

    return-object v1
.end method

.method static networkTypeToGeneration(I)Ljava/lang/String;
    .locals 1
    .param p0, "networkType"    # I

    .line 206
    packed-switch p0, :pswitch_data_0

    .line 231
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 229
    :pswitch_1
    const-string v0, "5g"

    return-object v0

    .line 227
    :pswitch_2
    const-string v0, "4g"

    return-object v0

    .line 224
    :pswitch_3
    const-string v0, "3g"

    return-object v0

    .line 213
    :pswitch_4
    const-string v0, "2g"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static toGeneration(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "displayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 188
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->networkTypeToGeneration(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_0
    const-string v0, "5g"

    return-object v0

    .line 197
    :pswitch_1
    const-string v0, "4g"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCellularNetworkTechnology()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->displayInfoTechnology:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->getDataNetworkTechnology()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public register()V
    .locals 7

    .line 80
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 81
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->registrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->displayInfoCallback:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 90
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 94
    :cond_2
    :try_start_1
    new-instance v2, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;

    invoke-direct {v2, p0}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;-><init>(Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;)V

    .line 100
    .local v2, "callback":Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;
    new-instance v3, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 101
    iput-object v2, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->displayInfoCallback:Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Started listening for cellular network technology changes."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v2    # "callback":Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;
    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_2
    iget-object v3, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Could not listen for cellular network technology changes."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregister()V
    .locals 7

    .line 122
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->registrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->displayInfoCallback:Ljava/lang/Object;

    .line 124
    .local v1, "callback":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 125
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 128
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 133
    :cond_1
    :try_start_1
    move-object v3, v1

    check-cast v3, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 134
    const/4 v3, 0x0

    iput-object v3, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->displayInfoCallback:Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Stopped listening for cellular network technology changes."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    goto :goto_1

    .line 136
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "Could not stop listening for cellular network technology changes."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v1    # "callback":Ljava/lang/Object;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_1
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
