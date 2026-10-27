.class public Lio/flutter/embedding/android/FlutterFragment;
.super Landroidx/fragment/app/Fragment;
.source "FlutterFragment.java"

# interfaces
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
.implements Landroid/content/ComponentCallbacks2;
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$ActivityCallThrough;
    }
.end annotation


# static fields
.field protected static final ARG_APP_BUNDLE_PATH:Ljava/lang/String; = "app_bundle_path"

.field protected static final ARG_CACHED_ENGINE_GROUP_ID:Ljava/lang/String; = "cached_engine_group_id"

.field protected static final ARG_CACHED_ENGINE_ID:Ljava/lang/String; = "cached_engine_id"

.field protected static final ARG_DART_ENTRYPOINT:Ljava/lang/String; = "dart_entrypoint"

.field protected static final ARG_DART_ENTRYPOINT_ARGS:Ljava/lang/String; = "dart_entrypoint_args"

.field protected static final ARG_DART_ENTRYPOINT_URI:Ljava/lang/String; = "dart_entrypoint_uri"

.field protected static final ARG_DESTROY_ENGINE_WITH_FRAGMENT:Ljava/lang/String; = "destroy_engine_with_fragment"

.field protected static final ARG_ENABLE_STATE_RESTORATION:Ljava/lang/String; = "enable_state_restoration"

.field protected static final ARG_FLUTTERVIEW_RENDER_MODE:Ljava/lang/String; = "flutterview_render_mode"

.field protected static final ARG_FLUTTERVIEW_TRANSPARENCY_MODE:Ljava/lang/String; = "flutterview_transparency_mode"

.field protected static final ARG_FLUTTER_INITIALIZATION_ARGS:Ljava/lang/String; = "initialization_args"

.field protected static final ARG_HANDLE_DEEPLINKING:Ljava/lang/String; = "handle_deeplinking"

.field protected static final ARG_INITIAL_ROUTE:Ljava/lang/String; = "initial_route"

.field protected static final ARG_SHOULD_ATTACH_ENGINE_TO_ACTIVITY:Ljava/lang/String; = "should_attach_engine_to_activity"

.field protected static final ARG_SHOULD_AUTOMATICALLY_HANDLE_ON_BACK_PRESSED:Ljava/lang/String; = "should_automatically_handle_on_back_pressed"

.field protected static final ARG_SHOULD_DELAY_FIRST_ANDROID_VIEW_DRAW:Ljava/lang/String; = "should_delay_first_android_view_draw"

.field public static final FLUTTER_VIEW_ID:I

.field private static final TAG:Ljava/lang/String; = "FlutterFragment"


# instance fields
.field delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

.field private delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

