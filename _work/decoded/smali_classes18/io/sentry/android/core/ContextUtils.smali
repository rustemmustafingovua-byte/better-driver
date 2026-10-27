.class public final Lio/sentry/android/core/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ContextUtils$SideLoadedInfo;,
        Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    }
.end annotation


# static fields
.field private static final applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 112
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 122
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 147
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 161
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appIsLibraryForComposePreview(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    :try_start_0
    const-string v0, "activity"

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 299
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 301
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 302
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "androidx.compose.ui.tooling.PreviewActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 304
    const/4 v2, 0x1

    return v2

    .line 306
    .end local v3    # "task":Landroid/app/ActivityManager$AppTask;
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 309
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :cond_1
    goto :goto_1

    .line 307
    :catchall_0
    move-exception v0

    .line 311
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 537
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 538
    return-object v0

    .line 540
    :cond_0
    return-object p0
.end method

.method static getApplicationInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 226
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 227
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 229
    :cond_0
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 394
    sget-object v0, Lio/sentry/android/core/ContextUtils;->applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static getArchitectures()[Ljava/lang/String;
    .locals 1

    .line 428
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0
.end method

.method static getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 405
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 406
    :catchall_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting DisplayMetrics."

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    const/4 v1, 0x0

    return-object v1
.end method

.method static getFamily(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 3
    .param p0, "logger"    # Lio/sentry/ILogger;

    .line 420
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting device family."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    const/4 v1, 0x0

    return-object v1
.end method

.method static getKernelVersion(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 6
    .param p0, "logger"    # Lio/sentry/ILogger;

    .line 324
    const-string v0, "Exception while attempting to read kernel information"

    .line 325
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "defaultVersion":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    return-object v1

    .line 331
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    return-object v4

    .line 331
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "defaultVersion":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "logger":Lio/sentry/ILogger;
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 333
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "errorMsg":Ljava/lang/String;
    .restart local v1    # "defaultVersion":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "logger":Lio/sentry/ILogger;
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Exception while attempting to read kernel information"

    invoke-interface {p0, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    .end local v3    # "e":Ljava/io/IOException;
    return-object v1
.end method

.method static getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 439
    const-string v0, "Error getting MemoryInfo."

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "activity"

    .line 440
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 441
    .local v2, "actManager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 442
    .local v3, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 444
    return-object v3

    .line 446
    :cond_0
    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1, v4, v0, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    return-object v1

    .line 448
    .end local v2    # "actManager":Landroid/app/ActivityManager;
    .end local v3    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :catchall_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p1, v3, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    return-object v1
.end method

.method static getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 202
    :try_start_0
    invoke-virtual {p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 203
    nop

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 203
    return-object v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting package info."

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    const/4 v1, 0x0

    return-object v1
.end method

.method static getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 181
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 182
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0

    .line 184
    :cond_0
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 243
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-static {p0}, Lio/sentry/android/core/ContextUtils;->getVersionCodeDep(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVersionCodeDep(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 262
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getVersionName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 257
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static isForegroundImportance()Z
    .locals 4

    .line 274
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 276
    .local v1, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 277
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 278
    .end local v1    # "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_0
    move-exception v1

    .line 281
    return v0
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    nop

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$static$1(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$static$2(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 127
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 128
    .local v1, "stringId":I
    if-nez v1, :cond_1

    .line 129
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 136
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "stringId":I
    :catchall_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$static$3(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 151
    nop

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-wide/16 v2, 0x80

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$static$4(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 165
    nop

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static registerReceiver(Landroid/content/Context;Lio/sentry/SentryOptions;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 461
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    .line 462
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 461
    invoke-static {p0, v0, p2, p3, p4}, Lio/sentry/android/core/ContextUtils;->registerReceiver(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static registerReceiver(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 473
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 478
    const/4 v5, 0x0

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "context":Landroid/content/Context;
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    .local v4, "filter":Landroid/content/IntentFilter;
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 481
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "handler":Landroid/os/Handler;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local p3    # "filter":Landroid/content/IntentFilter;
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "handler":Landroid/os/Handler;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "handler":Landroid/os/Handler;
    const/4 p0, 0x0

    invoke-virtual {v2, v3, v4, p0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static resetInstance()V
    .locals 1

    .line 545
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 546
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 547
    sget-object v0, Lio/sentry/android/core/ContextUtils;->applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 548
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 549
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 550
    return-void
.end method

.method static retrieveSideLoadedInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 348
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 350
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 351
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    .end local v0    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "installerPackageName":Ljava/lang/String;
    new-instance v4, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v4, v5, v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;-><init>(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 360
    .end local v0    # "installerPackageName":Ljava/lang/String;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 363
    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 360
    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 362
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "packageName":Ljava/lang/String;
    :goto_1
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "%s package isn\'t installed."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 365
    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static retrieveSplitApksInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "splitNames":[Ljava/lang/String;
    invoke-static {p0, p1}, Lio/sentry/android/core/ContextUtils;->getApplicationInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 373
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, p1}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 375
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    .line 376
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "isSplitApks":Z
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 379
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.vending.splits.required"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 382
    :cond_0
    new-instance v4, Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    invoke-direct {v4, v3, v0}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;-><init>(Z[Ljava/lang/String;)V

    return-object v4

    .line 385
    .end local v3    # "isSplitApks":Z
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method static setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/DeviceInfoUtil;Lio/sentry/protocol/App;)V
    .locals 8
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p2, "deviceInfoUtil"    # Lio/sentry/android/core/DeviceInfoUtil;
    .param p3, "app"    # Lio/sentry/protocol/App;

    .line 490
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lio/sentry/protocol/App;->setAppIdentifier(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lio/sentry/protocol/App;->setAppVersion(Ljava/lang/String;)V

    .line 492
    invoke-static {p0, p1}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/sentry/protocol/App;->setAppBuild(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v0, "permissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 496
    .local v1, "requestedPermissions":[Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 498
    .local v2, "requestedPermissionsFlags":[I
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 502
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 503
    aget-object v4, v1, v3

    .line 504
    .local v4, "permission":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 506
    aget v5, v2, v3

    const/4 v7, 0x2

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 509
    .local v6, "granted":Z
    :goto_1
    if-eqz v6, :cond_1

    const-string v5, "granted"

    goto :goto_2

    :cond_1
    const-string v5, "not_granted"

    :goto_2
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v4    # "permission":Ljava/lang/String;
    .end local v6    # "granted":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p3, v0}, Lio/sentry/protocol/App;->setPermissions(Ljava/util/Map;)V

    .line 514
    if-eqz p2, :cond_4

    .line 516
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/DeviceInfoUtil;->getSplitApksInfo()Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    move-result-object v3

    .line 517
    .local v3, "splitApksInfo":Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    if-eqz v3, :cond_3

    .line 518
    invoke-virtual {v3}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->isSplitApks()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v4}, Lio/sentry/protocol/App;->setSplitApks(Ljava/lang/Boolean;)V

    .line 519
    invoke-virtual {v3}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 520
    invoke-virtual {v3}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Lio/sentry/protocol/App;->setSplitNames(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v3    # "splitApksInfo":Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    :cond_3
    goto :goto_3

    .line 523
    :catchall_0
    move-exception v3

    .line 526
    :cond_4
    :goto_3
    return-void
.end method
