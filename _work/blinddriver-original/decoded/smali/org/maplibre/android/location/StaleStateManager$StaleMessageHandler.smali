.class Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/StaleStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaleMessageHandler"
.end annotation


# instance fields
.field private final managerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/location/StaleStateManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/maplibre/android/location/StaleStateManager;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/location/StaleStateManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;-><init>(Lorg/maplibre/android/location/StaleStateManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/location/StaleStateManager;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/maplibre/android/location/StaleStateManager;->a(Lorg/maplibre/android/location/StaleStateManager;)V

    :cond_0
    return-void
.end method
