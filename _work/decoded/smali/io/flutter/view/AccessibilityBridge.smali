.class public Lio/flutter/view/AccessibilityBridge;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/AccessibilityBridge$SemanticsNode;,
        Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;,
        Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;,
        Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;,
        Lio/flutter/view/AccessibilityBridge$Flag;,
        Lio/flutter/view/AccessibilityBridge$Api31Impl;,
        Lio/flutter/view/AccessibilityBridge$Action;,
        Lio/flutter/view/AccessibilityBridge$Role;,
        Lio/flutter/view/AccessibilityBridge$TextDirection;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_ON_SCREEN:I = 0x1020036

.field private static final BOLD_TEXT_WEIGHT_ADJUSTMENT:I = 0x12c

.field private static final DEFAULT_TRANSITION_ANIMATION_SCALE:F = 1.0f

.field private static final DISABLED_TRANSITION_ANIMATION_SCALE:F = 0.0f

.field private static EMPTY_STRING_INDEX:I = 0x0

.field private static FIRST_RESOURCE_ID:I = 0x0

.field private static final FOCUSABLE_FLAGS:I

.field private static final MIN_ENGINE_GENERATED_NODE_ID:I = 0x10000

.field private static final ROOT_NODE_ID:I = 0x0

.field private static final SCROLLABLE_ACTIONS:I

.field private static final SCROLL_EXTENT_FOR_INFINITY:F = 100000.0f

.field private static final SCROLL_POSITION_CAP_FOR_INFINITY:F = 70000.0f

.field private static final TAG:Ljava/lang/String; = "AccessibilityBridge"

.field static systemAction:I


# instance fields
.field private final accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

.field private accessibilityFeatureFlags:I

.field private accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field final accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

.field private final accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

.field private accessibleNavigation:Z

.field private final animationScaleObserver:Landroid/database/ContentObserver;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final customAccessibilityActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private defaultLocale:Ljava/lang/String;

.field private embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

.field private embeddedInputFocusedNodeId:Ljava/lang/Integer;

.field private final flutterNavigationStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final flutterSemanticsTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private isReleased:Z

.field private lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private lastLeftFrameInset:Ljava/lang/Integer;

.field private onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

.field private final platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

.field private previousRouteId:I

.field private final rootAccessibilityView:Landroid/view/View;

