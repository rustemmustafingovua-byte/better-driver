.class public Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
.super Ljava/lang/Object;
.source "FlutterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewEngineFragmentBuilder"
.end annotation


# instance fields
.field private appBundlePath:Ljava/lang/String;

.field private dartEntrypoint:Ljava/lang/String;

.field private dartEntrypointArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dartLibraryUri:Ljava/lang/String;

.field private final fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;"
        }
    .end annotation
.end field

.field private handleDeeplinking:Z

.field private initialRoute:Ljava/lang/String;

.field private renderMode:Lio/flutter/embedding/android/RenderMode;

.field private shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

.field private shouldAttachEngineToActivity:Z

.field private shouldAutomaticallyHandleOnBackPressed:Z

.field private shouldDelayFirstAndroidViewDraw:Z

.field private transparencyMode:Lio/flutter/embedding/android/TransparencyMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-string v0, "main"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    .line 256
    const-string v1, "/"

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 258
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 260
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 261
    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 263
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 264
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 271
    const-class v0, Lio/flutter/embedding/android/FlutterFragment;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 272
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/flutter/embedding/android/FlutterFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-string v0, "main"

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    .line 256
    const-string v1, "/"

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 258
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 260
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 261
    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 263
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 264
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 279
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 280
    return-void
.end method


# virtual methods
.method public appBundlePath(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "appBundlePath"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public build()Lio/flutter/embedding/android/FlutterFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">()TT;"
        }
    .end annotation

    .line 487
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/android/FlutterFragment;

    .line 488
    .local v0, "frag":Lio/flutter/embedding/android/FlutterFragment;, "TT;"
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->createArgs()Landroid/os/Bundle;

    move-result-object v1

    .line 496
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 498
    return-object v0

    .line 489
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The FlutterFragment subclass sent in the constructor ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 491
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match the expected return type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0    # "frag":Lio/flutter/embedding/android/FlutterFragment;, "TT;"
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate FlutterFragment subclass ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 501
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createArgs()Landroid/os/Bundle;
    .locals 3

    .line 451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "initial_route"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "handle_deeplinking"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    const-string v1, "app_bundle_path"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "dart_entrypoint"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v1, "dart_entrypoint_uri"

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    nop

    .line 459
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypointArgs:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypointArgs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 457
    :goto_0
    const-string v2, "dart_entrypoint_args"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 462
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterShellArgs;->toArray()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialization_args"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 465
    :cond_1
    nop

    .line 467
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    goto :goto_1

    :cond_2
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    :goto_1
    invoke-virtual {v1}, Lio/flutter/embedding/android/RenderMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 465
    const-string v2, "flutterview_render_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    nop

    .line 470
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    goto :goto_2

    :cond_3
    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    :goto_2
    invoke-virtual {v1}, Lio/flutter/embedding/android/TransparencyMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 468
    const-string v2, "flutterview_transparency_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "should_attach_engine_to_activity"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    const-string v1, "destroy_engine_with_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    const-string v1, "should_automatically_handle_on_back_pressed"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    const-string v1, "should_delay_first_android_view_draw"

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    return-object v0
.end method

.method public dartEntrypoint(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "dartEntrypoint"    # Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public dartEntrypointArgs(Ljava/util/List;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;"
        }
    .end annotation

    .line 298
    .local p1, "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypointArgs:Ljava/util/List;

    .line 299
    return-object p0
.end method

.method public dartLibraryUri(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "dartLibraryUri"    # Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public flutterShellArgs(Lio/flutter/embedding/engine/FlutterShellArgs;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "shellArgs"    # Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 336
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 337
    return-object p0
.end method

.method public handleDeeplinking(Ljava/lang/Boolean;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 1
    .param p1, "handleDeeplinking"    # Ljava/lang/Boolean;

    .line 318
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 319
    return-object p0
.end method

.method public initialRoute(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "initialRoute"    # Ljava/lang/String;

    .line 308
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public renderMode(Lio/flutter/embedding/android/RenderMode;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "renderMode"    # Lio/flutter/embedding/android/RenderMode;

    .line 348
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 349
    return-object p0
.end method

.method public shouldAttachEngineToActivity(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "shouldAttachEngineToActivity"    # Z

    .line 405
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 406
    return-object p0
.end method

.method public shouldAutomaticallyHandleOnBackPressed(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "shouldAutomaticallyHandleOnBackPressed"    # Z

    .line 427
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 428
    return-object p0
.end method

.method public shouldDelayFirstAndroidViewDraw(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "shouldDelayFirstAndroidViewDraw"    # Z

    .line 439
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 440
    return-object p0
.end method

.method public transparencyMode(Lio/flutter/embedding/android/TransparencyMode;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .param p1, "transparencyMode"    # Lio/flutter/embedding/android/TransparencyMode;

    .line 361
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 362
    return-object p0
.end method
