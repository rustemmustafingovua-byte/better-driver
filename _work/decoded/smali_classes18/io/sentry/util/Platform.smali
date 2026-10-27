.class public final Lio/sentry/util/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static isAndroid:Z

.field static isJavaNinePlus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "The Android Project"

    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lio/sentry/util/Platform;->isAndroid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v0, Lio/sentry/util/Platform;->isAndroid:Z

    .line 22
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-boolean v1, Lio/sentry/util/Platform;->isAndroid:Z

    if-eqz v1, :cond_0

    .line 24
    sput-boolean v0, Lio/sentry/util/Platform;->isJavaNinePlus:Z

    goto :goto_3

    .line 27
    :cond_0
    :try_start_1
    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "javaStringVersion":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 29
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 30
    .local v2, "javaVersion":D
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    sput-boolean v4, Lio/sentry/util/Platform;->isJavaNinePlus:Z

    .line 31
    .end local v2    # "javaVersion":D
    goto :goto_2

    .line 32
    :cond_2
    sput-boolean v0, Lio/sentry/util/Platform;->isJavaNinePlus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .end local v1    # "javaStringVersion":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 34
    :catchall_1
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v0, Lio/sentry/util/Platform;->isJavaNinePlus:Z

    .line 38
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAndroid()Z
    .locals 1

    .line 41
    sget-boolean v0, Lio/sentry/util/Platform;->isAndroid:Z

    return v0
.end method

.method public static isJavaNinePlus()Z
    .locals 1

    .line 49
    sget-boolean v0, Lio/sentry/util/Platform;->isJavaNinePlus:Z

    return v0
.end method

.method public static isJvm()Z
    .locals 1

    .line 45
    sget-boolean v0, Lio/sentry/util/Platform;->isAndroid:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
