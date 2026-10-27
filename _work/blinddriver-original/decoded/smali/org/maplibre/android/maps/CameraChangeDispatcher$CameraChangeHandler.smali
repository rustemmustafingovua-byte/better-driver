.class Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/CameraChangeDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraChangeHandler"
.end annotation


# instance fields
.field private dispatcherWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/maps/CameraChangeDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->dispatcherWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->dispatcherWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    if-eqz p0, :cond_4

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->b(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    return-void

    :cond_1
    invoke-static {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->d(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    return-void

    :cond_2
    invoke-static {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->c(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    return-void

    :cond_3
    invoke-static {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->e(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public scheduleMessage(I)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->dispatcherWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-static {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->a(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void
.end method
