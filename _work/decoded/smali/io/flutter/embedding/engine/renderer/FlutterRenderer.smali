.class public Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;,
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterRenderer"

.field public static debugDisableSurfaceClear:Z

.field public static debugForceSurfaceProducerGlTextures:Z


# instance fields
.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private final handler:Landroid/os/Handler;

.field private final imageReaderProducers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;",
            ">;"
        }
    .end annotation
.end field

.field private isDisplayingFlutterUi:Z

.field private final nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final onTrimMemoryListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->debugForceSurfaceProducerGlTextures:Z

    .line 92
    sput-boolean v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->debugDisableSurfaceClear:Z

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 3
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->handler:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->imageReaderProducers:Ljava/util/List;

    .line 108
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 123
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 124
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 125
    return-void
.end method

.method static synthetic access$002(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    return p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .param p1, "x1"    # J

    .line 55
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->unregisterTexture(J)V

    return-void
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 55
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object v0
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 55
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 55
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->imageReaderProducers:Ljava/util/List;

    return-object v0
.end method

.method private clearDeadListeners()V
    .locals 3

    .line 185
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 188
    .local v1, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    .line 189
    .local v2, "listener":Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;
    if-nez v2, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 192
    .end local v1    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;"
    .end local v2    # "listener":Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    return-void
.end method

.method private static hasAndroidHardwareBufferDefect()Z
    .locals 2

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 88
    const-string v1, "HUAWEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0
.end method

.method private registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;Z)V
    .locals 1
    .param p1, "textureId"    # J
    .param p3, "imageTexture"    # Lio/flutter/view/TextureRegistry$ImageConsumer;
    .param p4, "resetOnBackground"    # Z

    .line 1358
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;Z)V

    .line 1359
    return-void
.end method

.method private registerSurfaceTexture(JLandroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 4
    .param p1, "textureId"    # J
    .param p3, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 287
    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 288
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;JLandroid/graphics/SurfaceTexture;)V

    .line 290
    .local v0, "entry":Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New SurfaceTexture ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterRenderer"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->textureWrapper()Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V

    .line 292
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V

    .line 293
    return-object v0
.end method

.method private registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V
    .locals 1
    .param p1, "textureId"    # J
    .param p3, "textureWrapper"    # Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    .line 1351
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V

    .line 1352
    return-void
.end method

