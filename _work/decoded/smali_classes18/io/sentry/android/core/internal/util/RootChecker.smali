.class public final Lio/sentry/android/core/internal/util/RootChecker;
.super Ljava/lang/Object;
.source "RootChecker.java"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;

.field private final rootFiles:[Ljava/lang/String;

.field private final rootPackages:[Ljava/lang/String;

.field private final runtime:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/util/RootChecker;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "logger"    # Lio/sentry/ILogger;

    .line 68
    const-string v10, "/su/bin"

    const-string v11, "/system/xbin/daemonsu"

    const-string v0, "/sbin/su"

    const-string v1, "/data/local/xbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/bin/su"

    const-string v5, "/system/app/Superuser.apk"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v4, "eu.chainfire.supersu"

    const-string v5, "com.noshufou.android.su"

    const-string v0, "com.devadvance.rootcloak"

    const-string v1, "com.devadvance.rootcloakplus"

    const-string v2, "com.koushikdutta.superuser"

    const-string v3, "com.thirdparty.superuser"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v17

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    .line 68
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v12 .. v18}, Lio/sentry/android/core/internal/util/RootChecker;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runtime;)V

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runtime;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "rootFiles"    # [Ljava/lang/String;
    .param p5, "rootPackages"    # [Ljava/lang/String;
    .param p6, "runtime"    # Ljava/lang/Runtime;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v0, "The application context is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->context:Landroid/content/Context;

    .line 105
    nop

    .line 106
    const-string v0, "The BuildInfoProvider is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 107
    const-string v0, "The Logger is required."

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ILogger;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    .line 108
    const-string v0, "The root Files are required."

    invoke-static {p4, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootFiles:[Ljava/lang/String;

    .line 109
    const-string v0, "The root packages are required."

    invoke-static {p5, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootPackages:[Ljava/lang/String;

    .line 110
    const-string v0, "The Runtime is required."

    invoke-static {p6, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runtime;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->runtime:Ljava/lang/Runtime;

    .line 111
    return-void
.end method

.method private checkRootA()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getBuildTags()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkRootB()Z
    .locals 10

    .line 141
    iget-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootFiles:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 143
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 144
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    goto :goto_1

    .line 146
    :catch_0
    move-exception v5

    .line 147
    .local v5, "e":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "Error when trying to check if root file %s exists."

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v7, v5, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return v2
.end method

.method private checkRootC()Z
    .locals 8

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "p":Ljava/lang/Process;
    const-string v1, "/system/xbin/which"

    const-string v2, "su"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "su":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/sentry/android/core/internal/util/RootChecker;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v0, v3

    .line 166
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    sget-object v6, Lio/sentry/android/core/internal/util/RootChecker;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 168
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 169
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 168
    :cond_1
    return v4

    .line 166
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "su":[Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 172
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "p":Ljava/lang/Process;
    .restart local v1    # "su":[Ljava/lang/String;
    :catchall_2
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_5
    iget-object v4, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "Error when trying to check if SU exists."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 175
    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 176
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    .line 170
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    iget-object v4, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "SU isn\'t found on this Device."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 175
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 176
    goto :goto_2

    .line 179
    :cond_2
    :goto_3
    return v2

    .line 175
    :catchall_3
    move-exception v2

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 178
    :cond_3
    throw v2
.end method

.method private checkRootPackages(Lio/sentry/ILogger;)Z
    .locals 9
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 190
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v0, p1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 191
    .local v0, "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    iget-object v1, p0, Lio/sentry/android/core/internal/util/RootChecker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 192
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 193
    iget-object v3, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootPackages:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 195
    .local v6, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v7

    const/16 v8, 0x21

    if-lt v7, v8, :cond_0

    .line 196
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    goto :goto_1

    .line 198
    :cond_0
    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 201
    :catch_0
    move-exception v7

    .line 193
    .end local v6    # "pkg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return v2
.end method


# virtual methods
.method public isDeviceRooted()Z
    .locals 1

    .line 119
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/RootChecker;->checkRootA()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/sentry/android/core/internal/util/RootChecker;->checkRootB()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/sentry/android/core/internal/util/RootChecker;->checkRootC()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/RootChecker;->checkRootPackages(Lio/sentry/ILogger;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