.field private final touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->SCROLLABLE_ACTIONS:I

    .line 97
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->FOCUSABLE_FLAGS:I

    .line 136
    const v0, 0xff00001

    sput v0, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    .line 139
    const/4 v0, -0x1

    sput v0, Lio/flutter/view/AccessibilityBridge;->EMPTY_STRING_INDEX:I

    .line 2422
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->systemAction:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 7
    .param p1, "rootAccessibilityView"    # Landroid/view/View;
    .param p2, "accessibilityChannel"    # Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .param p3, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;
    .param p5, "platformViewsAccessibilityDelegate"    # Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 463
    new-instance v5, Lio/flutter/view/AccessibilityViewEmbedder;

    const/high16 v0, 0x10000

    invoke-direct {v5, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .end local p1    # "rootAccessibilityView":Landroid/view/View;
    .end local p2    # "accessibilityChannel":Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .end local p3    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local p4    # "contentResolver":Landroid/content/ContentResolver;
    .end local p5    # "platformViewsAccessibilityDelegate":Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;
    .local v1, "rootAccessibilityView":Landroid/view/View;
    .local v2, "accessibilityChannel":Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .local v3, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    .local v6, "platformViewsAccessibilityDelegate":Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;
    invoke-direct/range {v0 .. v6}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    .line 470
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 4
    .param p1, "rootAccessibilityView"    # Landroid/view/View;
    .param p2, "accessibilityChannel"    # Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .param p3, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;
    .param p5, "accessibilityViewEmbedder"    # Lio/flutter/view/AccessibilityViewEmbedder;
    .param p6, "platformViewsAccessibilityDelegate"    # Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 479
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    .line 277
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    .line 295
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibleNavigation:Z

    .line 311
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    .line 314
    new-instance v1, Lio/flutter/view/AccessibilityBridge$1;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$1;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    .line 399
    new-instance v1, Lio/flutter/view/AccessibilityBridge$2;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$2;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 428
    new-instance v1, Lio/flutter/view/AccessibilityBridge$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lio/flutter/view/AccessibilityBridge$3;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/os/Handler;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    .line 480
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 481
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 482
    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 483
    iput-object p4, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    .line 484
    iput-object p5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 485
    iput-object p6, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 486
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    invoke-virtual {p2, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    .line 489
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 490
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 494
    new-instance v1, Lio/flutter/view/AccessibilityBridge$4;

    invoke-direct {v1, p0, p3}, Lio/flutter/view/AccessibilityBridge$4;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 512
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 513
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 512
    invoke-interface {v1, v2}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 514
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 517
    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    sget-object v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_ANNOUNCE:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    or-int/2addr v1, v2

    iput v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    .line 520
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 521
    const-string v1, "transition_animation_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 522
    .local v1, "transitionUri":Landroid/net/Uri;
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 527
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 528
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->setBoldTextFlag()V

    .line 531
    :cond_0
    invoke-interface {p6, p0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 532
    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/AccessibilityBridge;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1072(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # I

    .line 80
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    return v0
.end method

.method static synthetic access$1076(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # I

    .line 80
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    return v0
.end method

.method static synthetic access$1100(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->sendLatestAccessibilityFlagsToFlutter()V

    return-void
.end method

.method static synthetic access$1200(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->onTouchExplorationExit()V

    return-void
.end method

.method static synthetic access$200(Lio/flutter/view/AccessibilityBridge;II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 80
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/view/AccessibilityBridge;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    return v0
.end method

.method static synthetic access$500(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object v0
.end method

.method static synthetic access$600(Lio/flutter/view/AccessibilityBridge;Z)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->setAccessibleNavigation(Z)V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-object v0
.end method

.method static synthetic access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 80
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getStringFromBuffer(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Ljava/nio/ByteBuffer;[F)[F
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # [F

    .line 80
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getMatrix4FromBuffer(Ljava/nio/ByteBuffer;[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600()I
    .locals 1

    .line 80
    sget v0, Lio/flutter/view/AccessibilityBridge;->SCROLLABLE_ACTIONS:I

    return v0
.end method

.method static synthetic access$7700()I
    .locals 1

    .line 80
    sget v0, Lio/flutter/view/AccessibilityBridge;->FOCUSABLE_FLAGS:I

    return v0
.end method

.method static synthetic access$7800(Lio/flutter/view/AccessibilityBridge;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->defaultLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lio/flutter/view/AccessibilityBridge;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$900(Lio/flutter/view/AccessibilityBridge;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge;

    .line 80
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private createTextChangedEvent(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 7
    .param p1, "id"    # I
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .line 2090
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2091
    .local v0, "e":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 2092
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2095
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2096
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2097
    goto :goto_1

    .line 2095
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2100
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2101
    const/4 v2, 0x0

    return-object v2

    .line 2103
    :cond_2
    move v2, v1

    .line 2104
    .local v2, "firstDifference":I
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2107
    .local v3, "oldIndex":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 2108
    .local v4, "newIndex":I
    :goto_2
    if-lt v3, v2, :cond_4

    if-lt v4, v2, :cond_4

    .line 2109
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2110
    goto :goto_3

    .line 2112
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 2113
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2115
    :cond_4
    :goto_3
    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2116
    sub-int v5, v4, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2118
    return-object v0
.end method

.method private doesLayoutInDisplayCutoutModeRequireLeftInset()Z
    .locals 5

    .line 2235
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2236
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 2237
    .local v1, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2242
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2243
    .local v3, "layoutInDisplayCutoutMode":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    .line 2240
    .end local v3    # "layoutInDisplayCutoutMode":I
    :cond_3
    :goto_0
    return v2
.end method

.method private getBoundsInScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1269
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1270
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1271
    .local v1, "locationOnScreen":[I
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1272
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1273
    return-object v0
.end method

.method private static getMatrix4FromBuffer(Ljava/nio/ByteBuffer;[F)[F
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "transform"    # [F

    .line 583
    const/16 v0, 0x10

    if-nez p1, :cond_0

    .line 584
    new-array p1, v0, [F

    .line 586
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 587
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    aput v2, p1, v1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method private getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 3
    .param p1, "id"    # I

    .line 1734
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 1735
    .local v0, "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    if-nez v0, :cond_0

    .line 1736
    new-instance v1, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    invoke-direct {v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;-><init>()V

    move-object v0, v1

    .line 1737
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$5002(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1738
    sget v1, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4202(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1739
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    :cond_0
    return-object v0
.end method

.method private getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 3
    .param p1, "id"    # I

    .line 1713
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1714
    .local v0, "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    if-nez v0, :cond_0

    .line 1715
    new-instance v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    move-object v0, v1

    .line 1716
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1717
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    :cond_0
    return-object v0
.end method

.method private getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 3

    .line 1696
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    const-string v0, "AccessibilityBridge"

    const-string v2, "Attempted to getRootSemanticsNode without a root semantics node."

    invoke-static {v0, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object v0
.end method

.method private static getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "stringAttributeArgs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 537
    .local v0, "attributesCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 538
    const/4 v1, 0x0

    return-object v1

    .line 540
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 542
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 543
    .local v3, "start":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 544
    .local v4, "end":I
    invoke-static {}, Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;->values()[Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    move-result-object v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aget-object v5, v5, v6

    .line 545
    .local v5, "type":Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;
    sget-object v6, Lio/flutter/view/AccessibilityBridge$5;->$SwitchMap$io$flutter$view$AccessibilityStringBuilder$StringAttributeType:[I

    invoke-virtual {v5}, Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 559
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 560
    .local v6, "argsIndex":I
    aget-object v7, p1, v6

    .line 561
    .local v7, "args":Ljava/nio/ByteBuffer;
    new-instance v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;

    invoke-direct {v8}, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;-><init>()V

    .line 562
    .local v8, "attribute":Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;
    iput v3, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->start:I

    .line 563
    iput v4, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->end:I

    .line 564
    iput-object v5, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->type:Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    .line 565
    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->locale:Ljava/lang/String;

    .line 566
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    goto :goto_1

    .line 549
    .end local v6    # "argsIndex":I
    .end local v7    # "args":Ljava/nio/ByteBuffer;
    .end local v8    # "attribute":Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 550
    new-instance v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;

    invoke-direct {v6}, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;-><init>()V

    .line 551
    .local v6, "attribute":Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;
    iput v3, v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;->start:I

    .line 552
    iput v4, v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;->end:I

    .line 553
    iput-object v5, v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;->type:Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    .line 554
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    nop

    .line 541
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "type":Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;
    .end local v6    # "attribute":Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "i":I
    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStringFromBuffer(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "strings"    # [Ljava/lang/String;

    .line 577
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 579
    .local v0, "stringIndex":I
    sget v1, Lio/flutter/view/AccessibilityBridge;->EMPTY_STRING_INDEX:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, p1, v0

    :goto_0
    return-object v1
.end method

.method private handleTouchExploration(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "ignorePlatformViews"    # Z

    .line 1830
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    return-void

    .line 1834
    :cond_0
    nop

    .line 1835
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-static {v0, v1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FZ)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    .line 1836
    .local v0, "semanticsNodeUnderCursor":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eq v0, v1, :cond_3

    .line 1838
    if-eqz v0, :cond_1

    .line 1839
    nop

    .line 1840
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    .line 1839
    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1842
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v1, :cond_2

    .line 1843
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1845
    :cond_2
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1847
    :cond_3
    return-void
.end method

.method private isImportant(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 4
    .param p1, "node"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1250
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1251
    return v1

    .line 1254
    :cond_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1255
    return v2

    .line 1259
    :cond_1
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    sget v3, Lio/flutter/view/AccessibilityBridge;->systemAction:I

    not-int v3, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static synthetic lambda$shouldSetCollectionInfo$0(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "semanticsNode"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "o"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 646
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$shouldSetCollectionInfo$1(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "o"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 648
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    return v0
.end method

.method private obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 2216
    invoke-virtual {p0, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2217
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2218
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2219
    return-object v0
.end method

.method private onTouchExplorationExit()V
    .locals 2

    .line 1814
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1816
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1818
    :cond_0
    return-void
.end method

.method private onWindowNameChange(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V
    .locals 3
    .param p1, "route"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2166
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$7100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    .line 2167
    .local v0, "routeName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2176
    const-string v0, " "

    .line 2178
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 2179
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setAccessibilityPaneTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 2181
    :cond_1
    nop

    .line 2182
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2183
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    invoke-direct {p0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2186
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return-void
.end method

.method private performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z
    .locals 8
    .param p1, "semanticsNode"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p2, "virtualViewId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "forward"    # Z

    .line 1508
    nop

    .line 1509
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1510
    .local v0, "granularity":I
    nop

    .line 1511
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1514
    .local v1, "extendSelection":Z
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    .line 1515
    .local v2, "previousTextSelectionBase":I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    .line 1516
    .local v3, "previousTextSelectionExtent":I
    invoke-direct {p0, p1, v0, p4, v1}, Lio/flutter/view/AccessibilityBridge;->predictCursorMovement(Lio/flutter/view/AccessibilityBridge$SemanticsNode;IZZ)V

    .line 1518
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1519
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1520
    :cond_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 1521
    .local v4, "value":Ljava/lang/String;
    :goto_0
    nop

    .line 1523
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    .line 1522
    const/16 v6, 0x2000

    invoke-direct {p0, v5, v6}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    .line 1524
    .local v5, "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1526
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1527
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1528
    invoke-direct {p0, v5}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1531
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1561
    :sswitch_0
    return v4

    .line 1547
    :sswitch_1
    if-eqz p4, :cond_3

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1548
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1549
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1548
    invoke-virtual {v5, p2, v6, v7}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1550
    return v4

    .line 1552
    :cond_3
    if-nez p4, :cond_5

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1553
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1554
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1553
    invoke-virtual {v5, p2, v6, v7}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1555
    return v4

    .line 1534
    :sswitch_2
    if-eqz p4, :cond_4

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1535
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1536
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1535
    invoke-virtual {v5, p2, v6, v7}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1537
    return v4

    .line 1539
    :cond_4
    if-nez p4, :cond_5

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1540
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1541
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1540
    invoke-virtual {v5, p2, v6, v7}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1542
    return v4

    .line 1563
    :cond_5
    :goto_1
    const/4 v4, 0x0

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private performSetText(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "node"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p2, "virtualViewId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1640
    const-string v0, ""

    .line 1641
    .local v0, "newText":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1642
    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1643
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    :cond_0
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v1, p2, v2, v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1648
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2502(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 1649
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 1650
    const/4 v1, 0x1

    return v1
.end method

.method private predictCursorMovement(Lio/flutter/view/AccessibilityBridge$SemanticsNode;IZZ)V
    .locals 5
    .param p1, "node"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p2, "granularity"    # I
    .param p3, "forward"    # Z
    .param p4, "extendSelection"    # Z

    .line 1568
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 1572
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_3

    .line 1623
    :sswitch_0
    if-eqz p3, :cond_1

    .line 1624
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_3

    .line 1626
    :cond_1
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_3

    .line 1601
    :sswitch_1
    if-eqz p3, :cond_3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1603
    const-string v0, "(?!^)(\\n)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1604
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1605
    .local v2, "result":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1606
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2212(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_1

    .line 1608
    :cond_2
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_1

    .line 1610
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "result":Ljava/util/regex/Matcher;
    :cond_3
    if-nez p3, :cond_5

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    if-lez v2, :cond_5

    .line 1612
    const-string v2, "(?s:.*)(\\n)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1613
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1614
    .local v3, "result":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1615
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    .line 1617
    :cond_4
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1619
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local v3    # "result":Ljava/util/regex/Matcher;
    :goto_0
    goto/16 :goto_3

    .line 1610
    :cond_5
    :goto_1
    goto/16 :goto_3

    .line 1581
    :sswitch_2
    if-eqz p3, :cond_7

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1582
    const-string v0, "\\p{L}(\\b)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1583
    .restart local v0    # "pattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1585
    .local v2, "result":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 1586
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1587
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2212(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_2

    .line 1589
    :cond_6
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_2

    .line 1591
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "result":Ljava/util/regex/Matcher;
    :cond_7
    if-nez p3, :cond_9

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    if-lez v2, :cond_9

    .line 1593
    const-string v2, "(?s:.*)(\\b)\\p{L}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1594
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1595
    .local v0, "result":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1596
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1598
    .end local v0    # "result":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_8
    goto :goto_3

    .line 1591
    :cond_9
    :goto_2
    goto :goto_3

    .line 1574
    :sswitch_3
    if-eqz p3, :cond_a

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1575
    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2212(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_3

    .line 1576
    :cond_a
    if-nez p3, :cond_b

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-lez v0, :cond_b

    .line 1577
    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2220(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1630
    :cond_b
    :goto_3
    if-nez p4, :cond_c

    .line 1631
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1633
    :cond_c
    return-void

    .line 1569
    :cond_d
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2144
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2145
    return-void

    .line 2151
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2152
    return-void
.end method

.method private sendLatestAccessibilityFlagsToFlutter()V
    .locals 2

    .line 630
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityFeatures(I)V

    .line 631
    return-void
.end method

.method private sendWindowContentChangeEvent(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "changeType"    # I

    .line 2201
    nop

    .line 2202
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2203
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 2204
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2205
    return-void
.end method

.method private setAccessibilityPaneTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 2190
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 2191
    return-void
.end method

.method private setAccessibleNavigation(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 298
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibleNavigation:Z

    if-ne v0, p1, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    iput-boolean p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibleNavigation:Z

    .line 302
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibleNavigation:Z

    if-eqz v0, :cond_1

    .line 303
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    goto :goto_0

    .line 305
    :cond_1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    .line 307
    :goto_0
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->sendLatestAccessibilityFlagsToFlutter()V

    .line 308
    return-void
.end method

.method private setBoldTextFlag()V
    .locals 3

    .line 659
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 663
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$Api31Impl;->isBoldText(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 665
    .local v0, "shouldBold":Z
    if-eqz v0, :cond_1

    .line 666
    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    sget-object v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->BOLD_TEXT:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    or-int/2addr v1, v2

    iput v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    goto :goto_0

    .line 668
    :cond_1
    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    sget-object v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->BOLD_TEXT:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    .line 670
    :goto_0
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->sendLatestAccessibilityFlagsToFlutter()V

    .line 671
    return-void

    .line 660
    .end local v0    # "shouldBold":Z
    :cond_2
    :goto_1
    return-void
.end method

.method private shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 3
    .param p1, "semanticsNode"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 644
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    new-instance v2, Lio/flutter/view/AccessibilityBridge$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/view/AccessibilityBridge$$ExternalSyntheticLambda0;-><init>(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 645
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    new-instance v2, Lio/flutter/view/AccessibilityBridge$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lio/flutter/view/AccessibilityBridge$$ExternalSyntheticLambda1;-><init>()V

    .line 647
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 644
    :goto_0
    return v1
.end method

.method private shouldSetCollectionItemInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 2
    .param p1, "semanticsNode"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 652
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 652
    :goto_0
    return v0
.end method

.method private willRemoveSemanticsNode(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V
    .locals 6
    .param p1, "semanticsNodeToBeRemoved"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2255
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AccessibilityBridge"

    if-nez v0, :cond_0

    .line 2256
    const-string v0, "Attempted to remove a node that is not in the tree."

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 2259
    const-string v0, "Flutter semantics tree failed to get expected node when searching by id."

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1502(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2269
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 2271
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lio/flutter/view/AccessibilityViewEmbedder;->platformViewOfNode(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 2273
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    .line 2272
    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_2

    .line 2276
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 2277
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2276
    invoke-virtual {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 2279
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 2282
    :cond_2
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2283
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 2285
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    .line 2284
    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2286
    .local v1, "embeddedView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 2287
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2292
    .end local v1    # "embeddedView":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_4

    .line 2293
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2294
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    .line 2293
    invoke-virtual {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 2296
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2299
    :cond_4
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_5

    .line 2300
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2303
    :cond_5
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_6

    .line 2304
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2306
    :cond_6
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 22
    .param p1, "virtualViewId"    # I

    .line 711
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lio/flutter/view/AccessibilityBridge;->setAccessibleNavigation(Z)V

    .line 712
    const/high16 v0, 0x10000

    if-lt v2, v0, :cond_0

    .line 715
    iget-object v0, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, v2}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 718
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 719
    iget-object v0, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 720
    .local v0, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v3, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 723
    iget-object v3, v1, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    iget-object v3, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 726
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 727
    return-object v0

    .line 730
    .end local v0    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    iget-object v6, v1, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 731
    .local v6, "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 732
    return-object v7

    .line 743
    :cond_3
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v8

    if-eq v8, v4, :cond_5

    .line 744
    iget-object v8, v1, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    invoke-interface {v8, v9}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 745
    iget-object v0, v1, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 746
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-interface {v0, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    .line 747
    .local v0, "embeddedView":Landroid/view/View;
    if-nez v0, :cond_4

    .line 748
    return-object v7

    .line 750
    :cond_4
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v3

    .line 751
    .local v3, "bounds":Landroid/graphics/Rect;
    iget-object v4, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-virtual {v4, v0, v5, v3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    return-object v4

    .line 755
    .end local v0    # "embeddedView":Landroid/view/View;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_5
    iget-object v7, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 756
    invoke-virtual {v1, v7, v2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityNodeInfo(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 760
    .local v7, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v1, v6}, Lio/flutter/view/AccessibilityBridge;->isImportant(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 763
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 764
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 765
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 767
    :cond_6
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 768
    const-string v9, "android.view.View"

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v7, v9, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 770
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 771
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v9, :cond_8

    .line 772
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    if-ne v9, v2, :cond_7

    move v9, v3

    goto :goto_0

    :cond_7
    move v9, v5

    :goto_0
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 775
    :cond_8
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v9, :cond_a

    .line 776
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    if-ne v9, v2, :cond_9

    move v9, v3

    goto :goto_1

    :cond_9
    move v9, v5

    :goto_1
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 779
    :cond_a
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 780
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Flag;->IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 781
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 782
    const-string v9, "android.widget.EditText"

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 784
    :cond_b
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v9

    xor-int/2addr v9, v3

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 785
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    if-eq v9, v4, :cond_c

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    if-eq v9, v4, :cond_c

    .line 786
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 791
    :cond_c
    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v9, :cond_d

    iget-object v9, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 792
    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    if-ne v9, v2, :cond_d

    .line 793
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 797
    :cond_d
    const/4 v9, 0x0

    .line 798
    .local v9, "granularities":I
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    const/16 v11, 0x100

    if-eqz v10, :cond_e

    .line 799
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 800
    or-int/lit8 v9, v9, 0x1

    .line 802
    :cond_e
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    const/16 v12, 0x200

    if-eqz v10, :cond_f

    .line 803
    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 804
    or-int/lit8 v9, v9, 0x1

    .line 806
    :cond_f
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 807
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 808
    or-int/lit8 v9, v9, 0x2

    .line 810
    :cond_10
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 811
    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 812
    or-int/lit8 v9, v9, 0x2

    .line 814
    :cond_11
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 815
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    if-ltz v10, :cond_13

    .line 818
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_12

    move v10, v5

    goto :goto_2

    :cond_12
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 819
    .local v10, "length":I
    :goto_2
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v11

    sub-int v11, v10, v11

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v12

    add-int/2addr v11, v12

    .line 820
    .local v11, "a":I
    nop

    .line 821
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v12

    sub-int v12, v10, v12

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    add-int/2addr v12, v13

    .line 820
    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 827
    .end local v9    # "granularities":I
    .end local v10    # "length":I
    .end local v11    # "a":I
    :cond_13
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 828
    const/high16 v9, 0x20000

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 830
    :cond_14
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 831
    const/16 v9, 0x4000

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 833
    :cond_15
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 834
    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 836
    :cond_16
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 837
    const v0, 0x8000

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 840
    :cond_17
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 841
    const/high16 v0, 0x200000

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 844
    :cond_18
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 845
    const-string v0, "android.widget.Button"

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 847
    :cond_19
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IMAGE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 848
    const-string v0, "android.widget.ImageView"

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 852
    :cond_1a
    invoke-static {}, Lio/flutter/view/AccessibilityBridge$Role;->values()[Lio/flutter/view/AccessibilityBridge$Role;

    move-result-object v0

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    aget-object v9, v0, v9

    .line 853
    .local v9, "role":Lio/flutter/view/AccessibilityBridge$Role;
    invoke-virtual {v9}, Lio/flutter/view/AccessibilityBridge$Role;->ordinal()I

    move-result v0

    const/4 v10, 0x3

    const/16 v11, 0x24

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 855
    :pswitch_0
    const-string v0, "android.widget.ProgressBar"

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 856
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 857
    const/high16 v12, -0x800000    # Float.NEGATIVE_INFINITY

    .line 858
    .local v12, "min":F
    const/high16 v13, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 859
    .local v13, "max":F
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 861
    :try_start_0
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 864
    goto :goto_3

    .line 862
    :catch_0
    move-exception v0

    .line 866
    :cond_1b
    :goto_3
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 868
    :try_start_1
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v13, v0

    .line 871
    goto :goto_4

    .line 869
    :catch_1
    move-exception v0

    .line 874
    :cond_1c
    :goto_4
    :try_start_2
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 875
    .local v0, "parsedValue":F
    nop

    .line 876
    invoke-static {v3, v12, v13, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v14

    .line 875
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 889
    .end local v0    # "parsedValue":F
    goto :goto_5

    .line 878
    :catch_2
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v15, 0x0

    if-lt v14, v11, :cond_1d

    .line 880
    nop

    .line 881
    invoke-static {v10, v15, v15, v15}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v14

    .line 880
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    goto :goto_5

    .line 885
    :cond_1d
    nop

    .line 886
    invoke-static {v3, v15, v15, v15}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v14

    .line 885
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 890
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "min":F
    .end local v13    # "max":F
    :goto_5
    nop

    .line 895
    :cond_1e
    :goto_6
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 896
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 897
    const/high16 v0, 0x100000

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 900
    :cond_1f
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    const-string v12, "AccessibilityBridge"

    if-eqz v0, :cond_21

    .line 901
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-gtz v0, :cond_20

    .line 902
    const-string v0, "Semantics node id is not > ROOT_NODE_ID."

    invoke-static {v12, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_20
    iget-object v0, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v13

    invoke-static {v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    invoke-virtual {v7, v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_7

    .line 906
    :cond_21
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 907
    const-string v0, "Semantics node id does not equal ROOT_NODE_ID."

    invoke-static {v12, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_22
    iget-object v0, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 912
    :goto_7
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-eq v0, v4, :cond_23

    .line 914
    iget-object v0, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    invoke-virtual {v7, v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 917
    :cond_23
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v0

    .line 918
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v13

    if-eqz v13, :cond_24

    .line 919
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v13

    invoke-static {v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v13

    .line 920
    .local v13, "parentBounds":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 921
    .local v14, "boundsInParent":Landroid/graphics/Rect;
    iget v15, v13, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    iget v10, v13, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    invoke-virtual {v14, v15, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 922
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 923
    .end local v13    # "parentBounds":Landroid/graphics/Rect;
    .end local v14    # "boundsInParent":Landroid/graphics/Rect;
    goto :goto_8

    .line 924
    :cond_24
    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 926
    :goto_8
    invoke-direct {v1, v0}, Lio/flutter/view/AccessibilityBridge;->getBoundsInScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 927
    .local v10, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v7, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 928
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 929
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 930
    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v13

    if-eqz v13, :cond_26

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v13

    if-eqz v13, :cond_25

    goto :goto_9

    :cond_25
    move v13, v5

    goto :goto_a

    :cond_26
    :goto_9
    move v13, v3

    .line 929
    :goto_a
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 932
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    const/16 v14, 0x10

    if-eqz v13, :cond_28

    .line 933
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v13

    if-eqz v13, :cond_27

    .line 934
    new-instance v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 936
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v15

    invoke-static {v15}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3300(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 934
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 937
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_b

    .line 939
    :cond_27
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 940
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_b

    .line 947
    :cond_28
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 948
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 949
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 952
    :cond_29
    :goto_b
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 953
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v13

    const/16 v14, 0x20

    if-eqz v13, :cond_2a

    .line 954
    new-instance v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 956
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v15

    invoke-static {v15}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3300(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 954
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 957
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_c

    .line 959
    :cond_2a
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 960
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 963
    :cond_2b
    :goto_c
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-nez v13, :cond_2c

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 964
    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-nez v13, :cond_2c

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 965
    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-nez v13, :cond_2c

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 966
    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 970
    :cond_2c
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 971
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 972
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-nez v13, :cond_2e

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 973
    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-eqz v13, :cond_2d

    goto :goto_d

    .line 976
    :cond_2d
    const-string v13, "android.widget.ScrollView"

    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 974
    :cond_2e
    :goto_d
    const-string v13, "android.widget.HorizontalScrollView"

    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 990
    :cond_2f
    :goto_e
    invoke-direct {v1, v6}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v13

    const/16 v14, 0x21

    if-eqz v13, :cond_34

    .line 991
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-nez v13, :cond_32

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 992
    invoke-static {v6, v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v13

    if-eqz v13, :cond_30

    goto :goto_f

    .line 1014
    :cond_30
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v14, :cond_31

    .line 1015
    nop

    .line 1017
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    .line 1016
    invoke-static {v13, v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v13

    .line 1015
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_10

    .line 1022
    :cond_31
    new-instance v13, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 1024
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v15

    invoke-direct {v13, v15, v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    .line 1022
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_10

    .line 995
    :cond_32
    :goto_f
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v14, :cond_33

    .line 996
    nop

    .line 999
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    .line 997
    invoke-static {v3, v13, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v13

    .line 996
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_10

    .line 1004
    :cond_33
    new-instance v13, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 1007
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v15

    invoke-direct {v13, v3, v15, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    .line 1004
    invoke-virtual {v7, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 1032
    :cond_34
    :goto_10
    invoke-direct {v1, v6}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionItemInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v13

    if-eqz v13, :cond_39

    .line 1033
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v13

    .line 1034
    .local v13, "parent":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v13}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v15

    .line 1035
    .local v15, "scrollChildren":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    sget-object v4, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1036
    invoke-static {v13, v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v4

    if-nez v4, :cond_35

    sget-object v4, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v13, v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v4

    if-nez v4, :cond_35

    move v4, v3

    goto :goto_11

    :cond_35
    move v4, v5

    .line 1037
    .local v4, "verticalScroll":Z
    :goto_11
    invoke-interface {v15, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 1038
    .local v11, "nodeIndex":I
    if-eqz v4, :cond_37

    .line 1041
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v14, :cond_36

    .line 1042
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1048
    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    .line 1043
    const/4 v14, 0x1

    invoke-static {v11, v14, v5, v14, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    .line 1042
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_12

    .line 1051
    :cond_36
    new-instance v16, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1057
    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v21

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v17, v11

    .end local v11    # "nodeIndex":I
    .local v17, "nodeIndex":I
    invoke-direct/range {v16 .. v21}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZ)V

    .line 1051
    move-object/from16 v11, v16

    move/from16 v3, v17

    .end local v17    # "nodeIndex":I
    .local v3, "nodeIndex":I
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_12

    .line 1063
    .end local v3    # "nodeIndex":I
    .restart local v11    # "nodeIndex":I
    :cond_37
    move v3, v11

    .end local v11    # "nodeIndex":I
    .restart local v3    # "nodeIndex":I
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v14, :cond_38

    .line 1064
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1070
    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    .line 1065
    const/4 v14, 0x1

    invoke-static {v5, v14, v3, v14, v11}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v11

    .line 1064
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_12

    .line 1073
    :cond_38
    new-instance v16, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1079
    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v21

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x1

    move/from16 v19, v3

    .end local v3    # "nodeIndex":I
    .local v19, "nodeIndex":I
    invoke-direct/range {v16 .. v21}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZ)V

    .line 1073
    move-object/from16 v3, v16

    move/from16 v17, v19

    .end local v19    # "nodeIndex":I
    .restart local v17    # "nodeIndex":I
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 1087
    .end local v4    # "verticalScroll":Z
    .end local v13    # "parent":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .end local v15    # "scrollChildren":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v17    # "nodeIndex":I
    :cond_39
    :goto_12
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    const/16 v4, 0x1000

    if-nez v3, :cond_3a

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1088
    :cond_3a
    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1090
    :cond_3b
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    const/16 v11, 0x2000

    if-nez v3, :cond_3c

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1091
    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1092
    :cond_3c
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1094
    :cond_3d
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    if-nez v3, :cond_3e

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1097
    :cond_3e
    const-string v3, "android.widget.SeekBar"

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1098
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1099
    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1101
    :cond_3f
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1102
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1105
    :cond_40
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1106
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    goto :goto_13

    .line 1105
    :cond_41
    const/4 v14, 0x1

    .line 1111
    :goto_13
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    const/16 v4, 0x1c

    if-eqz v3, :cond_42

    .line 1112
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_45

    .line 1114
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1116
    :cond_42
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1117
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1118
    .local v3, "content":Ljava/lang/CharSequence;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v4, :cond_44

    .line 1119
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_44

    .line 1122
    if-eqz v3, :cond_43

    move-object v8, v3

    .line 1123
    .end local v3    # "content":Ljava/lang/CharSequence;
    .local v8, "content":Ljava/lang/CharSequence;
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .end local v8    # "content":Ljava/lang/CharSequence;
    .restart local v3    # "content":Ljava/lang/CharSequence;
    :cond_44
    if-eqz v3, :cond_45

    .line 1127
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1131
    .end local v3    # "content":Ljava/lang/CharSequence;
    :cond_45
    :goto_14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_46

    .line 1132
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 1133
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_46

    .line 1141
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_46
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    .line 1147
    .local v3, "hasCheckedState":Z
    sget-object v8, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v8}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v8

    .line 1148
    .local v8, "hasToggledState":Z
    if-eqz v3, :cond_47

    if-eqz v8, :cond_47

    .line 1149
    const-string v11, "Expected semanticsNode to have checked state and toggled state."

    invoke-static {v12, v11}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_47
    if-nez v3, :cond_49

    if-eqz v8, :cond_48

    goto :goto_15

    :cond_48
    move v11, v5

    goto :goto_16

    :cond_49
    :goto_15
    move v11, v14

    :goto_16
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1152
    if-eqz v3, :cond_4e

    .line 1153
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 1154
    const-string v11, "android.widget.RadioButton"

    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1156
    :cond_4a
    const-string v11, "android.widget.CheckBox"

    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1159
    :goto_17
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x24

    if-lt v11, v12, :cond_4d

    .line 1160
    nop

    .line 1161
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECK_STATE_MIXED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 1162
    const/4 v11, 0x2

    goto :goto_18

    .line 1163
    :cond_4b
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 1164
    move v11, v14

    goto :goto_18

    .line 1165
    :cond_4c
    move v11, v5

    .line 1160
    :goto_18
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(I)V

    goto :goto_1a

    .line 1167
    :cond_4d
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_1a

    .line 1169
    :cond_4e
    if-eqz v8, :cond_51

    .line 1170
    const-string v11, "android.widget.Switch"

    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1172
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x24

    if-lt v11, v12, :cond_50

    .line 1173
    nop

    .line 1174
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 1175
    move v11, v14

    goto :goto_19

    .line 1176
    :cond_4f
    move v11, v5

    .line 1173
    :goto_19
    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(I)V

    goto :goto_1a

    .line 1178
    :cond_50
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1181
    :cond_51
    :goto_1a
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1182
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x24

    if-lt v11, v12, :cond_54

    .line 1183
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_EXPANDED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 1184
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Flag;->IS_EXPANDED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v6, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v11

    .line 1185
    .local v11, "isExpanded":Z
    nop

    .line 1186
    if-eqz v11, :cond_52

    .line 1187
    const/4 v12, 0x3

    goto :goto_1b

    .line 1188
    :cond_52
    move v12, v14

    .line 1185
    :goto_1b
    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExpandedState(I)V

    .line 1189
    sget-object v12, Lio/flutter/view/AccessibilityBridge$Action;->EXPAND:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 1190
    const/high16 v12, 0x40000

    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1192
    :cond_53
    sget-object v12, Lio/flutter/view/AccessibilityBridge$Action;->COLLAPSE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v6, v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v12

    if-eqz v12, :cond_54

    .line 1193
    const/high16 v12, 0x80000

    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1199
    .end local v11    # "isExpanded":Z
    :cond_54
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v4, :cond_56

    .line 1200
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-lez v4, :cond_55

    goto :goto_1c

    :cond_55
    move v14, v5

    :goto_1c
    invoke-virtual {v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 1204
    :cond_56
    iget-object v4, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v4, :cond_57

    iget-object v4, v1, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1205
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-ne v4, v2, :cond_57

    .line 1206
    const/16 v4, 0x80

    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1d

    .line 1208
    :cond_57
    const/16 v4, 0x40

    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1212
    :goto_1d
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1213
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 1214
    .local v11, "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    new-instance v12, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1215
    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v13

    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4300(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1214
    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1216
    .end local v11    # "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    goto :goto_1e

    .line 1219
    :cond_58
    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1220
    .local v11, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    sget-object v12, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v11, v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 1221
    goto :goto_1f

    .line 1223
    :cond_59
    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5a

    .line 1224
    iget-object v12, v1, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1225
    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-interface {v12, v14}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1234
    .local v12, "embeddedView":Landroid/view/View;
    iget-object v14, v1, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v15

    invoke-interface {v14, v15}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(I)Z

    move-result v14

    if-nez v14, :cond_5a

    .line 1235
    if-eqz v12, :cond_5a

    .line 1238
    invoke-virtual {v12, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1239
    invoke-virtual {v7, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 1240
    goto :goto_1f

    .line 1244
    .end local v12    # "embeddedView":Landroid/view/View;
    :cond_5a
    iget-object v12, v1, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-virtual {v7, v12, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 1245
    .end local v11    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    goto :goto_1f

    .line 1246
    :cond_5b
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public externalViewRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "embeddedView"    # Landroid/view/View;
    .param p2, "eventOrigin"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3230
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3232
    return v1

    .line 3234
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object v0

    .line 3235
    .local v0, "virtualNodeId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 3236
    return v1

    .line 3238
    :cond_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 3247
    :sswitch_0
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    .line 3248
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 3249
    goto :goto_0

    .line 3243
    :sswitch_1
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 3244
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 3245
    goto :goto_0

    .line 3240
    :sswitch_2
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 3241
    goto :goto_0

    .line 3251
    :sswitch_3
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    .line 3252
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 3255
    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x80 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "focus"    # I

    .line 1670
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1673
    :pswitch_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1677
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1683
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_2

    .line 1684
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1686
    :cond_2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1687
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1691
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibleNavigation()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibleNavigation:Z

    return v0
.end method

.method public getHoveredObjectId()I
    .locals 1

    .line 266
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    return v0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "eventType"    # I

    .line 2224
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method public obtainAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .line 675
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public obtainAccessibilityNodeInfo(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I

    .line 680
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->onAccessibilityHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onAccessibilityHoverEvent(Landroid/view/MotionEvent;Z)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "ignorePlatformViews"    # Z

    .line 1774
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1775
    return v1

    .line 1777
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    return v1

    .line 1781
    :cond_1
    nop

    .line 1782
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    .line 1783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [F

    aput v2, v4, v1

    const/4 v2, 0x1

    aput v3, v4, v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    aput v3, v4, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    aput v3, v4, v5

    invoke-static {v0, v4, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FZ)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    .line 1786
    .local v0, "semanticsNodeUnderCursor":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    if-eqz v0, :cond_3

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1787
    if-eqz p2, :cond_2

    .line 1788
    return v1

    .line 1790
    :cond_2
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 1791
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    .line 1790
    invoke-virtual {v1, v2, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1794
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_6

    .line 1795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 1797
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    .line 1798
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->onTouchExplorationExit()V

    goto :goto_1

    .line 1800
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected accessibility hover event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flutter"

    invoke-static {v3, v2}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    return v1

    .line 1796
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v3, p2}, Lio/flutter/view/AccessibilityBridge;->handleTouchExploration(FFZ)V

    .line 1803
    :goto_1
    return v2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "virtualViewId"    # I
    .param p2, "accessibilityAction"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1292
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_1

    .line 1295
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 1296
    invoke-virtual {v1, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result v1

    .line 1297
    .local v1, "didPerform":Z
    if-eqz v1, :cond_0

    const/16 v2, 0x80

    if-ne p2, v2, :cond_0

    .line 1299
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1301
    :cond_0
    return v1

    .line 1303
    .end local v1    # "didPerform":Z
    :cond_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1304
    .local v2, "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1305
    return v3

    .line 1307
    :cond_2
    const/4 v4, 0x4

    const/4 v5, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 1488
    sget v0, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    sub-int v0, p2, v0

    .line 1489
    .local v0, "flutterId":I
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 1490
    .local v1, "contextAction":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    if-eqz v1, :cond_10

    .line 1491
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v4, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1492
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$5000(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1491
    invoke-virtual {v3, p1, v4, v6}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1493
    return v5

    .line 1419
    .end local v0    # "flutterId":I
    .end local v1    # "contextAction":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    :sswitch_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1420
    return v5

    .line 1474
    :sswitch_1
    invoke-direct {p0, v2, p1, p3}, Lio/flutter/view/AccessibilityBridge;->performSetText(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 1469
    :sswitch_2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1470
    return v5

    .line 1483
    :sswitch_3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->COLLAPSE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1484
    return v5

    .line 1478
    :sswitch_4
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->EXPAND:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1479
    return v5

    .line 1424
    :sswitch_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1425
    .local v0, "selection":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    const-string v4, "ACTION_ARGUMENT_SELECTION_START_INT"

    if-eqz p3, :cond_3

    .line 1427
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1429
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    nop

    .line 1430
    .local v3, "hasSelection":Z
    :goto_0
    const-string v6, "extent"

    const-string v7, "base"

    if-eqz v3, :cond_4

    .line 1431
    nop

    .line 1433
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1431
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    nop

    .line 1436
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1434
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1439
    :cond_4
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    :goto_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v4, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v1, p1, v4, v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1447
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1448
    .local v1, "node":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1449
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1450
    return v5

    .line 1459
    .end local v0    # "selection":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "node":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .end local v3    # "hasSelection":Z
    :sswitch_6
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1460
    return v5

    .line 1464
    :sswitch_7
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1465
    return v5

    .line 1454
    :sswitch_8
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1455
    return v5

    .line 1344
    :sswitch_9
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1345
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 1346
    :cond_5
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1348
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 1349
    :cond_6
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1350
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2502(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 1351
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 1353
    invoke-virtual {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1354
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1358
    :goto_2
    return v5

    .line 1356
    :cond_7
    return v3

    .line 1326
    :sswitch_a
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1327
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_3

    .line 1328
    :cond_8
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1330
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_3

    .line 1331
    :cond_9
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1332
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2502(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 1335
    invoke-virtual {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1336
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1340
    :goto_3
    return v5

    .line 1338
    :cond_a
    return v3

    .line 1362
    :sswitch_b
    invoke-direct {p0, v2, p1, p3, v3}, Lio/flutter/view/AccessibilityBridge;->performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0

    .line 1366
    :sswitch_c
    invoke-direct {p0, v2, p1, p3, v5}, Lio/flutter/view/AccessibilityBridge;->performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0

    .line 1373
    :sswitch_d
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1374
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 1375
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1377
    :cond_b
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1378
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_c

    .line 1379
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1381
    :cond_c
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1383
    invoke-virtual {p0, p1, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1385
    return v5

    .line 1389
    :sswitch_e
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez v0, :cond_d

    .line 1393
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1397
    :cond_d
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1399
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1403
    .local v0, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "type"

    const-string v3, "didGainFocus"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "nodeId"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    .line 1407
    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1409
    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1410
    invoke-static {v2, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1412
    :cond_e
    invoke-virtual {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1415
    :cond_f
    return v5

    .line 1321
    .end local v0    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_f
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1322
    return v5

    .line 1313
    :sswitch_10
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p1, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1314
    return v5

    .line 1496
    :cond_10
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_10
        0x20 -> :sswitch_f
        0x40 -> :sswitch_e
        0x80 -> :sswitch_d
        0x100 -> :sswitch_c
        0x200 -> :sswitch_b
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_9
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_7
        0x10000 -> :sswitch_6
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_4
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    .line 601
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->detachAccessibilityBridge()V

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 603
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 604
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 606
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 607
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    .line 608
    return-void
.end method

.method public reset()V
    .locals 2

    .line 2319
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2320
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2322
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 2321
    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 2325
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2326
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2327
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(II)V

    .line 2328
    return-void
.end method

.method public sendAccessibilityEvent(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "eventType"    # I

    .line 2130
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2131
    return-void

    .line 2133
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2134
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->defaultLocale:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 625
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 626
    return-void
.end method

.method updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "strings"    # [Ljava/lang/String;

    .line 1859
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1861
    .local v0, "id":I
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v1

    .line 1862
    .local v1, "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$5202(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1863
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->getStringFromBuffer(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4302(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1864
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->getStringFromBuffer(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3302(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1865
    .end local v0    # "id":I
    .end local v1    # "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    goto :goto_0

    .line 1866
    :cond_0
    return-void
.end method

.method updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 20
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "stringAttributeArgs"    # [Ljava/nio/ByteBuffer;

    .line 1879
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    .local v1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1881
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1882
    .local v2, "id":I
    invoke-direct {v0, v2}, Lio/flutter/view/AccessibilityBridge;->getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v4

    .line 1883
    .local v4, "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static {v4, v5, v6, v7}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    .line 1884
    sget-object v8, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v4, v8}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1885
    goto :goto_0

    .line 1887
    :cond_0
    sget-object v8, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v4, v8}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1888
    iput-object v4, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1890
    :cond_1
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1891
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    :cond_2
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget-object v8, v0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1894
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    invoke-interface {v8, v9}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1895
    iget-object v8, v0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1896
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v9

    invoke-interface {v8, v9}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1897
    .local v8, "embeddedView":Landroid/view/View;
    if-eqz v8, :cond_3

    .line 1898
    invoke-virtual {v8, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1901
    .end local v2    # "id":I
    .end local v4    # "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .end local v8    # "embeddedView":Landroid/view/View;
    :cond_3
    goto :goto_0

    .line 1903
    :cond_4
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1904
    .local v2, "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    invoke-direct {v0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v4

    .line 1905
    .local v4, "rootObject":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1906
    .local v8, "newRoutes":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    if-eqz v4, :cond_5

    .line 1907
    const/16 v9, 0x10

    new-array v9, v9, [F

    .line 1908
    .local v9, "identity":[F
    invoke-static {v9, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1909
    invoke-static {v4, v9, v2, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FLjava/util/Set;Z)V

    .line 1910
    invoke-static {v4, v8}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)V

    .line 1917
    .end local v9    # "identity":[F
    :cond_5
    const/4 v9, 0x0

    .line 1918
    .local v9, "lastAdded":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1919
    .local v11, "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    iget-object v12, v0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-static {v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1920
    move-object v9, v11

    .line 1922
    .end local v11    # "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    :cond_6
    goto :goto_1

    .line 1925
    :cond_7
    const/4 v10, 0x1

    if-nez v9, :cond_8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1926
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1936
    :cond_8
    if-eqz v9, :cond_a

    .line 1937
    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v11

    iget v12, v0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    if-ne v11, v12, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, v0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v11, v12, :cond_a

    .line 1938
    :cond_9
    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v11

    iput v11, v0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    .line 1939
    invoke-direct {v0, v9}, Lio/flutter/view/AccessibilityBridge;->onWindowNameChange(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 1941
    :cond_a
    iget-object v11, v0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 1942
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1943
    .local v12, "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    iget-object v13, v0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    .end local v12    # "semanticsNode":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    goto :goto_2

    .line 1946
    :cond_b
    iget-object v11, v0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1947
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;>;"
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1948
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1949
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1950
    .local v13, "object":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 1951
    invoke-direct {v0, v13}, Lio/flutter/view/AccessibilityBridge;->willRemoveSemanticsNode(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 1952
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 1954
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v13    # "object":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    :cond_c
    goto :goto_3

    .line 1958
    :cond_d
    invoke-direct {v0, v3, v10}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(II)V

    .line 1960
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1961
    .local v12, "object":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1962
    nop

    .line 1963
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    const/16 v14, 0x1000

    invoke-direct {v0, v13, v14}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v13

    .line 1967
    .local v13, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v14

    .line 1968
    .local v14, "position":F
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v15

    .line 1969
    .local v15, "max":F
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1970
    const v15, 0x47c35000    # 100000.0f

    .line 1971
    const v16, 0x4788b800    # 70000.0f

    cmpl-float v16, v14, v16

    if-lez v16, :cond_e

    .line 1972
    const v14, 0x4788b800    # 70000.0f

    .line 1975
    :cond_e
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1976
    const v16, 0x47c35000    # 100000.0f

    add-float v15, v15, v16

    .line 1977
    const v17, -0x38774800    # -70000.0f

    cmpg-float v17, v14, v17

    if-gez v17, :cond_f

    .line 1978
    const v14, -0x38774800    # -70000.0f

    .line 1980
    :cond_f
    add-float v14, v14, v16

    goto :goto_5

    .line 1982
    :cond_10
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v16

    sub-float v15, v15, v16

    .line 1983
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v16

    sub-float v14, v14, v16

    .line 1986
    :goto_5
    move/from16 v16, v10

    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v12, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-nez v10, :cond_13

    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v12, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_6

    .line 1989
    :cond_11
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v12, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-nez v10, :cond_12

    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v12, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1990
    :cond_12
    float-to-int v10, v14

    invoke-virtual {v13, v10}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1991
    float-to-int v10, v15

    invoke-virtual {v13, v10}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_7

    .line 1987
    :cond_13
    :goto_6
    float-to-int v10, v14

    invoke-virtual {v13, v10}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1988
    float-to-int v10, v15

    invoke-virtual {v13, v10}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1993
    :cond_14
    :goto_7
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    if-lez v10, :cond_19

    .line 1995
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1996
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1997
    const/4 v10, 0x0

    .line 1999
    .local v10, "visibleChildren":I
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .local v19, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    move-object/from16 v1, v18

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2000
    .local v1, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    move-object/from16 v18, v2

    .end local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .local v18, "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    sget-object v2, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2001
    add-int/lit8 v10, v10, 0x1

    .line 2003
    .end local v1    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    :cond_15
    move-object/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_8

    .line 2005
    .end local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .local v1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :cond_16
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    .end local v1    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    move-object/from16 v17, v3

    const-string v3, "AccessibilityBridge"

    if-le v1, v2, :cond_17

    .line 2006
    const-string v1, "Scroll index is out of bounds."

    invoke-static {v3, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :cond_17
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2010
    const-string v1, "Had scrollChildren but no childrenInHitTestOrder"

    invoke-static {v3, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_18
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    add-int/2addr v1, v10

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v13, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_9

    .line 1993
    .end local v10    # "visibleChildren":I
    .end local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v1    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :cond_19
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 2023
    .end local v1    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :goto_9
    invoke-direct {v0, v13}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_a

    .line 1961
    .end local v13    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v14    # "position":F
    .end local v15    # "max":F
    .end local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v1    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :cond_1a
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v16, v10

    .line 2025
    .end local v1    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :goto_a
    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v12, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2026
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(II)V

    goto :goto_b

    .line 2025
    :cond_1b
    move/from16 v2, v16

    .line 2028
    :goto_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    const/16 v10, 0x2000

    if-lt v1, v3, :cond_1c

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2029
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-direct {v0, v1, v10}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(II)V

    .line 2031
    :cond_1c
    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2032
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-ne v1, v3, :cond_1d

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2033
    invoke-static {v12, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2034
    invoke-static {v12, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2035
    nop

    .line 2036
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2037
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2038
    invoke-direct {v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2043
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1d
    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2044
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-ne v1, v3, :cond_1f

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2046
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    iget-object v3, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-eq v1, v3, :cond_1f

    .line 2047
    :cond_1e
    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    iput-object v1, v0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2048
    nop

    .line 2049
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2048
    invoke-direct {v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_c

    .line 2050
    :cond_1f
    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez v1, :cond_20

    .line 2054
    const/4 v1, 0x0

    iput-object v1, v0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2057
    :cond_20
    :goto_c
    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2058
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-ne v1, v3, :cond_26

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2059
    invoke-static {v12, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2060
    invoke-static {v12, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2066
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    iget-object v3, v0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-ne v1, v3, :cond_26

    .line 2067
    :cond_21
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_22

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_22
    move-object v1, v3

    .line 2068
    .local v1, "oldValue":Ljava/lang/String;
    :goto_d
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_23

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v3

    .line 2069
    .local v3, "newValue":Ljava/lang/String;
    :cond_23
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v13

    invoke-direct {v0, v13, v1, v3}, Lio/flutter/view/AccessibilityBridge;->createTextChangedEvent(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v13

    .line 2070
    .restart local v13    # "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v13, :cond_24

    .line 2071
    invoke-direct {v0, v13}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2074
    :cond_24
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v15

    if-ne v14, v15, :cond_25

    .line 2075
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$7000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v15

    if-eq v14, v15, :cond_26

    .line 2076
    :cond_25
    nop

    .line 2078
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    .line 2077
    invoke-direct {v0, v14, v10}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v10

    .line 2079
    .local v10, "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2080
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2081
    invoke-static {v12}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2082
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2083
    invoke-direct {v0, v10}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2086
    .end local v1    # "oldValue":Ljava/lang/String;
    .end local v3    # "newValue":Ljava/lang/String;
    .end local v10    # "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v12    # "object":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .end local v13    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_26
    move v10, v2

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    goto/16 :goto_4

    .line 2087
    .end local v18    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .end local v19    # "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .local v1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    .restart local v2    # "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    :cond_27
    return-void
.end method
