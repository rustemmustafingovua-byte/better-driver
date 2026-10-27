.class Lorg/maplibre/android/http/NativeHttpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/http/LocalRequestTask$OnLocalRequestResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/http/NativeHttpRequest;->executeLocalRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/http/NativeHttpRequest;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/http/NativeHttpRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse([B)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    invoke-static {v0}, Lorg/maplibre/android/http/NativeHttpRequest;->a(Lorg/maplibre/android/http/NativeHttpRequest;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    invoke-static {v0}, Lorg/maplibre/android/http/NativeHttpRequest;->b(Lorg/maplibre/android/http/NativeHttpRequest;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    invoke-static {v0, p1}, Lorg/maplibre/android/http/NativeHttpRequest;->c(Lorg/maplibre/android/http/NativeHttpRequest;[B)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    invoke-static {p0}, Lorg/maplibre/android/http/NativeHttpRequest;->a(Lorg/maplibre/android/http/NativeHttpRequest;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void
.end method
