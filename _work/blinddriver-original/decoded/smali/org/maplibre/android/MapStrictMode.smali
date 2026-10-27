.class public Lorg/maplibre/android/MapStrictMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile strictModeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized setStrictModeEnabled(Z)V
    .locals 1

    const-class v0, Lorg/maplibre/android/MapStrictMode;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lorg/maplibre/android/MapStrictMode;->strictModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static strictModeViolation(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/maplibre/android/MapStrictMode;->strictModeEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/maplibre/android/MapStrictModeException;

    invoke-direct {v0, p0}, Lorg/maplibre/android/MapStrictModeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static strictModeViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    sget-boolean v0, Lorg/maplibre/android/MapStrictMode;->strictModeEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/maplibre/android/MapStrictModeException;

    const-string v1, "%s - %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/maplibre/android/MapStrictModeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static strictModeViolation(Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget-boolean v0, Lorg/maplibre/android/MapStrictMode;->strictModeEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/maplibre/android/MapStrictModeException;

    const-string v1, "%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/maplibre/android/MapStrictModeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
