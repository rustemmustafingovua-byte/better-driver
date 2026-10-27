.class Lio/flutter/view/AccessibilityBridge$SemanticsNode;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemanticsNode"
.end annotation


# instance fields
.field final accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

.field private actions:I

.field private bottom:F

.field private childrenInHitTestOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private childrenInTraversalOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private currentValueLength:I

.field private customAccessibilityActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private decreasedValue:Ljava/lang/String;

.field private decreasedValueAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private flags:J

.field private globalGeometryDirty:Z

.field private globalRect:Landroid/graphics/Rect;

.field private globalTransform:[F

.field private hadPreviousConfig:Z

.field private headingLevel:I

.field private hint:Ljava/lang/String;

.field private hintAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private hitTestTransform:[F

.field private id:I

.field private identifier:Ljava/lang/String;

.field private increasedValue:Ljava/lang/String;

.field private increasedValueAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private inverseTransform:[F

.field private inverseTransformDirty:Z

.field private label:Ljava/lang/String;

.field private labelAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private left:F

.field private linkUrl:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxValue:Ljava/lang/String;

.field private maxValueLength:I

.field private minValue:Ljava/lang/String;

.field private onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

.field private onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

.field private parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private platformViewId:I

.field private previousActions:I

.field private previousFlags:J

.field private previousLabel:Ljava/lang/String;

.field private previousNodeId:I

.field private previousScrollExtentMax:F

.field private previousScrollExtentMin:F

.field private previousScrollPosition:F

.field private previousTextSelectionBase:I

.field private previousTextSelectionExtent:I

.field private previousValue:Ljava/lang/String;

.field private right:F

.field private role:I

.field private scrollChildren:I

.field private scrollExtentMax:F

.field private scrollExtentMin:F

.field private scrollIndex:I

.field private scrollPosition:F

.field private textDirection:Lio/flutter/view/AccessibilityBridge$TextDirection;

.field private textSelectionBase:I

.field private textSelectionExtent:I

.field private tooltip:Ljava/lang/String;

.field private top:F

.field private transform:[F

.field private traversalParent:I

.field private value:Ljava/lang/String;

.field private valueAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1
    .param p1, "accessibilityBridge"    # Lio/flutter/view/AccessibilityBridge;

    .line 2667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2571
    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    .line 2630
    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I

    .line 2635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    .line 2654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    .line 2655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    .line 2660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    .line 2663
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    .line 2668
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 2669
    return-void
.end method

.method static synthetic access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    return v0
.end method

.method static synthetic access$002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # I

    .line 2562
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    return p1
.end method

.method static synthetic access$1300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I

    return v0
.end method

.method static synthetic access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Ljava/util/function/Predicate;

    .line 2562
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->nullableHasAncestor(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object v0
.end method

.method static synthetic access$1502(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object p1
.end method

.method static synthetic access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2562
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I

    return v0
.end method

.method static synthetic access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getGlobalRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->isFocusable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    return v0
.end method

.method static synthetic access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # I

    .line 2562
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    return p1
.end method

.method static synthetic access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return v0
.end method

.method static synthetic access$2202(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # I

    .line 2562
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return p1
.end method

.method static synthetic access$2212(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # I

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return v0
.end method

.method static synthetic access$2220(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # I

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return v0
.end method

.method static synthetic access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Lio/flutter/view/AccessibilityBridge$Action;

    .line 2562
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I

    return v0
.end method

.method static synthetic access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2562
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->currentValueLength:I

    return v0
.end method

.method static synthetic access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->shouldBeTreatedAsButton()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->role:I

    return v0
.end method

.method static synthetic access$2900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->minValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I

    return v0
.end method

.method static synthetic access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    return-object v0
.end method

.method static synthetic access$3400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    return-object v0
.end method

.method static synthetic access$3500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getTextFieldHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getValueLabelHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->headingLevel:I

    return v0
.end method

.method static synthetic access$4100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    return v0
.end method

.method static synthetic access$4500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Ljava/util/List;

    .line 2562
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValueAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValueAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FZ)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # [F
    .param p2, "x2"    # Z

    .line 2562
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTest([FZ)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/nio/ByteBuffer;

    .line 2562
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateWith(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    return v0
.end method

.method static synthetic access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FLjava/util/Set;Z)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # [F
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # Z

    .line 2562
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateRecursively([FLjava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Ljava/util/List;

    .line 2562
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->collectRoutes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didScroll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    return v0
.end method

.method static synthetic access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F

    return v0
.end method

.method static synthetic access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F

    return v0
.end method

.method static synthetic access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Lio/flutter/view/AccessibilityBridge$Action;

    .line 2562
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollIndex:I

    return v0
.end method

.method static synthetic access$6300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didChangeLabel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didChangeCheckedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .param p1, "x1"    # Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2562
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionBase:I

    return v0
.end method

.method static synthetic access$7000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionExtent:I

    return v0
.end method

.method static synthetic access$7100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2562
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getRouteName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private collectRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;)V"
        }
    .end annotation

    .line 3023
    .local p1, "edges":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3026
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 3027
    .local v1, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-direct {v1, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->collectRoutes(Ljava/util/List;)V

    .line 3028
    .end local v1    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    goto :goto_0

    .line 3029
    :cond_1
    return-void
.end method

.method private didChangeCheckedState()Z
    .locals 3

    .line 2741
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2742
    return v1

    .line 2744
    :cond_0
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECK_STATE_MIXED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2745
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECK_STATE_MIXED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2746
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 2744
    :cond_2
    return v1
.end method

.method private didChangeLabel()Z
    .locals 3

    .line 2734
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2735
    return v1

    .line 2737
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private didScroll()Z
    .locals 2

    .line 2728
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollPosition:F

    .line 2729
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollPosition:F

    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2728
    :goto_0
    return v0
.end method

.method private ensureInverseTransform()V
    .locals 3

    .line 2950
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    if-nez v0, :cond_0

    .line 2951
    return-void

    .line 2953
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    .line 2954
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    if-nez v1, :cond_1

    .line 2955
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    .line 2957
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTestTransform:[F

    invoke-static {v1, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2958
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2960
    :cond_2
    return-void
.end method

.method private getAncestor(Ljava/util/function/Predicate;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;)",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;"
        }
    .end annotation

    .line 2676
    .local p1, "tester":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2677
    .local v0, "nextAncestor":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 2678
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2679
    return-object v0

    .line 2681
    :cond_0
    iget-object v0, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    goto :goto_0

    .line 2683
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEffectiveLocale()Ljava/lang/String;
    .locals 1

    .line 3057
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->locale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->locale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3058
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->locale:Ljava/lang/String;

    return-object v0

    .line 3060
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$7800(Lio/flutter/view/AccessibilityBridge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGlobalRect()Landroid/graphics/Rect;
    .locals 2

    .line 2963
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    if-eqz v0, :cond_0

    .line 2964
    const-string v0, "AccessibilityBridge"

    const-string v1, "Attempted to getGlobalRect with a dirty geometry."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getHint()Ljava/lang/CharSequence;
    .locals 2

    .line 3172
    new-instance v0, Lio/flutter/view/AccessibilityStringBuilder;

    invoke-direct {v0}, Lio/flutter/view/AccessibilityStringBuilder;-><init>()V

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    .line 3173
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addString(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hintAttributes:Ljava/util/List;

    .line 3174
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addAttributes(Ljava/util/List;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    .line 3175
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getEffectiveLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addLocale(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    .line 3176
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityStringBuilder;->build()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3172
    return-object v0
.end method

.method private getLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 3163
    new-instance v0, Lio/flutter/view/AccessibilityStringBuilder;

    invoke-direct {v0}, Lio/flutter/view/AccessibilityStringBuilder;-><init>()V

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    .line 3164
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addString(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->labelAttributes:Ljava/util/List;

    .line 3165
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addAttributes(Ljava/util/List;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->linkUrl:Ljava/lang/String;

    .line 3166
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addUrl(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    .line 3167
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getEffectiveLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addLocale(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    .line 3168
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityStringBuilder;->build()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3163
    return-object v0
.end method

.method private getRouteName()Ljava/lang/String;
    .locals 4

    .line 3034
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->NAMES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3036
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    return-object v0

    .line 3039
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 3040
    .local v1, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-direct {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getRouteName()Ljava/lang/String;

    move-result-object v2

    .line 3041
    .local v2, "newName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3042
    return-object v2

    .line 3044
    .end local v1    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .end local v2    # "newName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3045
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "stringAttributeArgs"    # [Ljava/nio/ByteBuffer;
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

    .line 2909
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2910
    .local v0, "attributesCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2911
    const/4 v1, 0x0

    return-object v1

    .line 2913
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2914
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2915
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 2916
    .local v3, "start":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 2917
    .local v4, "end":I
    invoke-static {}, Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;->values()[Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aget-object v5, v5, v6

    .line 2918
    .local v5, "type":Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;
    sget-object v6, Lio/flutter/view/AccessibilityBridge$5;->$SwitchMap$io$flutter$view$AccessibilityStringBuilder$StringAttributeType:[I

    invoke-virtual {v5}, Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 2932
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 2933
    .local v6, "argsIndex":I
    aget-object v7, p2, v6

    .line 2934
    .local v7, "args":Ljava/nio/ByteBuffer;
    new-instance v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;

    invoke-direct {v8}, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;-><init>()V

    .line 2935
    .local v8, "attribute":Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;
    iput v3, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->start:I

    .line 2936
    iput v4, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->end:I

    .line 2937
    iput-object v5, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->type:Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    .line 2938
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->locale:Ljava/lang/String;

    .line 2939
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2940
    goto :goto_1

    .line 2922
    .end local v6    # "argsIndex":I
    .end local v7    # "args":Ljava/nio/ByteBuffer;
    .end local v8    # "attribute":Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2923
    new-instance v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;

    invoke-direct {v6}, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;-><init>()V

    .line 2924
    .local v6, "attribute":Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;
    iput v3, v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;->start:I

    .line 2925
    iput v4, v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;->end:I

    .line 2926
    iput-object v5, v6, Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;->type:Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    .line 2927
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2928
    nop

    .line 2914
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "type":Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;
    .end local v6    # "attribute":Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2946
    .end local v2    # "i":I
    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextFieldHint()Ljava/lang/CharSequence;
    .locals 9

    .line 3195
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/CharSequence;

    move-result-object v0

    .line 3196
    .local v0, "array":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 3197
    .local v1, "result":Ljava/lang/CharSequence;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 3198
    .local v5, "word":Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3199
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 3202
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v1, v6, v3

    const-string v7, ", "

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 3200
    :cond_1
    :goto_1
    move-object v1, v5

    .line 3197
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3206
    :cond_3
    return-object v1
.end method

.method private getValue()Ljava/lang/CharSequence;
    .locals 2

    .line 3155
    new-instance v0, Lio/flutter/view/AccessibilityStringBuilder;

    invoke-direct {v0}, Lio/flutter/view/AccessibilityStringBuilder;-><init>()V

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    .line 3156
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addString(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;

    .line 3157
    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addAttributes(Ljava/util/List;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    .line 3158
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getEffectiveLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityStringBuilder;->addLocale(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;

    move-result-object v0

    .line 3159
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityStringBuilder;->build()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3155
    return-object v0
.end method

.method private getValueLabelHint()Ljava/lang/CharSequence;
    .locals 9

    .line 3180
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/CharSequence;

    move-result-object v0

    .line 3181
    .local v0, "array":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 3182
    .local v1, "result":Ljava/lang/CharSequence;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 3183
    .local v5, "word":Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3184
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 3187
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v1, v6, v3

    const-string v7, ", "

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 3185
    :cond_1
    :goto_1
    move-object v1, v5

    .line 3182
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3191
    :cond_3
    return-object v1
.end method

.method private hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 2
    .param p1, "action"    # Lio/flutter/view/AccessibilityBridge$Action;

    .line 2701
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousActions:I

    iget v1, p1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 4
    .param p1, "flag"    # Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2709
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    if-nez v0, :cond_0

    .line 2710
    const-string v0, "AccessibilityBridge"

    const-string v1, "Attempted to check hadFlag but had no previous config."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    :cond_0
    iget-wide v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousFlags:J

    iget v2, p1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 2
    .param p1, "action"    # Lio/flutter/view/AccessibilityBridge$Action;

    .line 2693
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    iget v1, p1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 4
    .param p1, "flag"    # Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2705
    iget-wide v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:J

    iget v2, p1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hitTest([FZ)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 16
    .param p1, "point"    # [F
    .param p2, "stopAtPlatformView"    # Z

    .line 2978
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x3

    aget v2, p1, v2

    .line 2979
    .local v2, "w":F
    const/4 v3, 0x0

    aget v4, p1, v3

    div-float/2addr v4, v2

    .line 2980
    .local v4, "x":F
    const/4 v5, 0x1

    aget v6, p1, v5

    div-float/2addr v6, v2

    .line 2981
    .local v6, "y":F
    iget v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    cmpg-float v7, v4, v7

    const/4 v8, 0x0

    if-ltz v7, :cond_7

    iget v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    cmpl-float v7, v4, v7

    if-gez v7, :cond_7

    iget v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_7

    iget v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    goto :goto_1

    .line 2982
    :cond_0
    const/4 v7, 0x4

    new-array v9, v7, [F

    .line 2983
    .local v9, "transformedPoint":[F
    iget-object v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2984
    .local v15, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {v15, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2985
    goto :goto_0

    .line 2987
    :cond_1
    invoke-direct {v15}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->ensureInverseTransform()V

    .line 2988
    iget-object v11, v15, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2989
    invoke-direct {v15, v9, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTest([FZ)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v10

    .line 2990
    .local v10, "result":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    if-eqz v10, :cond_2

    .line 2991
    return-object v10

    .line 2993
    .end local v10    # "result":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .end local v15    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    :cond_2
    goto :goto_0

    .line 2994
    :cond_3
    if-eqz v1, :cond_4

    iget v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    move v3, v5

    .line 2995
    .local v3, "foundPlatformView":Z
    :cond_4
    invoke-direct {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move-object v8, v0

    :cond_6
    return-object v8

    .line 2981
    .end local v3    # "foundPlatformView":Z
    .end local v9    # "transformedPoint":[F
    :cond_7
    :goto_1
    return-object v8
.end method

.method private isFocusable()Z
    .locals 7

    .line 3003
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3004
    return v1

    .line 3006
    :cond_0
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3007
    return v2

    .line 3009
    :cond_1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ACCESSIBILITY_FOCUS_BLOCKED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3010
    return v1

    .line 3015
    :cond_2
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    invoke-static {}, Lio/flutter/view/AccessibilityBridge;->access$7600()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_6

    iget-wide v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:J

    .line 3016
    invoke-static {}, Lio/flutter/view/AccessibilityBridge;->access$7700()I

    move-result v0

    int-to-long v5, v0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    .line 3017
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    .line 3018
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    .line 3019
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_1

    :cond_6
    :goto_0
    move v1, v2

    .line 3015
    :goto_1
    return v1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "recursive"    # Z

    .line 2751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SemanticsNode id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  +-- headingLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->headingLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  +-- textDirection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textDirection:Lio/flutter/view/AccessibilityBridge$TextDirection;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  +-- rect.ltrb=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  +-- transform="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    .line 2785
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2751
    const-string v1, "AccessibilityBridge"

    invoke-static {v1, v0}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    if-eqz p2, :cond_0

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2789
    .local v0, "childIndent":Ljava/lang/String;
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2790
    .local v2, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->log(Ljava/lang/String;Z)V

    .line 2791
    .end local v2    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    goto :goto_0

    .line 2794
    .end local v0    # "childIndent":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private max(FFFF)F
    .locals 1
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .line 3151
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private min(FFFF)F
    .locals 1
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .line 3147
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static nullableHasAncestor(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p0, "target"    # Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            "Ljava/util/function/Predicate<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;)Z"
        }
    .end annotation

    .line 2565
    .local p1, "tester":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getAncestor(Ljava/util/function/Predicate;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldBeTreatedAsButton()Z
    .locals 1

    .line 2716
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_BUTTON:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2717
    const/4 v0, 0x1

    return v0

    .line 2719
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->linkUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2721
    const/4 v0, 0x0

    return v0

    .line 2724
    :cond_1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LINK:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    return v0
.end method

.method private transformPoint([F[F[F)V
    .locals 6
    .param p1, "result"    # [F
    .param p2, "transform"    # [F
    .param p3, "point"    # [F

    .line 3138
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "result":[F
    .end local p2    # "transform":[F
    .end local p3    # "point":[F
    .local v0, "result":[F
    .local v2, "transform":[F
    .local v4, "point":[F
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3139
    const/4 p1, 0x3

    aget p2, v0, p1

    .line 3140
    .local p2, "w":F
    const/4 p3, 0x0

    aget v1, v0, p3

    div-float/2addr v1, p2

    aput v1, v0, p3

    .line 3141
    const/4 p3, 0x1

    aget v1, v0, p3

    div-float/2addr v1, p2

    aput v1, v0, p3

    .line 3142
    const/4 p3, 0x2

    aget v1, v0, p3

    div-float/2addr v1, p2

    aput v1, v0, p3

    .line 3143
    const/4 p3, 0x0

    aput p3, v0, p1

    .line 3144
    return-void
.end method

.method private updateRecursively([FLjava/util/Set;Z)V
    .locals 18
    .param p1, "ancestorTransform"    # [F
    .param p3, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/Set<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;Z)V"
        }
    .end annotation

    .line 3065
    .local p2, "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Lio/flutter/view/AccessibilityBridge$SemanticsNode;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3067
    iget-boolean v2, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    if-eqz v2, :cond_0

    .line 3068
    const/4 v2, 0x1

    .end local p3    # "forceUpdate":Z
    .local v2, "forceUpdate":Z
    goto :goto_0

    .line 3067
    .end local v2    # "forceUpdate":Z
    .restart local p3    # "forceUpdate":Z
    :cond_0
    move/from16 v2, p3

    .line 3071
    .end local p3    # "forceUpdate":Z
    .restart local v2    # "forceUpdate":Z
    :goto_0
    const-string v3, "AccessibilityBridge"

    if-eqz v2, :cond_4

    .line 3072
    iget-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    const/16 v5, 0x10

    if-nez v4, :cond_1

    .line 3073
    new-array v4, v5, [F

    iput-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    .line 3075
    :cond_1
    iget-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 3077
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform has not been initialized for id = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    iget-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge;->access$7900(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v4

    const-string v7, "Semantics tree:"

    invoke-direct {v4, v7, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->log(Ljava/lang/String;Z)V

    .line 3080
    new-array v4, v5, [F

    iput-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    .line 3082
    :cond_2
    iget-object v7, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    iget-object v11, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 3084
    const/4 v4, 0x4

    new-array v5, v4, [F

    .line 3085
    .local v5, "sample":[F
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v5, v7

    .line 3086
    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v7

    .line 3088
    new-array v7, v4, [F

    .line 3089
    .local v7, "point1":[F
    new-array v8, v4, [F

    .line 3090
    .local v8, "point2":[F
    new-array v9, v4, [F

    .line 3091
    .local v9, "point3":[F
    new-array v4, v4, [F

    .line 3093
    .local v4, "point4":[F
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    const/4 v11, 0x0

    aput v10, v5, v11

    .line 3094
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    aput v10, v5, v6

    .line 3095
    iget-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {v0, v7, v10, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 3097
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    aput v10, v5, v11

    .line 3098
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    aput v10, v5, v6

    .line 3099
    iget-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {v0, v8, v10, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 3101
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    aput v10, v5, v11

    .line 3102
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    aput v10, v5, v6

    .line 3103
    iget-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {v0, v9, v10, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 3105
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    aput v10, v5, v11

    .line 3106
    iget v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    aput v10, v5, v6

    .line 3107
    iget-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {v0, v4, v10, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 3109
    iget-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    if-nez v10, :cond_3

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    .line 3111
    :cond_3
    iget-object v10, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    aget v12, v7, v11

    aget v13, v8, v11

    aget v14, v9, v11

    aget v15, v4, v11

    .line 3112
    invoke-direct {v0, v12, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->min(FFFF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aget v13, v7, v6

    aget v14, v8, v6

    aget v15, v9, v6

    move/from16 p3, v6

    aget v6, v4, p3

    .line 3113
    invoke-direct {v0, v13, v14, v15, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->min(FFFF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aget v13, v7, v11

    aget v14, v8, v11

    aget v15, v9, v11

    move/from16 v16, v11

    aget v11, v4, v16

    .line 3114
    invoke-direct {v0, v13, v14, v15, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->max(FFFF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    aget v13, v7, p3

    aget v14, v8, p3

    aget v15, v9, p3

    move-object/from16 v17, v4

    .end local v4    # "point4":[F
    .local v17, "point4":[F
    aget v4, v17, p3

    .line 3115
    invoke-direct {v0, v13, v14, v15, v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->max(FFFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3111
    invoke-virtual {v10, v12, v6, v11, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3117
    move/from16 v4, v16

    iput-boolean v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    .line 3121
    .end local v5    # "sample":[F
    .end local v7    # "point1":[F
    .end local v8    # "point2":[F
    .end local v9    # "point3":[F
    .end local v17    # "point4":[F
    :cond_4
    iget-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    if-nez v4, :cond_5

    .line 3122
    const-string v4, "Expected globalTransform to not be null."

    invoke-static {v3, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    :cond_5
    iget-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    if-nez v4, :cond_6

    .line 3125
    const-string v4, "Expected globalRect to not be null."

    invoke-static {v3, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    :cond_6
    const/4 v3, -0x1

    .line 3130
    .local v3, "previousNodeId":I
    iget-object v4, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 3131
    .local v5, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    iput v3, v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I

    .line 3132
    iget v3, v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    .line 3133
    iget-object v6, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {v5, v6, v1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateRecursively([FLjava/util/Set;Z)V

    .line 3134
    .end local v5    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    goto :goto_1

    .line 3135
    :cond_7
    return-void
.end method

.method private updateWith(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "stringAttributeArgs"    # [Ljava/nio/ByteBuffer;

    .line 2800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    .line 2801
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousValue:Ljava/lang/String;

    .line 2802
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousLabel:Ljava/lang/String;

    .line 2803
    iget-wide v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:J

    iput-wide v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousFlags:J

    .line 2804
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousActions:I

    .line 2805
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionBase:I

    .line 2806
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionExtent:I

    .line 2807
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollPosition:F

    .line 2808
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollExtentMax:F

    .line 2809
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollExtentMin:F

    .line 2811
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:J

    .line 2812
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    .line 2813
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I

    .line 2814
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->currentValueLength:I

    .line 2815
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    .line 2816
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    .line 2817
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I

    .line 2818
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I

    .line 2819
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollIndex:I

    .line 2820
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->traversalParent:I

    .line 2821
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    .line 2822
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F

    .line 2823
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F

    .line 2824
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->role:I

    .line 2826
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->identifier:Ljava/lang/String;

    .line 2828
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    .line 2829
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->labelAttributes:Ljava/util/List;

    .line 2831
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    .line 2832
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;

    .line 2834
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValue:Ljava/lang/String;

    .line 2835
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValueAttributes:Ljava/util/List;

    .line 2837
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValue:Ljava/lang/String;

    .line 2838
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValueAttributes:Ljava/util/List;

    .line 2840
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    .line 2841
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hintAttributes:Ljava/util/List;

    .line 2843
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;

    .line 2844
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->linkUrl:Ljava/lang/String;

    .line 2845
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->locale:Ljava/lang/String;

    .line 2846
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->minValue:Ljava/lang/String;

    .line 2847
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge;->access$7200(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValue:Ljava/lang/String;

    .line 2849
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->headingLevel:I

    .line 2850
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$TextDirection;->fromInt(I)Lio/flutter/view/AccessibilityBridge$TextDirection;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textDirection:Lio/flutter/view/AccessibilityBridge$TextDirection;

    .line 2852
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    .line 2853
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    .line 2854
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    .line 2855
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    .line 2857
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge;->access$7300(Ljava/nio/ByteBuffer;[F)[F

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    .line 2858
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTestTransform:[F

    invoke-static {p1, v1}, Lio/flutter/view/AccessibilityBridge;->access$7300(Ljava/nio/ByteBuffer;[F)[F

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTestTransform:[F

    .line 2860
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    .line 2861
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    .line 2863
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2864
    .local v0, "traversalOrderChildCount":I
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2865
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2866
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v2, v3}, Lio/flutter/view/AccessibilityBridge;->access$7400(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v2

    .line 2867
    .local v2, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    iput-object p0, v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2868
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2865
    .end local v2    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2871
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 2872
    .local v1, "hitTestOrderChildCount":I
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2873
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2874
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v3, v4}, Lio/flutter/view/AccessibilityBridge;->access$7400(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v3

    .line 2875
    .local v3, "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    iput-object p0, v3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2876
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2873
    .end local v3    # "child":Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2879
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 2880
    .local v2, "actionCount":I
    if-nez v2, :cond_2

    .line 2881
    const/4 v3, 0x0

    iput-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    goto :goto_5

    .line 2883
    :cond_2
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    if-nez v3, :cond_3

    .line 2884
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    goto :goto_2

    .line 2885
    :cond_3
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2887
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_7

    .line 2888
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 2889
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v4, v5}, Lio/flutter/view/AccessibilityBridge;->access$7500(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v4

    .line 2890
    .local v4, "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$5200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v5

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v6, v6, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    if-ne v5, v6, :cond_4

    .line 2891
    iput-object v4, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    goto :goto_4

    .line 2892
    :cond_4
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$5200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v5

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    iget v6, v6, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    if-ne v5, v6, :cond_5

    .line 2893
    iput-object v4, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    goto :goto_4

    .line 2897
    :cond_5
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$5200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 2898
    const-string v5, "AccessibilityBridge"

    const-string v6, "Expected action.overrideId to be -1."

    invoke-static {v5, v6}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    :cond_6
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2902
    :goto_4
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2887
    .end local v4    # "action":Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2905
    .end local v3    # "i":I
    :cond_7
    :goto_5
    return-void
.end method
