.class public final Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/style/sources/CustomGeometrySource;->startThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final poolId:I

.field private final threadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->access$getPoolCount$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;->poolId:I

    return-void
.end method


# virtual methods
.method public final getPoolId()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;->poolId:I

    return p0
.end method

.method public final getThreadCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;->poolId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, "CustomGeom"

    filled-new-array {v3, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x3

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v2, "%s-%d-%d"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
