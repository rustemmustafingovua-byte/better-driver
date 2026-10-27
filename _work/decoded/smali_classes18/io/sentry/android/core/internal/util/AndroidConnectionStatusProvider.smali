.class public final Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
.super Ljava/lang/Object;
.source "AndroidConnectionStatusProvider.java"

# interfaces
.implements Lio/sentry/IConnectionStatusProvider;
.implements Lio/sentry/android/core/AppState$AppStateListener;


# static fields
.field private static final CACHE_TTL_MINUTES:J = 0x2L

.field private static final capabilities:[I

.field private static final childCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private static volatile connectivityManager:Landroid/net/ConnectivityManager;

.field private static final connectivityManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private static final transports:[I


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private volatile cacheFreshUntil:Lio/sentry/time/Deadline;

.field private volatile cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final cellularNetworkTechnologyProvider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

.field private final connectionStatusObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private volatile currentNetwork:Landroid/net/Network;

.field private final handler:Landroid/os/Handler;

.field private final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private volatile networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final options:Lio/sentry/SentryOptions;

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 57
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->transports:[I

    .line 68
    new-array v0, v3, [I

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->capabilities:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/time/MonotonicTicker;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p4, "ticker"    # Lio/sentry/time/MonotonicTicker;

    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "options":Lio/sentry/SentryOptions;
    .end local p3    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .end local p4    # "ticker":Lio/sentry/time/MonotonicTicker;
    .local v1, "context":Landroid/content/Context;
    .local v2, "options":Lio/sentry/SentryOptions;
    .local v3, "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .local v4, "ticker":Lio/sentry/time/MonotonicTicker;
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/time/MonotonicTicker;Landroid/os/Handler;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/time/MonotonicTicker;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p4, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 93
    iput-object p3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 94
    iput-object p4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 95
    invoke-static {p4}, Lio/sentry/time/Deadline;->passed(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Deadline;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;

    .line 96
    iput-object p5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->handler:Landroid/os/Handler;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    .line 98
    new-instance v0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    invoke-direct {v0, v2, v3, p3}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cellularNetworkTechnologyProvider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    .line 101
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->capabilities:[I

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 102
    invoke-virtual {p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 103
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->capabilities:[I

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 108
    :cond_0
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->submitSafe(Ljava/lang/Runnable;)V

    .line 110
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->addAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->currentNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$002(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
    .param p1, "x1"    # Landroid/net/Network;

    .line 40
    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->currentNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 40
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->updateCache(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$1100(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatusFromCache()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .line 40
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->capabilities:[I

    return-object v0
.end method

.method static synthetic access$1300()[I
    .locals 1

    .line 40
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->transports:[I

    return-object v0
.end method

.method static synthetic access$200()Lio/sentry/util/AutoClosableReentrantLock;
    .locals 1

    .line 40
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .line 40
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/util/AutoClosableReentrantLock;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$502(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 40
    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Lio/sentry/time/Deadline;)Lio/sentry/time/Deadline;
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
    .param p1, "x1"    # Lio/sentry/time/Deadline;

    .line 40
    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;

    return-object p1
.end method

.method static synthetic access$700(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/time/MonotonicTicker;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    return-object v0
.end method

.method static synthetic access$800(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method static synthetic access$900(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    return-object v0
.end method

.method public static addNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 761
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 762
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "NetworkCallbacks need Android N+."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    return v2

    .line 766
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    return v2

    .line 771
    :cond_1
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 772
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 774
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 771
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method private ensureNetworkCallbackRegistered()V
    .locals 6

    .line 195
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 200
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 204
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 375
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 205
    :cond_2
    return-void

    .line 208
    :cond_3
    :try_start_1
    new-instance v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;

    invoke-direct {v1, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;-><init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V

    .line 365
    .local v1, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 366
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->handler:Landroid/os/Handler;

    .line 365
    invoke-static {v2, v3, v4, v5, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/os/Handler;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 367
    iput-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 370
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cellularNetworkTechnologyProvider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    invoke-virtual {v2}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->register()V

    .line 371
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Network callback registered successfully"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to register network callback"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 376
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_5
    return-void

    .line 203
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
.end method

.method public static getChildCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation

    .line 847
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private static getConnectionStatus(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 586
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 587
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->NO_PERMISSION:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object v0

    .line 592
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 593
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 594
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "NetworkInfo is null, there\'s no active network."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object v1

    .line 597
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->CONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    goto :goto_0

    .line 599
    :cond_2
    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :goto_0
    return-object v1

    .line 600
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v0

    .line 601
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Could not retrieve Connection Status"

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object v1
.end method

.method private getConnectionStatusFromCache()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 3

    .line 149
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isNetworkEffectivelyConnected(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->CONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 150
    :goto_0
    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 157
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 158
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatus(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v1

    return-object v1

    .line 162
    :cond_2
    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object v1
.end method

.method public static getConnectionType(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 619
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 620
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 621
    return-object v1

    .line 623
    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v2}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 624
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    return-object v1

    .line 629
    :cond_1
    const/4 v2, 0x0

    .line 630
    .local v2, "ethernet":Z
    const/4 v4, 0x0

    .line 631
    .local v4, "wifi":Z
    const/4 v5, 0x0

    .line 633
    .local v5, "cellular":Z
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v6

    const/16 v7, 0x17

    if-lt v6, v7, :cond_7

    .line 635
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    .line 636
    .local v6, "activeNetwork":Landroid/net/Network;
    if-nez v6, :cond_2

    .line 637
    sget-object v7, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v8, "Network is null and cannot check network status"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v7, v8, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    return-object v1

    .line 640
    :cond_2
    nop

    .line 641
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 642
    .local v7, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-nez v7, :cond_3

    .line 643
    sget-object v8, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v9, "NetworkCapabilities is null and cannot check network type"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v8, v9, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    return-object v1

    .line 646
    :cond_3
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 647
    const/4 v2, 0x1

    .line 649
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 650
    const/4 v4, 0x1

    .line 652
    :cond_5
    invoke-virtual {v7, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 653
    const/4 v3, 0x1

    move v5, v3

    .line 655
    .end local v6    # "activeNetwork":Landroid/net/Network;
    .end local v7    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_6
    goto :goto_0

    .line 661
    :cond_7
    nop

    .line 662
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 664
    .local v6, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v6, :cond_8

    .line 665
    sget-object v7, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v8, "NetworkInfo is null, there\'s no active network."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v7, v8, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    return-object v1

    .line 670
    :cond_8
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 673
    .local v3, "type":I
    const/16 v7, 0x9

    .line 676
    .local v7, "TYPE_ETHERNET":I
    const/4 v8, 0x1

    .line 679
    .local v8, "TYPE_WIFI":I
    const/4 v9, 0x0

    .line 681
    .local v9, "TYPE_MOBILE":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 683
    :sswitch_0
    const/4 v2, 0x1

    .line 684
    goto :goto_0

    .line 686
    :sswitch_1
    const/4 v4, 0x1

    .line 687
    goto :goto_0

    .line 689
    :sswitch_2
    const/4 v5, 0x1

    .line 696
    .end local v3    # "type":I
    .end local v6    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .end local v7    # "TYPE_ETHERNET":I
    .end local v8    # "TYPE_WIFI":I
    .end local v9    # "TYPE_MOBILE":I
    :goto_0
    if-eqz v2, :cond_9

    .line 697
    const-string v1, "ethernet"

    return-object v1

    .line 699
    :cond_9
    if-eqz v4, :cond_a

    .line 700
    const-string v1, "wifi"

    return-object v1

    .line 702
    :cond_a
    if-eqz v5, :cond_b

    .line 703
    const-string v1, "cellular"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 707
    .end local v2    # "ethernet":Z
    .end local v4    # "wifi":Z
    .end local v5    # "cellular":Z
    :cond_b
    goto :goto_1

    .line 705
    :catchall_0
    move-exception v2

    .line 706
    .local v2, "exception":Ljava/lang/Throwable;
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to retrieve network info"

    invoke-interface {p1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    .end local v2    # "exception":Ljava/lang/Throwable;
    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getConnectionType(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 1
    .param p0, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 723
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const-string v0, "ethernet"

    return-object v0

    .line 726
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    const-string v0, "wifi"

    return-object v0

    .line 729
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    const-string v0, "cellular"

    return-object v0

    .line 733
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConnectionTypeFromCache()Ljava/lang/String;
    .locals 4

    .line 167
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 168
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_0

    .line 169
    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionType(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v1, v2, v3}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionType(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 738
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 739
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0

    .line 742
    :cond_0
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 743
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    .line 744
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 744
    :cond_1
    return-object v1

    .line 747
    :cond_2
    :try_start_1
    const-string v1, "connectivity"

    .line 748
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 749
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_3

    .line 750
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "ConnectivityManager is null and cannot check network status"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :cond_3
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 752
    :cond_4
    return-object v1

    .line 742
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
.end method

.method private isCacheValid()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;

    invoke-virtual {v0}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isNetworkEffectivelyConnected(Landroid/net/NetworkCapabilities;)Z
    .locals 8
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 121
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 122
    return v0

    .line 126
    :cond_0
    nop

    .line 127
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 128
    .local v1, "hasInternetAndValidated":Z
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v2

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 129
    if-eqz v1, :cond_1

    .line 131
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move v1, v2

    .line 134
    :cond_2
    if-nez v1, :cond_3

    .line 135
    return v0

    .line 139
    :cond_3
    sget-object v2, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->transports:[I

    array-length v3, v2

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_5

    aget v6, v2, v5

    .line 140
    .local v6, "transport":I
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    return v4

    .line 139
    .end local v6    # "transport":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_5
    return v0
.end method

.method static registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/os/Handler;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 790
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 791
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "NetworkCallbacks need Android N+."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    return v2

    .line 794
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 795
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 796
    return v2

    .line 798
    :cond_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 799
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    return v2

    .line 803
    :cond_2
    if-eqz p3, :cond_3

    .line 804
    :try_start_0
    invoke-virtual {v0, p4, p3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 806
    :cond_3
    invoke-virtual {v0, p4}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :goto_0
    nop

    .line 812
    const/4 v1, 0x1

    return v1

    .line 808
    :catchall_0
    move-exception v1

    .line 809
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "registerDefaultNetworkCallback failed"

    invoke-interface {p1, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 810
    return v2
.end method

.method public static removeNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p0, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 778
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 779
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 781
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 778
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private submitSafe(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 852
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 855
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 856
    const-string v3, "AndroidConnectionStatusProvider submit failed"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 821
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 822
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 823
    return-void

    .line 826
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    goto :goto_0

    .line 827
    :catchall_0
    move-exception v1

    .line 828
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "unregisterNetworkCallback failed"

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private unregisterNetworkCallback(Z)V
    .locals 5
    .param p1, "clearObservers"    # Z

    .line 475
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 476
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    if-eqz p1, :cond_0

    .line 477
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 480
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 481
    .local v1, "callbackRef":Landroid/net/ConnectivityManager$NetworkCallback;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 483
    if-eqz v1, :cond_1

    .line 484
    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 486
    :cond_1
    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cellularNetworkTechnologyProvider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    invoke-virtual {v3}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->unregister()V

    .line 488
    iput-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 489
    iput-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->currentNetwork:Landroid/net/Network;

    .line 490
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    invoke-static {v2}, Lio/sentry/time/Deadline;->passed(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Deadline;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v1    # "callbackRef":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 492
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Network callback unregistered"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    return-void

    .line 475
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method private updateCache(Landroid/net/NetworkCapabilities;)V
    .locals 9
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 380
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 382
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    const-wide/16 v2, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 383
    :try_start_0
    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 385
    :cond_0
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v5, v6}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 386
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 387
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v7, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v1, v1, [Ljava/lang/Object;

    .line 388
    invoke-interface {v5, v6, v7, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iput-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 392
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v5}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 393
    :cond_1
    return-void

    .line 396
    :cond_2
    :try_start_1
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v5}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_4

    .line 397
    iput-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 398
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v5}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 399
    :cond_3
    return-void

    .line 403
    :cond_4
    :try_start_2
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v6, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 404
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    invoke-static {v5, v6}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v5

    .line 405
    .local v5, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v5, :cond_6

    .line 406
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    .line 408
    .local v6, "activeNetwork":Landroid/net/Network;
    nop

    .line 409
    if-eqz v6, :cond_5

    .line 410
    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    goto :goto_0

    .line 411
    :cond_5
    move-object v7, v4

    :goto_0
    iput-object v7, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 412
    .end local v6    # "activeNetwork":Landroid/net/Network;
    goto :goto_1

    .line 413
    :cond_6
    iput-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 417
    .end local v5    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_1
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v2, v3, v6}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;

    .line 419
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    .line 420
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cache updated - Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 424
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatusFromCache()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 426
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionTypeFromCache()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    .line 421
    invoke-interface {v5, v6, v7, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    goto :goto_2

    .line 427
    :catchall_0
    move-exception v1

    .line 428
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v5, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "Failed to update connection status cache"

    invoke-interface {v5, v6, v7, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    iput-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 430
    iget-object v4, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ticker:Lio/sentry/time/MonotonicTicker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v2, v3, v5}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cacheFreshUntil:Lio/sentry/time/Deadline;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 432
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 433
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_7
    return-void

    .line 380
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v1
.end method


# virtual methods
.method public addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z
    .locals 3
    .param p1, "observer"    # Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    .line 457
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 458
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 460
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ensureNetworkCallbackRegistered()V

    .line 463
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 457
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public close()V
    .locals 1

    .line 498
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->submitSafe(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method public getCachedNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    .line 570
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public getConnection()Lio/sentry/android/core/internal/util/NetworkConnection;
    .locals 3

    .line 183
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isCacheValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->updateCache(Landroid/net/NetworkCapabilities;)V

    .line 186
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionTypeFromCache()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "connectionType":Ljava/lang/String;
    const-string v2, "cellular"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    new-instance v2, Lio/sentry/android/core/internal/util/NetworkConnection;

    invoke-direct {v2, v0, v1}, Lio/sentry/android/core/internal/util/NetworkConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 190
    :cond_1
    new-instance v1, Lio/sentry/android/core/internal/util/NetworkConnection;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->cellularNetworkTechnologyProvider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    .line 191
    invoke-virtual {v2}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->getCellularNetworkTechnology()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/sentry/android/core/internal/util/NetworkConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v1
.end method

.method public getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 1

    .line 441
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isCacheValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->updateCache(Landroid/net/NetworkCapabilities;)V

    .line 444
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatusFromCache()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .line 449
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isCacheValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->updateCache(Landroid/net/NetworkCapabilities;)V

    .line 452
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionTypeFromCache()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 841
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method public getStatusObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$close$1$io-sentry-android-core-internal-util-AndroidConnectionStatusProvider()V
    .locals 3

    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->unregisterNetworkCallback(Z)V

    .line 501
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 502
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 503
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 504
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManagerLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 505
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectivityManager:Landroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 507
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->removeAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 508
    return-void

    .line 504
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 501
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method synthetic lambda$new$0$io-sentry-android-core-internal-util-AndroidConnectionStatusProvider()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ensureNetworkCallbackRegistered()V

    return-void
.end method

.method synthetic lambda$onBackground$3$io-sentry-android-core-internal-util-AndroidConnectionStatusProvider()V
    .locals 1

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->unregisterNetworkCallback(Z)V

    .line 558
    return-void
.end method

.method synthetic lambda$onForeground$2$io-sentry-android-core-internal-util-AndroidConnectionStatusProvider()V
    .locals 5

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->updateCache(Landroid/net/NetworkCapabilities;)V

    .line 523
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatusFromCache()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v1

    .line 524
    .local v1, "status":Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v1, v2, :cond_2

    .line 527
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 528
    sget-object v2, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacksLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2

    .line 529
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v3, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->childCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 531
    .local v4, "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .end local v4    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_0

    .line 533
    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_2

    .line 528
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0

    .line 535
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_2
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 536
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_2
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    .line 537
    .local v3, "observer":Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
    invoke-interface {v3, v1}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 538
    .end local v3    # "observer":Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
    goto :goto_3

    .line 539
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 544
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ensureNetworkCallbackRegistered()V

    .line 545
    return-void

    .line 535
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v2

    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v2
.end method

.method public onBackground()V
    .locals 1

    .line 550
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 551
    return-void

    .line 554
    :cond_0
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->submitSafe(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 513
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->submitSafe(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method

.method public removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V
    .locals 3
    .param p1, "observer"    # Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    .line 468
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 469
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->connectionStatusObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 472
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 468
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
