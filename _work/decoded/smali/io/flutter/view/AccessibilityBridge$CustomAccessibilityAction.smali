.class Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAccessibilityAction"
.end annotation


# instance fields
.field private hint:Ljava/lang/String;

.field private id:I

.field private label:Ljava/lang/String;

.field private overrideId:I

.field private resourceId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2530
    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I

    .line 2535
    iput v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I

    .line 2540
    iput v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I

    .line 2525
    return-void
.end method

.method static synthetic access$3300(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 2524
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2524
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 2524
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I

    return v0
.end method

.method static synthetic access$4202(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .param p1, "x1"    # I

    .line 2524
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I

    return p1
.end method

.method static synthetic access$4300(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 2524
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2524
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->label:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5000(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 2524
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I

    return v0
.end method

.method static synthetic access$5002(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .param p1, "x1"    # I

    .line 2524
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I

    return p1
.end method

.method static synthetic access$5200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 2524
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I

    return v0
.end method

.method static synthetic access$5202(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .param p1, "x1"    # I

    .line 2524
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I

    return p1
.end method
