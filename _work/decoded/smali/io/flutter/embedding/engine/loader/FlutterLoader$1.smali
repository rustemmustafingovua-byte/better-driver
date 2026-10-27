.class Lio/flutter/embedding/engine/loader/FlutterLoader$1;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/engine/loader/FlutterLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    .locals 22

    .line 155
    move-object/from16 v1, p0

    const-string v0, "FlutterLoader initTask"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v2

    .line 156
    .local v2, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    iget-object v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v3, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$000(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v3, v0

    .line 159
    .local v3, "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    :try_start_1
    iget-object v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    iget-object v4, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lio/flutter/embedding/engine/FlutterJNI;->loadLibrary(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    nop

    .line 228
    :try_start_2
    iget-object v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    .line 232
    iget-object v0, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$300(Lio/flutter/embedding/engine/loader/FlutterLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v4, Lio/flutter/embedding/engine/loader/FlutterLoader$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader$1$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 234
    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v3}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->waitForCompletion()V

    .line 238
    :cond_0
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    iget-object v4, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 239
    invoke-static {v4}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 240
    invoke-static {v5}, Lio/flutter/util/PathUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 241
    invoke-static {v6}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/flutter/util/TraceSection;->close()V

    .line 238
    :cond_1
    return-object v0

    .line 155
    .end local v3    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    goto/16 :goto_6

    .line 160
    .restart local v3    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string v4, "couldn\'t find \"libflutter.so\""

    .line 162
    .local v4, "couldntFindVersion":Ljava/lang/String;
    const-string v5, "dlopen failed: library \"libflutter.so\" not found"

    .line 164
    .local v5, "notFoundVersion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v6, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 225
    :cond_2
    nop

    .end local v2    # "e":Lio/flutter/util/TraceSection;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .restart local v2    # "e":Lio/flutter/util/TraceSection;
    :cond_3
    :goto_0
    :try_start_5
    const-string v6, "os.arch"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "cpuArch":Ljava/lang/String;
    iget-object v7, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v8, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v8}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$200(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 173
    .local v7, "nativeLibsDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "nativeLibsContents":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v9, "splitAndSourceDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 182
    .local v10, "abis":[Ljava/lang/String;
    array-length v11, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_7

    aget-object v14, v10, v13

    .line 183
    .local v14, "abi":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "lib"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "libPathSuffix":Ljava/lang/String;
    iget-object v15, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 187
    .local v15, "splitSourceDirs":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v17, v16

    .line 188
    .local v17, "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_5

    .line 189
    move-object/from16 v16, v2

    .end local v2    # "e":Lio/flutter/util/TraceSection;
    .local v16, "e":Lio/flutter/util/TraceSection;
    :try_start_6
    array-length v2, v15

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .local v18, "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v19, v15, v3

    move-object/from16 v20, v19

    .line 190
    .local v20, "splitSourceDir":Ljava/lang/String;
    move/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20    # "splitSourceDir":Ljava/lang/String;
    .local v3, "splitSourceDir":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    .end local v17    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "splitSourceDir":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    nop

    .end local v20    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v17, v3

    move v3, v2

    move/from16 v2, v19

    goto :goto_2

    .line 192
    .end local v3    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v3, v17

    .end local v17    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 188
    .end local v16    # "e":Lio/flutter/util/TraceSection;
    .end local v18    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .restart local v2    # "e":Lio/flutter/util/TraceSection;
    .local v3, "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .restart local v17    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    .line 195
    .end local v2    # "e":Lio/flutter/util/TraceSection;
    .end local v17    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "e":Lio/flutter/util/TraceSection;
    .restart local v18    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    :goto_3
    iget-object v2, v1, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 196
    .local v2, "baseApkPath":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "baseApkLibDir":Ljava/lang/String;
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v1    # "baseApkLibDir":Ljava/lang/String;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v3    # "splitLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "libPathSuffix":Ljava/lang/String;
    .end local v14    # "abi":Ljava/lang/String;
    .end local v15    # "splitSourceDirs":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 202
    .end local v16    # "e":Lio/flutter/util/TraceSection;
    .end local v18    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .local v2, "e":Lio/flutter/util/TraceSection;
    .local v3, "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .end local v2    # "e":Lio/flutter/util/TraceSection;
    .end local v3    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .restart local v16    # "e":Lio/flutter/util/TraceSection;
    .restart local v18    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load libflutter.so this is possibly because the application is running on an architecture that Flutter Android does not support (e.g. x86) see https://docs.flutter.dev/deployment/android#what-are-the-supported-target-architectures for more detail.\nApp is using cpu architecture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and the native libraries directory (with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "contains the following files: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 215
    :cond_8
    const-string v3, "does not exist"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 217
    const-string v3, ""

    goto :goto_5

    .line 220
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", and the split and source libraries directory (with path(s) "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ")"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v16    # "e":Lio/flutter/util/TraceSection;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 155
    .end local v0    # "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    .end local v4    # "couldntFindVersion":Ljava/lang/String;
    .end local v5    # "notFoundVersion":Ljava/lang/String;
    .end local v6    # "cpuArch":Ljava/lang/String;
    .end local v7    # "nativeLibsDir":Ljava/io/File;
    .end local v8    # "nativeLibsContents":[Ljava/lang/String;
    .end local v9    # "splitAndSourceDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "abis":[Ljava/lang/String;
    .end local v18    # "resourceExtractor":Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .restart local v16    # "e":Lio/flutter/util/TraceSection;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_6

    .end local v16    # "e":Lio/flutter/util/TraceSection;
    .restart local v2    # "e":Lio/flutter/util/TraceSection;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object v1, v0

    .end local v2    # "e":Lio/flutter/util/TraceSection;
    .restart local v16    # "e":Lio/flutter/util/TraceSection;
    :goto_6
    if-eqz v16, :cond_a

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lio/flutter/util/TraceSection;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$call$0$io-flutter-embedding-engine-loader-FlutterLoader$1()V
    .locals 1

    .line 232
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManager()V

    return-void
.end method
