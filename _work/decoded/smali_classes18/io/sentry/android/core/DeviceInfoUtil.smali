.class public final Lio/sentry/android/core/DeviceInfoUtil;
.super Ljava/lang/Object;
.source "DeviceInfoUtil.java"


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final isEmulator:Ljava/lang/Boolean;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final os:Lio/sentry/protocol/OperatingSystem;

.field private final sideLoadedInfo:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

.field private final splitApksInfo:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

.field private final totalMem:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 56
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 59
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    .line 60
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->retrieveOperatingSystemInformation()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->os:Lio/sentry/protocol/OperatingSystem;

    .line 61
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->isEmulator:Ljava/lang/Boolean;

    .line 62
    nop

    .line 63
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p1, v0, v1}, Lio/sentry/android/core/ContextUtils;->retrieveSideLoadedInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->sideLoadedInfo:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    .line 64
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p1, v0}, Lio/sentry/android/core/ContextUtils;->retrieveSplitApksInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->splitApksInfo:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    .line 65
    nop

    .line 66
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 67
    .local v0, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    if-eqz v0, :cond_0

    .line 68
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    .line 72
    :goto_0
    return-void
.end method

.method private getBatteryIntent()Landroid/content/Intent;
    .locals 4

    .line 283
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/sentry/android/core/ContextUtils;->registerReceiver(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Float;
    .locals 6
    .param p0, "batteryIntent"    # Landroid/content/Intent;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 296
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, "level":I
    const-string v3, "scale"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 299
    .local v3, "scale":I
    if-eq v1, v2, :cond_1

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    .line 305
    .local v2, "percentMultiplier":F
    int-to-float v4, v1

    int-to-float v5, v3

    div-float/2addr v4, v5

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 300
    .end local v2    # "percentMultiplier":F
    :cond_1
    :goto_0
    return-object v0

    .line 306
    .end local v1    # "level":I
    .end local v3    # "scale":I
    :catchall_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error getting device battery level."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    return-object v0
.end method

.method private getBatteryTemperature(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 4
    .param p1, "batteryIntent"    # Landroid/content/Intent;

    .line 333
    :try_start_0
    const-string v0, "temperature"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 334
    .local v0, "temperature":I
    if-eq v0, v1, :cond_0

    .line 335
    int-to-float v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 339
    .end local v0    # "temperature":I
    :cond_0
    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting battery temperature."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBootTime()Ljava/util/Date;
    .locals 5

    .line 274
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error getting the device\'s boot time."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 4

    .line 488
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 489
    :catchall_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting installationId."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getExternalStorageDep(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p1, "internalStorage"    # Ljava/io/File;

    .line 419
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 421
    .local v0, "externalFilesDirs":[Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 424
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 425
    .local v3, "internalStoragePath":Ljava/lang/String;
    :goto_0
    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 427
    .local v5, "file":Ljava/io/File;
    if-nez v5, :cond_1

    .line 428
    goto :goto_2

    .line 432
    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 436
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    nop

    .line 425
    .end local v5    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    .restart local v5    # "file":Ljava/io/File;
    :cond_3
    return-object v5

    .line 433
    :cond_4
    :goto_3
    return-object v5

    .line 441
    .end local v3    # "internalStoragePath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_5
    goto :goto_4

    .line 442
    :cond_6
    iget-object v3, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Not possible to read getExternalFilesDirs"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :goto_4
    return-object v1
.end method

.method private getExternalStorageStat(Ljava/io/File;)Landroid/os/StatFs;
    .locals 5
    .param p1, "internalStorage"    # Ljava/io/File;

    .line 407
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getExternalStorageDep(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 408
    .local v0, "path":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 409
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 413
    .end local v0    # "path":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Not possible to read external files directory"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 77
    invoke-virtual {p1, p0}, Lio/sentry/android/core/SentryAndroidOptions;->getOrCreateDeviceInfoUtil(Landroid/content/Context;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v0

    return-object v0
.end method

.method private getOrientation()Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 5

    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, "deviceOrientation":Lio/sentry/protocol/Device$DeviceOrientation;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 353
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lio/sentry/android/core/internal/util/DeviceOrientations;->getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v1

    move-object v0, v1

    .line 354
    if-nez v0, :cond_0

    .line 355
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 356
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 357
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    const/4 v1, 0x0

    return-object v1

    .line 364
    :cond_0
    goto :goto_0

    .line 362
    :catchall_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error getting device orientation."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private getTimeZone()Ljava/util/TimeZone;
    .locals 3

    .line 256
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 258
    .local v0, "locales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 260
    .local v1, "locale":Ljava/util/Locale;
    const-string v2, "tz"

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    return-object v2

    .line 265
    .end local v0    # "locales":Landroid/os/LocaleList;
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private getTotalExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 6
    .param p1, "stat"    # Landroid/os/StatFs;

    .line 456
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 457
    .local v0, "blockSize":J
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 458
    .local v2, "totalBlocks":J
    mul-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 459
    .end local v0    # "blockSize":J
    .end local v2    # "totalBlocks":J
    :catchall_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting total external storage amount."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTotalInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 6
    .param p1, "stat"    # Landroid/os/StatFs;

    .line 376
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 377
    .local v0, "blockSize":J
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 378
    .local v2, "totalBlocks":J
    mul-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 379
    .end local v0    # "blockSize":J
    .end local v2    # "totalBlocks":J
    :catchall_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting total internal storage amount."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    const/4 v1, 0x0

    return-object v1
.end method

.method private getUnusedExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 6
    .param p1, "stat"    # Landroid/os/StatFs;

    .line 474
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 475
    .local v0, "blockSize":J
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 476
    .local v2, "availableBlocks":J
    mul-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 477
    .end local v0    # "blockSize":J
    .end local v2    # "availableBlocks":J
    :catchall_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 479
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 480
    const-string v3, "Error getting unused external storage amount."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    const/4 v1, 0x0

    return-object v1
.end method

.method private getUnusedInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 6
    .param p1, "stat"    # Landroid/os/StatFs;

    .line 393
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 394
    .local v0, "blockSize":J
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 395
    .local v2, "availableBlocks":J
    mul-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 396
    .end local v0    # "blockSize":J
    .end local v2    # "availableBlocks":J
    :catchall_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 398
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 399
    const-string v3, "Error getting unused internal storage amount."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isCharging(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "batteryIntent"    # Landroid/content/Intent;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 321
    :try_start_0
    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, "plugged":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 324
    .end local v0    # "plugged":I
    :catchall_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting device charging state."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    const/4 v1, 0x0

    return-object v1
.end method

.method private retrieveOperatingSystemInformation()Lio/sentry/protocol/OperatingSystem;
    .locals 6

    .line 153
    new-instance v0, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {v0}, Lio/sentry/protocol/OperatingSystem;-><init>()V

    .line 154
    .local v0, "os":Lio/sentry/protocol/OperatingSystem;
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setName(Ljava/lang/String;)V

    .line 155
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setVersion(Ljava/lang/String;)V

    .line 156
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setBuild(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getKernelVersion(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "kernelVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setKernelVersion(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v2, Lio/sentry/android/core/internal/util/RootChecker;

    iget-object v3, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v4, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    iget-object v5, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 165
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lio/sentry/android/core/internal/util/RootChecker;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V

    invoke-virtual {v2}, Lio/sentry/android/core/internal/util/RootChecker;->isDeviceRooted()Z

    move-result v2

    .line 166
    .local v2, "rooted":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/OperatingSystem;->setRooted(Ljava/lang/Boolean;)V

    .line 168
    .end local v2    # "rooted":Z
    :cond_1
    return-object v0
.end method

.method private setDeviceIO(Lio/sentry/protocol/Device;ZZ)V
    .locals 7
    .param p1, "device"    # Lio/sentry/protocol/Device;
    .param p2, "includeDynamicData"    # Z
    .param p3, "includeExternalStorage"    # Z

    .line 185
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 186
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryLevel(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setBatteryLevel(Ljava/lang/Float;)V

    .line 188
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1}, Lio/sentry/android/core/DeviceInfoUtil;->isCharging(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setCharging(Ljava/lang/Boolean;)V

    .line 189
    invoke-direct {p0, v0}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryTemperature(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setBatteryTemperature(Ljava/lang/Float;)V

    .line 194
    :cond_0
    sget-object v1, Lio/sentry/android/core/DeviceInfoUtil$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    const/4 v1, 0x0

    .local v1, "connected":Ljava/lang/Boolean;
    goto :goto_0

    .line 199
    .end local v1    # "connected":Ljava/lang/Boolean;
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 200
    .restart local v1    # "connected":Ljava/lang/Boolean;
    goto :goto_0

    .line 196
    .end local v1    # "connected":Ljava/lang/Boolean;
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 197
    .restart local v1    # "connected":Ljava/lang/Boolean;
    nop

    .line 204
    :goto_0
    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setOnline(Ljava/lang/Boolean;)V

    .line 206
    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 207
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    invoke-static {v2, v3}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    .line 208
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 210
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/protocol/Device;->setFreeMemory(Ljava/lang/Long;)V

    .line 211
    iget-boolean v3, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/protocol/Device;->setLowMemory(Ljava/lang/Boolean;)V

    .line 217
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 218
    .local v3, "dataDir":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 219
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 220
    .local v4, "internalStorageStat":Landroid/os/StatFs;
    invoke-direct {p0, v4}, Lio/sentry/android/core/DeviceInfoUtil;->getTotalInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lio/sentry/protocol/Device;->setStorageSize(Ljava/lang/Long;)V

    .line 221
    invoke-direct {p0, v4}, Lio/sentry/android/core/DeviceInfoUtil;->getUnusedInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lio/sentry/protocol/Device;->setFreeStorage(Ljava/lang/Long;)V

    .line 224
    .end local v4    # "internalStorageStat":Landroid/os/StatFs;
    :cond_2
    if-eqz p3, :cond_3

    .line 225
    iget-object v4, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 226
    .local v4, "internalStorageFile":Ljava/io/File;
    invoke-direct {p0, v4}, Lio/sentry/android/core/DeviceInfoUtil;->getExternalStorageStat(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v5

    .line 227
    .local v5, "externalStorageStat":Landroid/os/StatFs;
    if-eqz v5, :cond_3

    .line 228
    invoke-direct {p0, v5}, Lio/sentry/android/core/DeviceInfoUtil;->getTotalExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/sentry/protocol/Device;->setExternalStorageSize(Ljava/lang/Long;)V

    .line 229
    invoke-direct {p0, v5}, Lio/sentry/android/core/DeviceInfoUtil;->getUnusedExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/sentry/protocol/Device;->setExternalFreeStorage(Ljava/lang/Long;)V

    .line 233
    .end local v4    # "internalStorageFile":Ljava/io/File;
    .end local v5    # "externalStorageStat":Landroid/os/StatFs;
    :cond_3
    invoke-virtual {p1}, Lio/sentry/protocol/Device;->getConnectionType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 234
    iget-object v4, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 235
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v4

    .line 236
    .local v4, "connectionStatusProvider":Lio/sentry/IConnectionStatusProvider;
    instance-of v5, v4, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    if-eqz v5, :cond_4

    .line 238
    move-object v5, v4

    check-cast v5, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 239
    invoke-virtual {v5}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnection()Lio/sentry/android/core/internal/util/NetworkConnection;

    move-result-object v5

    .line 241
    .local v5, "connection":Lio/sentry/android/core/internal/util/NetworkConnection;
    iget-object v6, v5, Lio/sentry/android/core/internal/util/NetworkConnection;->type:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lio/sentry/protocol/Device;->setConnectionType(Ljava/lang/String;)V

    .line 243
    iget-object v6, v5, Lio/sentry/android/core/internal/util/NetworkConnection;->effectiveType:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lio/sentry/protocol/Device;->setConnectionEffectiveType(Ljava/lang/String;)V

    .line 244
    .end local v5    # "connection":Lio/sentry/android/core/internal/util/NetworkConnection;
    goto :goto_1

    .line 245
    :cond_4
    invoke-interface {v4}, Lio/sentry/IConnectionStatusProvider;->getConnectionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lio/sentry/protocol/Device;->setConnectionType(Ljava/lang/String;)V

    .line 248
    .end local v4    # "connectionStatusProvider":Lio/sentry/IConnectionStatusProvider;
    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;
    .locals 6
    .param p1, "collectDeviceIO"    # Z
    .param p2, "collectDynamicData"    # Z

    .line 87
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    .line 88
    .local v0, "device":Lio/sentry/protocol/Device;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setManufacturer(Ljava/lang/String;)V

    .line 89
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setBrand(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getFamily(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setFamily(Ljava/lang/String;)V

    .line 91
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModel(Ljava/lang/String;)V

    .line 92
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModelId(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->getArchitectures()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setArchs([Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v1

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setChipset(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getOrientation()Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setOrientation(Lio/sentry/protocol/Device$DeviceOrientation;)V

    .line 99
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->isEmulator:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->isEmulator:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setSimulator(Ljava/lang/Boolean;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 104
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 105
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_2

    .line 106
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenWidthPixels(Ljava/lang/Integer;)V

    .line 107
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenHeightPixels(Ljava/lang/Integer;)V

    .line 108
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenDensity(Ljava/lang/Float;)V

    .line 109
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenDpi(Ljava/lang/Integer;)V

    .line 112
    :cond_2
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getBootTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setBootTime(Ljava/util/Date;)V

    .line 113
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setTimezone(Ljava/util/TimeZone;)V

    .line 115
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 116
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setId(Ljava/lang/String;)V

    .line 119
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 120
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getLocale()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 121
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Device;->setLocale(Ljava/lang/String;)V

    .line 124
    :cond_4
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v3

    .line 125
    .local v3, "cpuFrequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 126
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/protocol/Device;->setProcessorFrequency(Ljava/lang/Double;)V

    .line 127
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/protocol/Device;->setProcessorCount(Ljava/lang/Integer;)V

    .line 130
    :cond_5
    iget-object v4, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    invoke-virtual {v0, v4}, Lio/sentry/protocol/Device;->setMemorySize(Ljava/lang/Long;)V

    .line 133
    if-eqz p1, :cond_6

    iget-object v4, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 134
    iget-object v4, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectExternalStorageContext()Z

    move-result v4

    invoke-direct {p0, v0, p2, v4}, Lio/sentry/android/core/DeviceInfoUtil;->setDeviceIO(Lio/sentry/protocol/Device;ZZ)V

    .line 137
    :cond_6
    return-object v0
.end method

.method public getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->os:Lio/sentry/protocol/OperatingSystem;

    return-object v0
.end method

.method public getSideLoadedInfo()Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->sideLoadedInfo:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    return-object v0
.end method

.method public getSplitApksInfo()Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    .locals 1

    .line 178
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->splitApksInfo:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    return-object v0
.end method

.method public getTotalMemory()Ljava/lang/Long;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    return-object v0
.end method