.method private translateFeatureBounds([IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFeatureBounds"    # [I
    .param p2, "offset"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 1212
    iget v0, p3, Landroid/graphics/Rect;->left:I

    aput v0, p1, p2

    .line 1213
    add-int/lit8 v0, p2, 0x1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    .line 1214
    add-int/lit8 v0, p2, 0x2

    iget v1, p3, Landroid/graphics/Rect;->right:I

    aput v1, p1, v0

    .line 1215
    add-int/lit8 v0, p2, 0x3

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    aput v1, p1, v0

    .line 1216
    return-void
.end method

.method private unregisterTexture(J)V
    .locals 1
    .param p1, "textureId"    # J

    .line 1367
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    .line 1368
    return-void
.end method


# virtual methods
.method public addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 169
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 171
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    .line 174
    :cond_0
    return-void
.end method

.method addOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V
    .locals 2
    .param p1, "listener"    # Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    .line 199
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->clearDeadListeners()V

    .line 200
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public addResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 157
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->addResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V

    .line 158
    return-void
.end method

.method public createImageTexture()Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    .locals 4

    .line 299
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 300
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    .line 301
    .local v0, "entry":Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New ImageTextureEntry ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterRenderer"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;Z)V

    .line 303
    return-object v0
.end method

.method public createSurfaceProducer(Lio/flutter/view/TextureRegistry$SurfaceLifecycle;)Lio/flutter/view/TextureRegistry$SurfaceProducer;
    .locals 8
    .param p1, "lifecycle"    # Lio/flutter/view/TextureRegistry$SurfaceLifecycle;

    .line 227
    sget-boolean v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->debugForceSurfaceProducerGlTextures:Z

    const-string v1, "FlutterRenderer"

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 229
    invoke-static {}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->hasAndroidHardwareBufferDefect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 231
    .local v2, "id":J
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    .line 232
    .local v0, "producer":Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;
    sget-object v4, Lio/flutter/view/TextureRegistry$SurfaceLifecycle;->resetInBackground:Lio/flutter/view/TextureRegistry$SurfaceLifecycle;

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 233
    .local v4, "reset":Z
    :goto_0
    invoke-direct {p0, v2, v3, v0, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerImageTexture(JLio/flutter/view/TextureRegistry$ImageConsumer;Z)V

    .line 234
    if-eqz v4, :cond_1

    .line 235
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V

    .line 237
    :cond_1
    iget-object v5, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->imageReaderProducers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New ImageReaderSurfaceProducer ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    nop

    .line 240
    .end local v2    # "id":J
    .end local v4    # "reset":Z
    .local v0, "entry":Lio/flutter/view/TextureRegistry$SurfaceProducer;
    goto :goto_1

    .line 246
    .end local v0    # "entry":Lio/flutter/view/TextureRegistry$SurfaceProducer;
    :cond_2
    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v7

    .line 247
    .local v7, "texture":Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    new-instance v2, Lio/flutter/embedding/engine/renderer/SurfaceTextureSurfaceProducer;

    .line 248
    invoke-interface {v7}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v3

    iget-object v5, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct/range {v2 .. v7}, Lio/flutter/embedding/engine/renderer/SurfaceTextureSurfaceProducer;-><init>(JLandroid/os/Handler;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V

    .line 249
    .local v2, "producer":Lio/flutter/embedding/engine/renderer/SurfaceTextureSurfaceProducer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New SurfaceTextureSurfaceProducer ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object v0, v2

    .line 252
    .end local v2    # "producer":Lio/flutter/embedding/engine/renderer/SurfaceTextureSurfaceProducer;
    .end local v7    # "texture":Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .restart local v0    # "entry":Lio/flutter/view/TextureRegistry$SurfaceProducer;
    :goto_1
    return-object v0
.end method

.method public createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 2

    .line 262
    const-string v0, "FlutterRenderer"

    const-string v1, "Creating a SurfaceTexture."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 264
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v1

    return-object v1
.end method

.method public dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # I

    .line 1347
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V

    .line 1348
    return-void
.end method

.method public dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "nodeId"    # I
    .param p2, "action"    # I
    .param p3, "args"    # Ljava/nio/ByteBuffer;
    .param p4, "argsPosition"    # I

    .line 1384
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V

    .line 1385
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1343
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isDisplayingFlutterUi()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    return v0
.end method

.method public isSoftwareRenderingEnabled()Z
    .locals 1

    .line 1371
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->getIsSoftwareRenderingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 308
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 311
    .local v1, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    .line 312
    .local v2, "listener":Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;
    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v2, p1}, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;->onTrimMemory(I)V

    goto :goto_1

    .line 316
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 318
    .end local v1    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;"
    .end local v2    # "listener":Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;
    :goto_1
    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method

.method public registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 274
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->registerSurfaceTexture(JLandroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    return-object v0
.end method

.method public removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 181
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 182
    return-void
.end method

.method removeOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V
    .locals 3
    .param p1, "listener"    # Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    .line 209
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 210
    .local v1, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 211
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->onTrimMemoryListeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 212
    goto :goto_1

    .line 214
    .end local v1    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;>;"
    :cond_0
    goto :goto_0

    .line 215
    :cond_1
    :goto_1
    return-void
.end method

.method public removeResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V
    .locals 1
    .param p1, "listener"    # Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;

    .line 161
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->removeResizingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;)V

    .line 162
    return-void
.end method

.method public restoreSurfaceProducers()V
    .locals 3

    .line 135
    const-string v0, "FlutterRenderer"

    const-string v1, "restoreSurfaceProducers called; notifying SurfaceProducers"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->imageReaderProducers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    .line 137
    .local v1, "producer":Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;
    iget-object v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->callback:Lio/flutter/view/TextureRegistry$SurfaceProducer$Callback;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->notifiedDestroy:Z

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->notifiedDestroy:Z

    .line 139
    iget-object v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->callback:Lio/flutter/view/TextureRegistry$SurfaceProducer$Callback;

    invoke-interface {v2}, Lio/flutter/view/TextureRegistry$SurfaceProducer$Callback;->onSurfaceAvailable()V

    .line 141
    .end local v1    # "producer":Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method scheduleEngineFrame()V
    .locals 1

    .line 1363
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->scheduleFrame()V

    .line 1364
    return-void
.end method

.method public setAccessibilityFeatures(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 1375
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    .line 1376
    return-void
.end method

.method public setSemanticsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1379
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    .line 1380
    return-void
.end method

.method public setViewportMetrics(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)V
    .locals 33
    .param p1, "viewportMetrics"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->validate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    return-void

    .line 1232
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting viewport metrics\nSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nSize Constraints: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxWidth:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nPadding - L: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", T: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", R: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", B: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\nInsets - L: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\nSystem Gesture Insets - L: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nDisplay Features: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1277
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nDisplay Cutouts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1280
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$900(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nDisplay Corner Radii - TL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusTopLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusTopRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", BR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusBottomRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", BL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusBottomLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1232
    const-string v3, "FlutterRenderer"

    invoke-static {v3, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    nop

    .line 1292
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$900(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 1293
    .local v2, "totalFeaturesAndCutouts":I
    mul-int/lit8 v3, v2, 0x4

    new-array v3, v3, [I

    .line 1294
    .local v3, "displayFeaturesBounds":[I
    new-array v4, v2, [I

    .line 1295
    .local v4, "displayFeaturesType":[I
    new-array v5, v2, [I

    .line 1296
    .local v5, "displayFeaturesState":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1297
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    .line 1298
    .local v7, "displayFeature":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;
    mul-int/lit8 v8, v6, 0x4

    iget-object v9, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3, v8, v9}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->translateFeatureBounds([IILandroid/graphics/Rect;)V

    .line 1299
    iget-object v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->type:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    iget v8, v8, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->encodedValue:I

    aput v8, v4, v6

    .line 1300
    iget-object v8, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->state:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    iget v8, v8, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->encodedValue:I

    aput v8, v5, v6

    .line 1296
    .end local v7    # "displayFeature":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1302
    .end local v6    # "i":I
    :cond_1
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v32, v6, 0x4

    .line 1303
    .local v32, "cutoutOffset":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$900(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1304
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$900(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    .line 1305
    .local v7, "displayCutout":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;
    mul-int/lit8 v8, v6, 0x4

    add-int v8, v32, v8

    iget-object v9, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3, v8, v9}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->translateFeatureBounds([IILandroid/graphics/Rect;)V

    .line 1306
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->type:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    iget v9, v9, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->encodedValue:I

    aput v9, v4, v8

    .line 1308
    invoke-static {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, v7, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->state:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    iget v9, v9, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->encodedValue:I

    aput v9, v5, v8

    .line 1303
    .end local v7    # "displayCutout":Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1312
    .end local v6    # "i":I
    :cond_2
    move-object/from16 v22, v4

    .end local v4    # "displayFeaturesType":[I
    .local v22, "displayFeaturesType":[I
    iget-object v4, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    move-object/from16 v23, v5

    .end local v5    # "displayFeaturesState":[I
    .local v23, "displayFeaturesState":[I
    iget v5, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->devicePixelRatio:F

    iget v6, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    iget v7, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    iget v8, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    iget v9, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    iget v10, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    iget v11, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    iget v12, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    iget v13, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    iget v14, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    iget v15, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    move/from16 v16, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    move/from16 v17, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    move/from16 v18, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    move/from16 v19, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->physicalTouchSlop:I

    move/from16 v20, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minWidth:I

    move/from16 v24, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxWidth:I

    move/from16 v25, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->minHeight:I

    move/from16 v26, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->maxHeight:I

    move/from16 v27, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusTopLeft:I

    move/from16 v28, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusTopRight:I

    move/from16 v29, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusBottomRight:I

    move/from16 v30, v0

    iget v0, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayCornerRadiusBottomLeft:I

    move/from16 v31, v0

    move-object/from16 v21, v3

    .end local v3    # "displayFeaturesBounds":[I
    .local v21, "displayFeaturesBounds":[I
    invoke-virtual/range {v4 .. v31}, Lio/flutter/embedding/engine/FlutterJNI;->setViewportMetrics(FIIIIIIIIIIIIIII[I[I[IIIIIIIII)V

    .line 1340
    return-void
.end method

.method public startRenderingToSurface(Landroid/view/Surface;Z)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "onlySwap"    # Z

    .line 1143
    if-nez p2, :cond_0

    .line 1148
    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 1151
    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    .line 1153
    if-eqz p2, :cond_1

    .line 1155
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceWindowChanged(Landroid/view/Surface;)V

    goto :goto_0

    .line 1158
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 1160
    :goto_0
    return-void
.end method

.method public stopRenderingToSurface()V
    .locals 1

    .line 1195
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceDestroyed()V

    .line 1202
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    .line 1206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi:Z

    .line 1207
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    .line 1209
    :cond_1
    return-void
.end method

.method public surfaceChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1183
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceChanged(II)V

    .line 1184
    return-void
.end method

.method public swapSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1170
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surface:Landroid/view/Surface;

    .line 1171
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceWindowChanged(Landroid/view/Surface;)V

    .line 1172
    return-void
.end method
