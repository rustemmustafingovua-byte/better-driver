.class public final Lorg/maplibre/android/offline/OfflineRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/offline/OfflineRegion$Companion;,
        Lorg/maplibre/android/offline/OfflineRegion$DownloadState;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;,
        Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/maplibre/android/offline/OfflineRegion$Companion;

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_INACTIVE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final definition:Lorg/maplibre/android/offline/OfflineRegionDefinition;

.field private final fileSource:Lorg/maplibre/android/storage/FileSource;

.field private final handler:Landroid/os/Handler;

.field private final id:J

.field private isDeleted:Z

.field private isDeliveringInactiveMessages:Z

.field private metadata:[B

.field private final nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/offline/OfflineRegion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/offline/OfflineRegion$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/offline/OfflineRegion;->Companion:Lorg/maplibre/android/offline/OfflineRegion$Companion;

    invoke-static {}, Lorg/maplibre/android/LibraryLoader;->load()V

    return-void
.end method

.method private constructor <init>(JLorg/maplibre/android/storage/FileSource;JLorg/maplibre/android/offline/OfflineRegionDefinition;[B)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->handler:Landroid/os/Handler;

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->context:Landroid/content/Context;

    iput-object p3, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    iput-wide p4, p0, Lorg/maplibre/android/offline/OfflineRegion;->id:J

    iput-object p6, p0, Lorg/maplibre/android/offline/OfflineRegion;->definition:Lorg/maplibre/android/offline/OfflineRegionDefinition;

    iput-object p7, p0, Lorg/maplibre/android/offline/OfflineRegion;->metadata:[B

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/offline/OfflineRegion;->initialize(JLorg/maplibre/android/storage/FileSource;)V

    return-void
.end method

.method public static final synthetic access$deliverMessages(Lorg/maplibre/android/offline/OfflineRegion;)Z
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/offline/OfflineRegion;->deliverMessages()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFileSource$p(Lorg/maplibre/android/offline/OfflineRegion;)Lorg/maplibre/android/storage/FileSource;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setDeleted$p(Lorg/maplibre/android/offline/OfflineRegion;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/offline/OfflineRegion;->isDeleted:Z

    return-void
.end method

.method public static final synthetic access$setMetadata$p(Lorg/maplibre/android/offline/OfflineRegion;[B)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineRegion;->metadata:[B

    return-void
.end method

.method private final native deleteOfflineRegion(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final deliverMessages()Z
    .locals 2

    iget v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineRegion;->isDeliveringInactiveMessages:Z

    return p0
.end method

.method private final native getOfflineRegionStatus(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native initialize(JLorg/maplibre/android/storage/FileSource;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native invalidateOfflineRegion(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native setOfflineRegionDownloadState(I)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native setOfflineRegionObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native updateOfflineRegionMetadata([BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public final delete(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->isDeleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->isDeleted:Z

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    new-instance v0, Lorg/maplibre/android/offline/OfflineRegion$delete$1;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$delete$1;-><init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V

    invoke-direct {p0, v0}, Lorg/maplibre/android/offline/OfflineRegion;->deleteOfflineRegion(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V

    :cond_0
    return-void
.end method

.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final getDefinition()Lorg/maplibre/android/offline/OfflineRegionDefinition;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion;->definition:Lorg/maplibre/android/offline/OfflineRegionDefinition;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->id:J

    return-wide v0
.end method

.method public final getMetadata()[B
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion;->metadata:[B

    return-object p0
.end method

.method public final getStatus(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    new-instance v0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;-><init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V

    invoke-direct {p0, v0}, Lorg/maplibre/android/offline/OfflineRegion;->getOfflineRegionStatus(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V

    return-void
.end method

.method public final invalidate(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    new-instance v0, Lorg/maplibre/android/offline/OfflineRegion$invalidate$1;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$invalidate$1;-><init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V

    invoke-direct {p0, v0}, Lorg/maplibre/android/offline/OfflineRegion;->invalidateOfflineRegion(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V

    return-void
.end method

.method public final isDeliveringInactiveMessages()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineRegion;->isDeliveringInactiveMessages:Z

    return p0
.end method

.method public final setDeliverInactiveMessages(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/offline/OfflineRegion;->isDeliveringInactiveMessages:Z

    return-void
.end method

.method public final setDownloadState(I)V
    .locals 1

    iget v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->state:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->activate()V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->deactivate()V

    :goto_0
    iput p1, p0, Lorg/maplibre/android/offline/OfflineRegion;->state:I

    invoke-direct {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion;->setOfflineRegionDownloadState(I)V

    return-void
.end method

.method public final setObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V
    .locals 1

    new-instance v0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;-><init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V

    invoke-direct {p0, v0}, Lorg/maplibre/android/offline/OfflineRegion;->setOfflineRegionObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V

    return-void
.end method

.method public final updateMetadata([BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;

    invoke-direct {v0, p0, p2}, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;-><init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V

    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/offline/OfflineRegion;->updateOfflineRegionMetadata([BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V

    return-void
.end method