.field final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private final onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1054
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 176
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterFragment$1;-><init>(Lio/flutter/embedding/android/FlutterFragment;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1010
    iput-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1018
    nop

    .line 1019
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterFragment;->createOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 1057
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1058
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createDefault()Lio/flutter/embedding/android/FlutterFragment;
    .locals 1

    .line 208
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;-><init>()V

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->build()Lio/flutter/embedding/android/FlutterFragment;

    move-result-object v0

    return-object v0
.end method

.method private createOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;
    .locals 3

    .line 1022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 1023
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$2;

    invoke-direct {v0, p0, v2}, Lio/flutter/embedding/android/FlutterFragment$2;-><init>(Lio/flutter/embedding/android/FlutterFragment;Z)V

    return-object v0

    .line 1046
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$3;

    invoke-direct {v0, p0, v2}, Lio/flutter/embedding/android/FlutterFragment$3;-><init>(Lio/flutter/embedding/android/FlutterFragment;Z)V

    return-object v0
.end method

.method private stillAttachedForEvent(Ljava/lang/String;)Z
    .locals 5
    .param p1, "event"    # Ljava/lang/String;

    .line 1789
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterFragment "

    const-string v4, "FlutterFragment"

    if-nez v0, :cond_0

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " called after release."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    return v1

    .line 1793
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " called after detach."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    return v1

    .line 1797
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static withCachedEngine(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 2
    .param p0, "engineId"    # Ljava/lang/String;

    .line 521
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;-><init>(Ljava/lang/String;Lio/flutter/embedding/android/FlutterFragment$1;)V

    return-object v0
.end method

.method public static withNewEngine()Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 1

    .line 217
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;-><init>()V

    return-object v0
.end method

.method public static withNewEngineInGroup(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 1
    .param p0, "engineGroupId"    # Ljava/lang/String;

    .line 765
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public attachToEngineAutomatically()Z
    .locals 1

    .line 1735
    const/4 v0, 0x1

    return v0
.end method

.method public cancelBackGesture()V
    .locals 1

    .line 1298
    const-string v0, "cancelBackGesture"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->cancelBackGesture()V

    .line 1301
    :cond_0
    return-void
.end method

.method public cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2
    .param p1, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 1620
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1621
    .local v0, "attachedActivity":Landroidx/fragment/app/FragmentActivity;
    instance-of v1, v0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    if-eqz v1, :cond_0

    .line 1622
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    invoke-interface {v1, p1}, Lio/flutter/embedding/android/FlutterEngineConfigurator;->cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 1624
    :cond_0
    return-void
.end method

.method public commitBackGesture()V
    .locals 1

    .line 1291
    const-string v0, "commitBackGesture"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->commitBackGesture()V

    .line 1294
    :cond_0
    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2
    .param p1, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 1606
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1607
    .local v0, "attachedActivity":Landroidx/fragment/app/FragmentActivity;
    instance-of v1, v0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    if-eqz v1, :cond_0

    .line 1608
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    invoke-interface {v1, p1}, Lio/flutter/embedding/android/FlutterEngineConfigurator;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 1610
    :cond_0
    return-void
.end method

.method public createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
    .locals 1
    .param p1, "host"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 1015
    new-instance v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)V

    return-object v0
.end method

.method public detachFromFlutterEngine()V
    .locals 2

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1202
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    const-string v1, "FlutterFragment"

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    .line 1207
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    .line 1209
    :cond_0
    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getAppBundlePath()Ljava/lang/String;
    .locals 2

    .line 1466
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_bundle_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackCallbackState()Z
    .locals 1

    .line 1740
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getCachedEngineGroupId()Ljava/lang/String;
    .locals 3

    .line 1381
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_engine_group_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCachedEngineId()Ljava/lang/String;
    .locals 3

    .line 1370
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_engine_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDartEntrypointArgs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1437
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dart_entrypoint_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDartEntrypointFunctionName()Ljava/lang/String;
    .locals 3

    .line 1424
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dart_entrypoint"

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDartEntrypointLibraryUri()Ljava/lang/String;
    .locals 2

    .line 1451
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dart_entrypoint_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExclusiveAppComponent()Lio/flutter/embedding/android/ExclusiveAppComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/embedding/android/ExclusiveAppComponent<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    return-object v0
.end method

.method public getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 1558
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    return-object v0
.end method

.method public getFlutterShellArgs()Lio/flutter/embedding/engine/FlutterShellArgs;
    .locals 3

    .line 1357
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initialization_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "flutterShellArgsArray":[Ljava/lang/String;
    new-instance v1, Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 1359
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    :goto_0
    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/FlutterShellArgs;-><init>([Ljava/lang/String;)V

    .line 1358
    return-object v1
.end method

.method public getInitialRoute()Ljava/lang/String;
    .locals 2

    .line 1479
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_route"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderMode()Lio/flutter/embedding/android/RenderMode;
    .locals 3

    .line 1493
    nop

    .line 1494
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    invoke-virtual {v1}, Lio/flutter/embedding/android/RenderMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_render_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "renderModeName":Ljava/lang/String;
    invoke-static {v0}, Lio/flutter/embedding/android/RenderMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/RenderMode;

    move-result-object v1

    return-object v1
.end method

.method public getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;
    .locals 3

    .line 1509
    nop

    .line 1510
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    .line 1511
    invoke-virtual {v1}, Lio/flutter/embedding/android/TransparencyMode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_transparency_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, "transparencyModeName":Ljava/lang/String;
    invoke-static {v0}, Lio/flutter/embedding/android/TransparencyMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/TransparencyMode;

    move-result-object v1

    return-object v1
.end method

.method isFlutterEngineInjected()Z
    .locals 1

    .line 1389
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1315
    const-string v0, "onActivityResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 1318
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1088
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1089
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    invoke-interface {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;->createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1090
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onAttach(Landroid/content/Context;)V

    .line 1091
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 1100
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1102
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1103
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1270
    const-string v0, "onBackPressed"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onBackPressed()V

    .line 1273
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1107
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1108
    if-eqz p1, :cond_0

    .line 1109
    nop

    .line 1110
    const-string v0, "enableOnBackInvokedCallbackState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1112
    .local v0, "frameworkHandlesBack":Z
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1114
    .end local v0    # "frameworkHandlesBack":Z
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1121
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    sget v4, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    .line 1126
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->shouldDelayFirstAndroidViewDraw()Z

    move-result v5

    .line 1121
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "inflater":Landroid/view/LayoutInflater;
    .end local p2    # "container":Landroid/view/ViewGroup;
    .end local p3    # "savedInstanceState":Landroid/os/Bundle;
    .local v1, "inflater":Landroid/view/LayoutInflater;
    .local v2, "container":Landroid/view/ViewGroup;
    .local v3, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1179
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1181
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1182
    const-string v0, "onDestroyView"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    .line 1185
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1213
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1214
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 1215
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    .line 1217
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->release()V

    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    goto :goto_0

    .line 1220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDetach called after release."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterFragment"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :goto_0
    return-void
.end method

.method public onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0
    .param p1, "flutterSurfaceView"    # Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 1649
    return-void
.end method

.method public onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0
    .param p1, "flutterTextureView"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 1654
    return-void
.end method

.method public onFlutterUiDisplayed()V
    .locals 2

    .line 1669
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1670
    .local v0, "attachedActivity":Landroidx/fragment/app/FragmentActivity;
    instance-of v1, v0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz v1, :cond_0

    .line 1671
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    .line 1673
    :cond_0
    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 2

    .line 1688
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1689
    .local v0, "attachedActivity":Landroidx/fragment/app/FragmentActivity;
    instance-of v1, v0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz v1, :cond_0

    .line 1690
    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    .line 1692
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1255
    const-string v0, "onNewIntent"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onNewIntent(Landroid/content/Intent;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1156
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 1157
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPause()V

    .line 1160
    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1149
    const-string v0, "onPostResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPostResume()V

    .line 1152
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1238
    const-string v0, "onRequestPermissionsResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1241
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1139
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 1140
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onResume()V

    .line 1143
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1189
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1190
    const-string v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1193
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1131
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 1132
    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStart()V

    .line 1135
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 1165
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStop()V

    .line 1168
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1344
    const-string v0, "onTrimMemory"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onTrimMemory(I)V

    .line 1347
    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 1328
    const-string v0, "onUserLeaveHint"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onUserLeaveHint()V

    .line 1331
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1172
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1173
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1174
    return-void
.end method

.method public popSystemNavigator()Z
    .locals 4

    .line 1753
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1755
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_2

    .line 1759
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v1

    .line 1760
    .local v1, "enabledAtStart":Z
    if-eqz v1, :cond_0

    .line 1761
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v3, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1763
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 1764
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1765
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v3, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1767
    :cond_1
    return v2

    .line 1771
    .end local v0    # "activity":Landroidx/fragment/app/FragmentActivity;
    .end local v1    # "enabledAtStart":Z
    :cond_2
    return v2
.end method

.method public provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1540
    const/4 v0, 0x0

    .line 1541
    .local v0, "flutterEngine":Lio/flutter/embedding/engine/FlutterEngine;
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1542
    .local v1, "attachedActivity":Landroidx/fragment/app/FragmentActivity;
    instance-of v2, v1, Lio/flutter/embedding/android/FlutterEngineProvider;

    if-eqz v2, :cond_0

    .line 1544
    const-string v2, "FlutterFragment"

    const-string v3, "Deferring to attached Activity to provide a FlutterEngine."

    invoke-static {v2, v3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    move-object v2, v1

    check-cast v2, Lio/flutter/embedding/android/FlutterEngineProvider;

    .line 1546
    .local v2, "flutterEngineProvider":Lio/flutter/embedding/android/FlutterEngineProvider;
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/flutter/embedding/android/FlutterEngineProvider;->provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    .line 1549
    .end local v2    # "flutterEngineProvider":Lio/flutter/embedding/android/FlutterEngineProvider;
    :cond_0
    return-object v0
.end method

.method public providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformPlugin;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 1565
    if-eqz p1, :cond_0

    .line 1566
    new-instance v0, Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-object v0

    .line 1568
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public provideSensitiveContentPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/view/SensitiveContentPlugin;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 1576
    if-eqz p1, :cond_0

    .line 1577
    new-instance v0, Lio/flutter/plugin/view/SensitiveContentPlugin;

    sget v1, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    .line 1578
    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getSensitiveContentChannel()Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lio/flutter/plugin/view/SensitiveContentPlugin;-><init>(ILandroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;)V

    .line 1577
    return-object v0

    .line 1580
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method setDelegateFactory(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;)V
    .locals 1
    .param p1, "delegateFactory"    # Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1073
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1074
    invoke-interface {p1, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;->createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1075
    return-void
.end method

.method public setFrameworkHandlesBack(Z)V
    .locals 3
    .param p1, "frameworkHandlesBack"    # Z

    .line 1776
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    return-void

    .line 1779
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1780
    return-void
.end method

.method public shouldAttachEngineToActivity()Z
    .locals 2

    .line 1634
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_attach_engine_to_activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldDelayFirstAndroidViewDraw()Z
    .locals 2

    .line 1785
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_delay_first_android_view_draw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDestroyEngineWithHost()Z
    .locals 4

    .line 1401
    nop

    .line 1402
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "destroy_engine_with_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1403
    .local v0, "explicitDestructionRequested":Z
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getCachedEngineId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1405
    :cond_1
    :goto_0
    return v0
.end method

.method public shouldDispatchAppLifecycleState()Z
    .locals 1

    .line 1722
    const/4 v0, 0x1

    return v0
.end method

.method public shouldHandleDeeplinking()Z
    .locals 2

    .line 1643
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle_deeplinking"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldRestoreAndSaveState()Z
    .locals 2

    .line 1696
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1700
    const/4 v0, 0x0

    return v0

    .line 1702
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public startBackGesture(Landroidx/activity/BackEventCompat;)V
    .locals 2
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;

    .line 1277
    const-string v0, "startBackGesture"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->toBackEvent()Landroid/window/BackEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->startBackGesture(Landroid/window/BackEvent;)V

    .line 1280
    :cond_0
    return-void
.end method

.method public updateBackGestureProgress(Landroidx/activity/BackEventCompat;)V
    .locals 2
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;

    .line 1284
    const-string v0, "updateBackGestureProgress"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->toBackEvent()Landroid/window/BackEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateBackGestureProgress(Landroid/window/BackEvent;)V

    .line 1287
    :cond_0
    return-void
.end method

.method public updateSystemUiOverlays()V
    .locals 1

    .line 1707
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateSystemUiOverlays()V

    .line 1710
    :cond_0
    return-void
.end method
