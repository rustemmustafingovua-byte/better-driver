.class public Lio/flutter/embedding/engine/loader/FlutterLoader;
.super Ljava/lang/Object;
.source "FlutterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;,
        Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    }
.end annotation


# static fields
.field private static final AOT_VMSERVICE_SHARED_LIBRARY_NAME:Ljava/lang/String; = "aot-vmservice-shared-library-name"

.field private static final DEFAULT_KERNEL_BLOB:Ljava/lang/String; = "kernel_blob.bin"

.field private static final DEFAULT_LIBRARY:Ljava/lang/String; = "libflutter.so"

.field private static final SNAPSHOT_ASSET_PATH_KEY:Ljava/lang/String; = "snapshot-asset-path"

.field private static final TAG:Ljava/lang/String; = "FlutterLoader"

.field private static final VMSERVICE_SNAPSHOT_LIBRARY:Ljava/lang/String; = "libvmservice_snapshot.so"

.field private static instance:Lio/flutter/embedding/engine/loader/FlutterLoader;


# instance fields
.field private enableSoftwareRendering:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

.field private flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field initResultFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;",
            ">;"
        }
    .end annotation
.end field

.field private initStartTimestampMillis:J

.field initialized:Z

.field private settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->getFlutterJNIFactory()Lio/flutter/embedding/engine/FlutterJNI$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 1
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 71
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->enableSoftwareRendering:Z

    .line 86
    iput-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    .line 82
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 83
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .param p1, "x1"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResources(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 39
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object v0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 39
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    return-object v0
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/loader/FlutterLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 39
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v1, v1, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSafeAotSharedLibraryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "aotSharedLibraryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    const-string v0, "External path "

    const-string v1, "FlutterLoader"

    invoke-virtual {p0, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 601
    .local v2, "aotSharedLibraryFile":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .local v4, "aotSharedLibraryPathCanonicalPath":Ljava/lang/String;
    nop

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 613
    .local v5, "internalStorageDirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 614
    .local v6, "internalStorageDirectoryPathCanonicalPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 615
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 617
    .local v7, "livesWithinInternalStorage":Z
    const-string v8, ".so"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 619
    .local v8, "isSoFile":Z
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 620
    return-object v4

    .line 623
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " rejected; not overriding aot-shared-library-name."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-object v3

    .line 602
    .end local v4    # "aotSharedLibraryPathCanonicalPath":Ljava/lang/String;
    .end local v5    # "internalStorageDirectory":Ljava/io/File;
    .end local v6    # "internalStorageDirectoryPathCanonicalPath":Ljava/lang/String;
    .end local v7    # "livesWithinInternalStorage":Z
    .end local v8    # "isSoFile":Z
    :catch_0
    move-exception v4

    .line 603
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 606
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " is not a valid path. Please ensure this shared AOT library exists."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-object v3
.end method

.method private initResources(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .locals 7
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 682
    const/4 v0, 0x0

    .line 684
    .local v0, "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    invoke-static {p1}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "dataDirPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 687
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 688
    .local v4, "assetManager":Landroid/content/res/AssetManager;
    new-instance v5, Lio/flutter/embedding/engine/loader/ResourceExtractor;

    invoke-direct {v5, v1, v2, v3, v4}, Lio/flutter/embedding/engine/loader/ResourceExtractor;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/res/AssetManager;)V

    .line 693
    .end local v0    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .local v5, "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v0, v0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->vmSnapshotData:Ljava/lang/String;

    .line 694
    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->addResource(Ljava/lang/String;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v0

    iget-object v6, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v6, v6, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->isolateSnapshotData:Ljava/lang/String;

    .line 695
    invoke-direct {p0, v6}, Lio/flutter/embedding/engine/loader/FlutterLoader;->fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->addResource(Ljava/lang/String;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v0

    .line 696
    const-string v6, "kernel_blob.bin"

    invoke-direct {p0, v6}, Lio/flutter/embedding/engine/loader/FlutterLoader;->fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->addResource(Ljava/lang/String;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    .line 698
    invoke-virtual {v5}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->start()Lio/flutter/embedding/engine/loader/ResourceExtractor;

    .line 700
    .end local v1    # "dataDirPath":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "assetManager":Landroid/content/res/AssetManager;
    return-object v5
.end method

.method private maybeAddAotSharedLibraryNameArg(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "aotSharedLibraryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 548
    .local p3, "shellArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FlutterLoader"

    const/4 v1, 0x0

    .line 550
    .local v1, "safeAotSharedLibraryName":Ljava/lang/String;
    nop

    .line 551
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getSafeAotSharedLibraryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 557
    goto :goto_0

    .line 552
    :catch_0
    move-exception v2

    .line 553
    .local v2, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while validating AOT shared library name flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    .end local v2    # "exception":Ljava/io/IOException;
    :goto_0
    if-eqz v1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v2, v2, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 564
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsafe AOT shared library name flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please ensure that the library is vetted and placed in your application\'s internal storage."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_1
    return-void
.end method


# virtual methods
.method public automaticallyRegisterPlugins()Z
    .locals 1

    .line 737
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-boolean v0, v0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->automaticallyRegisterPlugins:Z

    return v0
.end method

.method public ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 23
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "isRelease"    # Z

    .line 274
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    const-string v12, "FlutterLoader"

    iget-boolean v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    if-eqz v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1f

    .line 281
    iget-object v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    if-eqz v0, :cond_1e

    .line 286
    :try_start_0
    const-string v0, "FlutterLoader#ensureInitializationComplete"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 287
    .local v13, "e":Lio/flutter/util/TraceSection;
    :try_start_1
    iget-object v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResultFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    .line 289
    .local v0, "result":Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 292
    .local v14, "shellArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "--icu-symbol-prefix=_binary_icudtl_dat"

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--icu-native-lib-path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v4, v4, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "libflutter.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    nop

    .line 304
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 306
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 305
    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v15, v2

    .line 307
    .local v15, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 309
    .local v4, "oldGenHeapSizeSet":Z
    const/4 v5, 0x0

    .line 311
    .local v5, "isLeakVMSet":Z
    const-string v6, " is not allowed in release builds and will be ignored if specified in the application manifest or via the command line."

    if-eqz v2, :cond_11

    .line 312
    :try_start_2
    sget-object v8, Lio/flutter/embedding/engine/FlutterEngineFlags;->ALL_FLAGS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 313
    .local v9, "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    iget-object v10, v9, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 314
    .local v10, "metadataKey":Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 315
    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_7

    .line 320
    :cond_1
    sget-object v7, Lio/flutter/embedding/engine/FlutterEngineFlags;->TEST_FLAG:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    if-ne v9, v7, :cond_2

    .line 321
    const-string v7, "For testing purposes only: test flag specified in the manifest was loaded by the FlutterLoader."

    invoke-static {v12, v7}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_7

    .line 325
    :cond_2
    invoke-static {v9}, Lio/flutter/embedding/engine/FlutterEngineFlags;->isDisabled(Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 330
    invoke-static {v9}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getReplacementFlagIfDeprecated(Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v4

    .end local v4    # "oldGenHeapSizeSet":Z
    .local v17, "oldGenHeapSizeSet":Z
    const-string v4, "Flag with metadata key "

    if-eqz v7, :cond_3

    .line 331
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    .end local v5    # "isLeakVMSet":Z
    .local v18, "isLeakVMSet":Z
    const-string v5, "If you are trying to specify "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " in your application manifest, please make sure to use the new metadata key name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    invoke-static {v9}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getReplacementFlagIfDeprecated(Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v7

    iget-object v7, v7, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-static {v12, v5}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    .end local v18    # "isLeakVMSet":Z
    .restart local v5    # "isLeakVMSet":Z
    :cond_3
    move/from16 v18, v5

    .end local v5    # "isLeakVMSet":Z
    .restart local v18    # "isLeakVMSet":Z
    iget-boolean v5, v9, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->allowedInRelease:Z

    if-nez v5, :cond_4

    if-eqz p3, :cond_4

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    goto/16 :goto_7

    .line 349
    :cond_4
    :goto_1
    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->OLD_GEN_HEAP_SIZE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    if-ne v9, v5, :cond_5

    .line 352
    const/4 v5, 0x1

    move/from16 v17, v5

    move/from16 v5, v18

    .end local v17    # "oldGenHeapSizeSet":Z
    .local v5, "oldGenHeapSizeSet":Z
    goto :goto_3

    .line 353
    .end local v5    # "oldGenHeapSizeSet":Z
    .restart local v17    # "oldGenHeapSizeSet":Z
    :cond_5
    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->LEAK_VM:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    if-ne v9, v5, :cond_6

    .line 355
    const/4 v5, 0x1

    .end local v18    # "isLeakVMSet":Z
    .local v5, "isLeakVMSet":Z
    goto :goto_3

    .line 356
    .end local v5    # "isLeakVMSet":Z
    .restart local v18    # "isLeakVMSet":Z
    :cond_6
    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_SOFTWARE_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    if-ne v9, v5, :cond_7

    .line 359
    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->ENABLE_SOFTWARE_RENDERING:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v5, v5, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 360
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->enableSoftwareRendering:Z

    goto :goto_2

    .line 362
    :cond_7
    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    if-eq v9, v5, :cond_d

    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    if-ne v9, v5, :cond_8

    goto :goto_6

    .line 380
    :cond_8
    :goto_2
    move/from16 v5, v18

    .end local v18    # "isLeakVMSet":Z
    .restart local v5    # "isLeakVMSet":Z
    :goto_3
    iget-object v7, v9, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    .line 383
    .local v7, "arg":Ljava/lang/String;
    invoke-virtual {v9}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->hasCommandLineValue()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 384
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 385
    .local v18, "valueObj":Ljava/lang/Object;
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    :cond_9
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v20, v19

    .line 386
    .local v20, "value":Ljava/lang/String;
    if-nez v20, :cond_a

    .line 387
    move/from16 v19, v5

    .end local v5    # "isLeakVMSet":Z
    .local v19, "isLeakVMSet":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires a value, but no value was found. Please specify a value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    goto :goto_5

    .line 394
    .end local v19    # "isLeakVMSet":Z
    .restart local v5    # "isLeakVMSet":Z
    :cond_a
    move/from16 v19, v5

    .end local v5    # "isLeakVMSet":Z
    .restart local v19    # "isLeakVMSet":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v20

    .end local v20    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    goto :goto_5

    .line 401
    .end local v18    # "valueObj":Ljava/lang/Object;
    .end local v19    # "isLeakVMSet":Z
    .local v5, "isLeakVMSet":Z
    :cond_b
    move/from16 v19, v5

    .end local v5    # "isLeakVMSet":Z
    .restart local v19    # "isLeakVMSet":Z
    const/4 v4, 0x0

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 402
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v7    # "arg":Ljava/lang/String;
    .end local v9    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .end local v10    # "metadataKey":Ljava/lang/String;
    :cond_c
    nop

    .line 312
    :goto_5
    move/from16 v4, v17

    move/from16 v5, v19

    goto/16 :goto_0

    .line 366
    .end local v19    # "isLeakVMSet":Z
    .restart local v9    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .restart local v10    # "metadataKey":Ljava/lang/String;
    .local v18, "isLeakVMSet":Z
    :cond_d
    :goto_6
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "aotSharedLibraryPath":Ljava/lang/String;
    if-nez v4, :cond_e

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Flag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " was specified with an empty path. Please specify a path to the desired AOT shared library."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 374
    :cond_e
    invoke-direct {v1, v3, v4, v14}, Lio/flutter/embedding/engine/loader/FlutterLoader;->maybeAddAotSharedLibraryNameArg(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 376
    nop

    .line 312
    .end local v9    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .end local v10    # "metadataKey":Ljava/lang/String;
    .end local v17    # "oldGenHeapSizeSet":Z
    .end local v18    # "isLeakVMSet":Z
    .local v4, "oldGenHeapSizeSet":Z
    .restart local v5    # "isLeakVMSet":Z
    :goto_7
    move/from16 v4, v17

    move/from16 v5, v18

    .end local v4    # "oldGenHeapSizeSet":Z
    .end local v5    # "isLeakVMSet":Z
    .restart local v17    # "oldGenHeapSizeSet":Z
    .restart local v18    # "isLeakVMSet":Z
    goto/16 :goto_0

    .line 327
    .end local v17    # "oldGenHeapSizeSet":Z
    .end local v18    # "isLeakVMSet":Z
    .restart local v4    # "oldGenHeapSizeSet":Z
    .restart local v5    # "isLeakVMSet":Z
    .restart local v9    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .restart local v10    # "metadataKey":Ljava/lang/String;
    :cond_f
    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "oldGenHeapSizeSet":Z
    .end local v5    # "isLeakVMSet":Z
    .restart local v17    # "oldGenHeapSizeSet":Z
    .restart local v18    # "isLeakVMSet":Z
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is disabled and no longer allowed. Please remove this flag from your application manifest."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v13    # "e":Lio/flutter/util/TraceSection;
    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "args":[Ljava/lang/String;
    .end local p3    # "isRelease":Z
    throw v4

    .line 312
    .end local v9    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .end local v10    # "metadataKey":Ljava/lang/String;
    .end local v17    # "oldGenHeapSizeSet":Z
    .end local v18    # "isLeakVMSet":Z
    .restart local v4    # "oldGenHeapSizeSet":Z
    .restart local v5    # "isLeakVMSet":Z
    .restart local v13    # "e":Lio/flutter/util/TraceSection;
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "args":[Ljava/lang/String;
    .restart local p3    # "isRelease":Z
    :cond_10
    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "oldGenHeapSizeSet":Z
    .end local v5    # "isLeakVMSet":Z
    .restart local v17    # "oldGenHeapSizeSet":Z
    .restart local v18    # "isLeakVMSet":Z
    goto :goto_8

    .line 311
    .end local v17    # "oldGenHeapSizeSet":Z
    .end local v18    # "isLeakVMSet":Z
    .restart local v4    # "oldGenHeapSizeSet":Z
    .restart local v5    # "isLeakVMSet":Z
    :cond_11
    move/from16 v17, v4

    move/from16 v18, v5

    .line 410
    .end local v4    # "oldGenHeapSizeSet":Z
    .end local v5    # "isLeakVMSet":Z
    .restart local v17    # "oldGenHeapSizeSet":Z
    .restart local v18    # "isLeakVMSet":Z
    :goto_8
    if-eqz v11, :cond_17

    .line 411
    array-length v4, v11

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v4, :cond_17

    aget-object v5, v11, v7

    .line 412
    .local v5, "arg":Ljava/lang/String;
    invoke-static {v5}, Lio/flutter/embedding/engine/FlutterEngineFlags;->getFlagByEngineArgument(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    move-result-object v8

    .line 413
    .local v8, "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    if-nez v8, :cond_12

    .line 416
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    goto :goto_b

    .line 418
    :cond_12
    sget-object v9, Lio/flutter/embedding/engine/FlutterEngineFlags;->TEST_FLAG:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 419
    const-string v9, "For testing purposes only: test flag specified on the command line was loaded by the FlutterLoader."

    invoke-static {v12, v9}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    goto :goto_b

    .line 423
    :cond_13
    sget-object v9, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    sget-object v9, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    .line 424
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_a

    .line 431
    :cond_14
    iget-boolean v9, v8, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->allowedInRelease:Z

    if-nez v9, :cond_15

    if-eqz p3, :cond_15

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Command line argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    goto :goto_b

    .line 441
    :cond_15
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 427
    :cond_16
    :goto_a
    sget-object v9, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v9, v9, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    .line 428
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 429
    .local v9, "aotSharedLibraryPath":Ljava/lang/String;
    invoke-direct {v1, v3, v9, v14}, Lio/flutter/embedding/engine/loader/FlutterLoader;->maybeAddAotSharedLibraryNameArg(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 430
    nop

    .line 411
    .end local v5    # "arg":Ljava/lang/String;
    .end local v8    # "flag":Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
    .end local v9    # "aotSharedLibraryPath":Ljava/lang/String;
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 448
    :cond_17
    const/4 v4, 0x0

    .line 450
    .local v4, "kernelPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->dataDirPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v6, v6, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "snapshotAssetPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kernel_blob.bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 453
    .end local v4    # "kernelPath":Ljava/lang/String;
    .local v6, "kernelPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--snapshot-asset-path="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/flutter/embedding/engine/FlutterEngineFlags;->VM_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v7, v7, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v7, v7, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->vmSnapshotData:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/flutter/embedding/engine/FlutterEngineFlags;->ISOLATE_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v7, v7, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v7, v7, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->isolateSnapshotData:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    nop

    .end local v5    # "snapshotAssetPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--cache-dir-path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->engineCachesPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v4, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v4, v4, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->domainNetworkPolicy:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--domain-network-policy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v5, v5, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->domainNetworkPolicy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_18
    iget-object v4, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;->getLogTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--log-tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    invoke-virtual {v5}, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_19
    if-nez v17, :cond_1a

    .line 495
    const-string v4, "activity"

    .line 496
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 497
    .local v4, "activityManager":Landroid/app/ActivityManager;
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 498
    .local v5, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 499
    iget-wide v7, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v7, v7

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    double-to-int v7, v7

    .line 500
    .local v7, "oldGenHeapSizeMegaBytes":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/flutter/embedding/engine/FlutterEngineFlags;->OLD_GEN_HEAP_SIZE:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v9, v9, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 502
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 500
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v7    # "oldGenHeapSizeMegaBytes":I
    :cond_1a
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 506
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v5

    .line 507
    .local v19, "screenWidth":I
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v5

    .line 510
    .local v20, "screenHeight":I
    mul-int v5, v19, v20

    mul-int/lit8 v5, v5, 0xc

    mul-int/lit8 v5, v5, 0x4

    .line 511
    .local v5, "resourceCacheMaxBytesThreshold":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--resource-cache-max-bytes-threshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    const-string v7, "--prefetched-default-font-manager"

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    if-nez v18, :cond_1b

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/flutter/embedding/engine/FlutterEngineFlags;->LEAK_VM:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v8, v8, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->initStartTimestampMillis:J

    sub-long v8, v7, v9

    .line 521
    .local v8, "initTimeMillis":J
    move-object v7, v2

    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .local v7, "applicationMetaData":Landroid/os/Bundle;
    iget-object v2, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    .line 523
    invoke-interface {v14, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move/from16 v16, v5

    move-object v5, v6

    .end local v6    # "kernelPath":Ljava/lang/String;
    .local v5, "kernelPath":Ljava/lang/String;
    .local v16, "resourceCacheMaxBytesThreshold":I
    iget-object v6, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->appStoragePath:Ljava/lang/String;

    move-object/from16 v21, v7

    .end local v7    # "applicationMetaData":Landroid/os/Bundle;
    .local v21, "applicationMetaData":Landroid/os/Bundle;
    iget-object v7, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->engineCachesPath:Ljava/lang/String;

    move-object/from16 v22, v4

    move-object v4, v10

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .local v22, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 521
    invoke-virtual/range {v2 .. v10}, Lio/flutter/embedding/engine/FlutterJNI;->init(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 530
    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 531
    .end local v0    # "result":Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    .end local v5    # "kernelPath":Ljava/lang/String;
    .end local v8    # "initTimeMillis":J
    .end local v14    # "shellArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "resourceCacheMaxBytesThreshold":I
    .end local v17    # "oldGenHeapSizeSet":Z
    .end local v18    # "isLeakVMSet":Z
    .end local v19    # "screenWidth":I
    .end local v20    # "screenHeight":I
    .end local v21    # "applicationMetaData":Landroid/os/Bundle;
    .end local v22    # "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v13, :cond_1c

    :try_start_4
    invoke-virtual {v13}, Lio/flutter/util/TraceSection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 534
    .end local v13    # "e":Lio/flutter/util/TraceSection;
    :cond_1c
    nop

    .line 535
    return-void

    .line 286
    .restart local v13    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_1d

    :try_start_5
    invoke-virtual {v13}, Lio/flutter/util/TraceSection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "args":[Ljava/lang/String;
    .end local p3    # "isRelease":Z
    :cond_1d
    :goto_c
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 531
    .end local v13    # "e":Lio/flutter/util/TraceSection;
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "args":[Ljava/lang/String;
    .restart local p3    # "isRelease":Z
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Flutter initialization failed."

    invoke-static {v12, v2, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ensureInitializationComplete must be called after startInitialization"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ensureInitializationComplete must be called on the main thread"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureInitializationCompleteAsync(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Ljava/lang/Runnable;

    .line 645
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 649
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    if-eqz v0, :cond_1

    .line 653
    iget-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "args":[Ljava/lang/String;
    .end local p3    # "callbackHandler":Landroid/os/Handler;
    .end local p4    # "callback":Ljava/lang/Runnable;
    .local v3, "applicationContext":Landroid/content/Context;
    .local v4, "args":[Ljava/lang/String;
    .local v5, "callbackHandler":Landroid/os/Handler;
    .local v6, "callback":Ljava/lang/Runnable;
    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 673
    return-void

    .line 650
    .end local v3    # "applicationContext":Landroid/content/Context;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "callbackHandler":Landroid/os/Handler;
    .end local v6    # "callback":Ljava/lang/Runnable;
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "args":[Ljava/lang/String;
    .restart local p3    # "callbackHandler":Landroid/os/Handler;
    .restart local p4    # "callback":Ljava/lang/Runnable;
    :cond_1
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "args":[Ljava/lang/String;
    .restart local v3    # "applicationContext":Landroid/content/Context;
    .restart local v4    # "args":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ensureInitializationComplete must be called after startInitialization"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 646
    .end local v3    # "applicationContext":Landroid/content/Context;
    .end local v4    # "args":[Ljava/lang/String;
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "args":[Ljava/lang/String;
    :cond_2
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "args":[Ljava/lang/String;
    .restart local v3    # "applicationContext":Landroid/content/Context;
    .restart local v4    # "args":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ensureInitializationComplete must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findAppBundlePath()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v0, v0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    return-object v0
.end method

.method getFileFromPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 633
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "asset"    # Ljava/lang/String;

    .line 717
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSofwareRenderingEnabledViaManifest()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->enableSoftwareRendering:Z

    return v0
.end method

.method public initialized()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    return v0
.end method

.method synthetic lambda$ensureInitializationCompleteAsync$0$io-flutter-embedding-engine-loader-FlutterLoader(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Ljava/lang/Runnable;

    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 670
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 671
    return-void
.end method

.method synthetic lambda$ensureInitializationCompleteAsync$1$io-flutter-embedding-engine-loader-FlutterLoader(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Ljava/lang/Runnable;

    .line 661
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResultFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .local v0, "result":Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    nop

    .line 666
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/util/HandlerCompat;->createAsyncHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "args":[Ljava/lang/String;
    .end local p3    # "callbackHandler":Landroid/os/Handler;
    .end local p4    # "callback":Ljava/lang/Runnable;
    .local v4, "applicationContext":Landroid/content/Context;
    .local v5, "args":[Ljava/lang/String;
    .local v6, "callbackHandler":Landroid/os/Handler;
    .local v7, "callback":Ljava/lang/Runnable;
    invoke-direct/range {v2 .. v7}, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 667
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void

    .line 662
    .end local v0    # "result":Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    .end local v4    # "applicationContext":Landroid/content/Context;
    .end local v5    # "args":[Ljava/lang/String;
    .end local v6    # "callbackHandler":Landroid/os/Handler;
    .end local v7    # "callback":Ljava/lang/Runnable;
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "args":[Ljava/lang/String;
    .restart local p3    # "callbackHandler":Landroid/os/Handler;
    .restart local p4    # "callback":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p1, v0

    .line 663
    .end local p2    # "args":[Ljava/lang/String;
    .end local p3    # "callbackHandler":Landroid/os/Handler;
    .end local p4    # "callback":Ljava/lang/Runnable;
    .restart local v4    # "applicationContext":Landroid/content/Context;
    .restart local v5    # "args":[Ljava/lang/String;
    .restart local v6    # "callbackHandler":Landroid/os/Handler;
    .restart local v7    # "callback":Ljava/lang/Runnable;
    .local p1, "e":Ljava/lang/Exception;
    const-string p2, "FlutterLoader"

    const-string p3, "Flutter initialization failed."

    invoke-static {p2, p3, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 664
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public startInitialization(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 113
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    invoke-direct {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V

    .line 114
    return-void
.end method

.method public startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V
    .locals 6
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "settings"    # Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 129
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 136
    const-string v0, "FlutterLoader#startInitialization"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 138
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 140
    .local v1, "appContext":Landroid/content/Context;
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initStartTimestampMillis:J

    .line 143
    invoke-static {v1}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->load(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 145
    const-string v2, "display"

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 147
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-static {v2, v3}, Lio/flutter/view/VsyncWaiter;->getInstance(Landroid/hardware/display/DisplayManager;Lio/flutter/embedding/engine/FlutterJNI;)Lio/flutter/view/VsyncWaiter;

    move-result-object v3

    .line 148
    .local v3, "waiter":Lio/flutter/view/VsyncWaiter;
    invoke-virtual {v3}, Lio/flutter/view/VsyncWaiter;->init()V

    .line 151
    new-instance v4, Lio/flutter/embedding/engine/loader/FlutterLoader$1;

    invoke-direct {v4, p0, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader$1;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)V

    .line 245
    .local v4, "initTask":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;>;"
    iget-object v5, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResultFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v3    # "waiter":Lio/flutter/view/VsyncWaiter;
    .end local v4    # "initTask":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 247
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 136
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 133
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startInitialization must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
