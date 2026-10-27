.class public Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;
.super Ljava/lang/Object;
.source "PlayStoreDeferredComponentManager.java"

# interfaces
.implements Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;
    }
.end annotation


# static fields
.field public static final MAPPING_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PlayStoreDeferredComponentManager"


# instance fields
.field private channel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

.field private context:Landroid/content/Context;

.field private flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

.field private flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private listener:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;

.field protected loadingUnitIdToComponentNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected loadingUnitIdToSharedLibraryNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nameToSessionId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sessionIdToLoadingUnitId:Landroid/util/SparseIntArray;

.field private sessionIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionIdToState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".loadingUnitMapping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->MAPPING_KEY:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 206
    invoke-static {p1}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->load(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 207
    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 208
    new-instance v0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;-><init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$1;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->listener:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;

    .line 209
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->listener:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToName:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToLoadingUnitId:Landroid/util/SparseIntArray;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToState:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    .line 215
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToComponentNames:Landroid/util/SparseArray;

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToSharedLibraryNames:Landroid/util/SparseArray;

    .line 217
    invoke-direct {p0}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->initLoadingUnitMappingToComponentNames()V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 44
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToName:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 44
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToLoadingUnitId:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 44
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object v0
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 44
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->channel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    return-object v0
.end method

.method static synthetic access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 44
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToState:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 241
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initLoadingUnitMappingToComponentNames()V
    .locals 13

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".loadingUnitMapping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "mappingKey":Ljava/lang/String;
    invoke-direct {p0}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 262
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    .line 263
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 264
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 265
    sget-object v3, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->MAPPING_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "rawMappingString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No loading unit to dynamic feature module name found. Ensure \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->MAPPING_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is defined in the base module\'s AndroidManifest."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PlayStoreDeferredComponentManager"

    invoke-static {v5, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    return-void

    .line 278
    :cond_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 280
    .local v8, "entry":Ljava/lang/String;
    const-string v9, ":"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, "splitEntry":[Ljava/lang/String;
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 282
    .local v10, "loadingUnitId":I
    iget-object v11, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToComponentNames:Landroid/util/SparseArray;

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    array-length v11, v9

    const/4 v12, 0x2

    if-le v11, v12, :cond_2

    .line 284
    iget-object v11, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToSharedLibraryNames:Landroid/util/SparseArray;

    aget-object v12, v9, v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    .end local v8    # "entry":Ljava/lang/String;
    .end local v9    # "splitEntry":[Ljava/lang/String;
    .end local v10    # "loadingUnitId":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "rawMappingString":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private verifyJNI()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "PlayStoreDeferredComponentManager"

    const-string v1, "No FlutterJNI provided. `setJNI` must be called on the DeferredComponentManager before attempting to load dart libraries or invoking with platform channels."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 495
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->listener:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->channel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 497
    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 498
    return-void
.end method

.method public getDeferredComponentInstallState(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "loadingUnitId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 367
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToComponentNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "resolvedComponentName":Ljava/lang/String;
    :goto_0
    const-string v1, "unknown"

    if-nez v0, :cond_1

    .line 369
    const-string v2, "PlayStoreDeferredComponentManager"

    const-string v3, "Deferred component name was null and could not be resolved from loading unit id."

    invoke-static {v2, v3}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-object v1

    .line 373
    :cond_1
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 374
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v2}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    const-string v1, "installedPendingLoad"

    return-object v1

    .line 377
    :cond_2
    return-object v1

    .line 379
    :cond_3
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 380
    .local v1, "sessionId":I
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public installDeferredComponent(ILjava/lang/String;)V
    .locals 4
    .param p1, "loadingUnitId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 293
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToComponentNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "resolvedComponentName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 295
    const-string v1, "PlayStoreDeferredComponentManager"

    const-string v2, "Deferred component name was null and could not be resolved from loading unit id."

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez p1, :cond_2

    .line 303
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadDartLibrary(ILjava/lang/String;)V

    .line 304
    return-void

    .line 308
    :cond_2
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object v1

    .line 310
    .local v1, "request":Lcom/google/android/play/core/splitinstall/SplitInstallRequest;
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 314
    invoke-interface {v2, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v2

    new-instance v3, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;Ljava/lang/String;I)V

    .line 317
    invoke-virtual {v2, v3}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v2

    new-instance v3, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$$ExternalSyntheticLambda1;-><init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;ILjava/lang/String;)V

    .line 327
    invoke-virtual {v2, v3}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    .line 361
    return-void
.end method

.method synthetic lambda$installDeferredComponent$0$io-flutter-embedding-engine-deferredcomponents-PlayStoreDeferredComponentManager(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 3
    .param p1, "resolvedComponentName"    # Ljava/lang/String;
    .param p2, "loadingUnitId"    # I
    .param p3, "sessionId"    # Ljava/lang/Integer;

    .line 319
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToName:Landroid/util/SparseArray;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToLoadingUnitId:Landroid/util/SparseIntArray;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToState:Landroid/util/SparseArray;

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 324
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToState:Landroid/util/SparseArray;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Requested"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    return-void
.end method

.method synthetic lambda$installDeferredComponent$1$io-flutter-embedding-engine-deferredcomponents-PlayStoreDeferredComponentManager(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "loadingUnitId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .line 329
    move-object v0, p3

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    .line 330
    .local v0, "splitInstallException":Lcom/google/android/play/core/splitinstall/SplitInstallException;
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result v1

    .line 332
    .local v1, "errorCode":I
    const/4 v2, 0x0

    const-string v3, "Install of deferred component module \""

    sparse-switch v1, :sswitch_data_0

    .line 352
    iget-object v3, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p2, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 354
    const-string v5, "Install of deferred component module \"%s\" failed with error %d: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {v3, p1, v4, v2}, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentInstallFailure(ILjava/lang/String;Z)V

    goto :goto_0

    .line 343
    :sswitch_0
    iget-object v4, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" failed as it is unavailable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p1, v3, v2}, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentInstallFailure(ILjava/lang/String;Z)V

    .line 349
    goto :goto_0

    .line 334
    :sswitch_1
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" failed with a network error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentInstallFailure(ILjava/lang/String;Z)V

    .line 340
    nop

    .line 360
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public loadAssets(ILjava/lang/String;)V
    .locals 3
    .param p1, "loadingUnitId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->verifyJNI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    return-void

    .line 392
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    .line 394
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 395
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v2, v2, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lio/flutter/embedding/engine/FlutterJNI;->updateJavaAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    nop

    .line 399
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public loadDartLibrary(ILjava/lang/String;)V
    .locals 12
    .param p1, "loadingUnitId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->verifyJNI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 406
    :cond_0
    if-gez p1, :cond_1

    .line 407
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToSharedLibraryNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    .local v0, "aotSharedLibraryName":Ljava/lang/String;
    const-string v1, "-"

    if-nez v0, :cond_2

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v3, v3, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->aotSharedLibraryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".part.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_2
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 419
    .local v2, "abi":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "pathAbi":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v4, "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v5, "soPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 431
    .local v6, "searchFiles":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/io/File;>;"
    iget-object v7, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v7, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 437
    .local v10, "path":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v10    # "path":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 440
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 441
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 442
    .local v7, "file":Ljava/io/File;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 443
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 444
    .local v11, "f":Ljava/io/File;
    invoke-interface {v6, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v11    # "f":Ljava/io/File;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 446
    :cond_4
    goto :goto_1

    .line 448
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "name":Ljava/lang/String;
    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 452
    invoke-virtual {v8, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "split_config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 453
    :cond_6
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 454
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    goto :goto_1

    .line 457
    :cond_7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 458
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "name":Ljava/lang/String;
    :cond_8
    goto :goto_1

    .line 462
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v3, "searchPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 469
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v8    # "path":Ljava/lang/String;
    goto :goto_3

    .line 471
    :cond_a
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    iget-object v7, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 474
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 473
    invoke-virtual {v7, p1, v8}, Lio/flutter/embedding/engine/FlutterJNI;->loadDartDeferredLibrary(I[Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setDeferredComponentChannel(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)V
    .locals 0
    .param p1, "channel"    # Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 235
    iput-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->channel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 236
    return-void
.end method

.method public setJNI(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 0
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 221
    iput-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 222
    return-void
.end method

.method public uninstallDeferredComponent(ILjava/lang/String;)Z
    .locals 4
    .param p1, "loadingUnitId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 479
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadingUnitIdToComponentNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    .local v0, "resolvedComponentName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 481
    const-string v1, "PlayStoreDeferredComponentManager"

    const-string v2, "Deferred component name was null and could not be resolved from loading unit id."

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v1, 0x0

    return v1

    .line 485
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v1, "modulesToUninstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v2, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    .line 488
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 489
    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->sessionIdToState:Landroid/util/SparseArray;

    iget-object v3, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->nameToSessionId:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 491
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
