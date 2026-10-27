.class public Lorg/maplibre/android/net/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lorg/maplibre/android/net/ConnectivityReceiver; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final LOG_CONNECTED:Ljava/lang/String; = "connected - true"

.field private static final LOG_NOT_CONNECTED:Ljava/lang/String; = "connected - false"

.field private static final TAG:Ljava/lang/String; = "Mbgl-ConnectivityReceiver"


# instance fields
.field private activationCounter:I

.field private connected:Ljava/lang/Boolean;

.field private context:Landroid/content/Context;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/net/ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->listeners:Ljava/util/List;

    iput-object p1, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;
    .locals 2

    const-class v0, Lorg/maplibre/android/net/ConnectivityReceiver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/maplibre/android/net/ConnectivityReceiver;->INSTANCE:Lorg/maplibre/android/net/ConnectivityReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lorg/maplibre/android/net/ConnectivityReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/maplibre/android/net/ConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/maplibre/android/net/ConnectivityReceiver;->INSTANCE:Lorg/maplibre/android/net/ConnectivityReceiver;

    new-instance p0, Lorg/maplibre/android/net/NativeConnectivityListener;

    invoke-direct {p0}, Lorg/maplibre/android/net/NativeConnectivityListener;-><init>()V

    invoke-virtual {v1, p0}, Lorg/maplibre/android/net/ConnectivityReceiver;->addListener(Lorg/maplibre/android/net/ConnectivityListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/maplibre/android/net/ConnectivityReceiver;->INSTANCE:Lorg/maplibre/android/net/ConnectivityReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isNetworkActive()Z
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyListeners(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "connected - true"

    goto :goto_0

    :cond_0
    const-string v0, "connected - false"

    :goto_0
    const-string v1, "Mbgl-ConnectivityReceiver"

    invoke-static {v1, v0}, Lorg/maplibre/android/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/net/ConnectivityListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/net/ConnectivityListener;->onNetworkStateChanged(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    iget v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    return-void
.end method

.method public addListener(Lorg/maplibre/android/net/ConnectivityListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->context:Landroid/content/Context;

    sget-object v0, Lorg/maplibre/android/net/ConnectivityReceiver;->INSTANCE:Lorg/maplibre/android/net/ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->connected:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/net/ConnectivityReceiver;->isNetworkActive()Z

    move-result p0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->connected:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/net/ConnectivityReceiver;->isNetworkActive()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/net/ConnectivityReceiver;->notifyListeners(Z)V

    return-void
.end method

.method public removeListener(Lorg/maplibre/android/net/ConnectivityListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setConnected(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/net/ConnectivityReceiver;->connected:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/net/ConnectivityReceiver;->isNetworkActive()Z

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/net/ConnectivityReceiver;->notifyListeners(Z)V

    return-void
.end method
