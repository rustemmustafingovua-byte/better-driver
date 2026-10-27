.class public Lorg/maplibre/android/http/NativeHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/http/HttpResponder;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final httpRequest:Lorg/maplibre/android/http/HttpRequest;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getModuleProvider()Lorg/maplibre/android/ModuleProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/maplibre/android/ModuleProvider;->createHttpRequest()Lorg/maplibre/android/http/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->httpRequest:Lorg/maplibre/android/http/HttpRequest;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-wide p1, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    const-string v5, "local://"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p3}, Lorg/maplibre/android/http/NativeHttpRequest;->executeLocalRequest(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lorg/maplibre/android/http/HttpRequest;->executeRequest(Lorg/maplibre/android/http/HttpResponder;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/http/NativeHttpRequest;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/http/NativeHttpRequest;)J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/http/NativeHttpRequest;[B)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/http/NativeHttpRequest;->nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private executeLocalRequest(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/maplibre/android/http/LocalRequestTask;

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Lorg/maplibre/android/http/NativeHttpRequest$1;

    invoke-direct {v2, p0}, Lorg/maplibre/android/http/NativeHttpRequest$1;-><init>(Lorg/maplibre/android/http/NativeHttpRequest;)V

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/http/LocalRequestTask;-><init>(Landroid/content/res/AssetManager;Lorg/maplibre/android/http/LocalRequestTask$OnLocalRequestResponse;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private native nativeOnFailure(ILjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->httpRequest:Lorg/maplibre/android/http/HttpRequest;

    invoke-interface {v0}, Lorg/maplibre/android/http/HttpRequest;->cancelRequest()V

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/http/NativeHttpRequest;->nativeOnFailure(ILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/http/NativeHttpRequest;->nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
