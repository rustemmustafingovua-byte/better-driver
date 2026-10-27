.class public final Lorg/maplibre/android/MapLibre;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static INSTANCE:Lorg/maplibre/android/MapLibre; = null

.field private static final TAG:Ljava/lang/String; = "Mbgl-MapLibre"

.field private static moduleProvider:Lorg/maplibre/android/ModuleProvider;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/util/TileServerOptions;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    return-void
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/maplibre/android/MapLibre;
    .locals 3

    const-class v0, Lorg/maplibre/android/MapLibre;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lorg/maplibre/android/WellKnownTileServer;->MapLibre:Lorg/maplibre/android/WellKnownTileServer;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/maplibre/android/MapLibre;->getInstance(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/MapLibre;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/MapLibre;
    .locals 2

    const-class v0, Lorg/maplibre/android/MapLibre;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lorg/maplibre/android/MapLibre;->getInstance(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/WellKnownTileServer;Lorg/maplibre/android/RenderingEngine$Type;)Lorg/maplibre/android/MapLibre;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/WellKnownTileServer;Lorg/maplibre/android/RenderingEngine$Type;)Lorg/maplibre/android/MapLibre;
    .locals 2

    const-class v0, Lorg/maplibre/android/MapLibre;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0}, Lorg/maplibre/android/utils/ThreadUtils;->init(Landroid/content/Context;)Lorg/maplibre/android/utils/ThreadUtils;

    .line 4
    const-string v1, "Mbgl-MapLibre"

    invoke-static {v1}, Lorg/maplibre/android/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Lrc/a;

    invoke-static {v1}, Lrc/b;->a([Lrc/a;)V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez p3, :cond_0

    .line 8
    invoke-static {v1}, Lorg/maplibre/android/RenderingEngine;->getDefaultRenderingEngine(Landroid/content/Context;)Lorg/maplibre/android/RenderingEngine$Type;

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 9
    :cond_0
    :goto_0
    invoke-static {p3}, Lorg/maplibre/android/RenderingEngine;->setCurrentType(Lorg/maplibre/android/RenderingEngine$Type;)V

    .line 10
    invoke-static {v1}, Lorg/maplibre/android/storage/FileSource;->initializeFileDirsPaths(Landroid/content/Context;)V

    .line 11
    new-instance p3, Lorg/maplibre/android/MapLibre;

    invoke-direct {p3, v1, p1}, Lorg/maplibre/android/MapLibre;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p3, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 12
    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    goto :goto_1

    .line 13
    :cond_1
    iput-object p1, v1, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 14
    :goto_1
    invoke-static {p2}, Lorg/maplibre/android/util/TileServerOptions;->get(Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/util/TileServerOptions;

    move-result-object p2

    .line 15
    sget-object p3, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iput-object p2, p3, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 16
    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p2}, Lorg/maplibre/android/storage/FileSource;->setTileServerOptions(Lorg/maplibre/android/util/TileServerOptions;)V

    .line 18
    invoke-virtual {p0, p1}, Lorg/maplibre/android/storage/FileSource;->setApiKey(Ljava/lang/String;)V

    .line 19
    sget-object p0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getModuleProvider()Lorg/maplibre/android/ModuleProvider;
    .locals 1

    sget-object v0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/maplibre/android/ModuleProviderImpl;

    invoke-direct {v0}, Lorg/maplibre/android/ModuleProviderImpl;-><init>()V

    sput-object v0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    :cond_0
    sget-object v0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    return-object v0
.end method

.method public static getPredefinedStyle(Ljava/lang/String;)Lorg/maplibre/android/util/DefaultStyle;
    .locals 5

    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/maplibre/android/util/TileServerOptions;->getDefaultStyles()[Lorg/maplibre/android/util/DefaultStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/maplibre/android/util/DefaultStyle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPredefinedStyles()[Lorg/maplibre/android/util/DefaultStyle;
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/util/TileServerOptions;->getDefaultStyles()[Lorg/maplibre/android/util/DefaultStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTileServerOptions()Lorg/maplibre/android/util/TileServerOptions;
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isApiKeyValid(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/maplibre/android/constants/MapLibreConstants;->MAPLIBRE_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static declared-synchronized isConnected()Ljava/lang/Boolean;
    .locals 2

    const-class v0, Lorg/maplibre/android/MapLibre;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v1, v1, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->isConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    invoke-static {p0}, Lorg/maplibre/android/MapLibre;->throwIfApiKeyInvalid(Ljava/lang/String;)V

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iput-object p0, v0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/storage/FileSource;->setApiKey(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setConnected(Ljava/lang/Boolean;)V
    .locals 2

    const-class v0, Lorg/maplibre/android/MapLibre;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iget-object v1, v1, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/maplibre/android/net/ConnectivityReceiver;->setConnected(Ljava/lang/Boolean;)V
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

.method public static setModuleProvider(Lorg/maplibre/android/ModuleProvider;)V
    .locals 0

    sput-object p0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    return-void
.end method

.method public static throwIfApiKeyInvalid(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lorg/maplibre/android/MapLibre;->isApiKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/maplibre/android/exceptions/MapLibreConfigurationException;

    const-string v1, "A valid API key is required, currently provided key is: "

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/maplibre/android/exceptions/MapLibreConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMapLibre()V
    .locals 1

    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/maplibre/android/exceptions/MapLibreConfigurationException;

    invoke-direct {v0}, Lorg/maplibre/android/exceptions/MapLibreConfigurationException;-><init>()V

    throw v0
.end method
