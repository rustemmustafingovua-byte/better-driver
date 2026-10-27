.class final enum Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AccessibilityFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum BOLD_TEXT:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum DETERMINISTIC_CURSOR:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum HIGH_CONTRAST:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum INVERT_COLORS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum NO_ANNOUNCE:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum NO_AUTO_PLAY_ANIMATED_IMAGES:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum NO_AUTO_PLAY_VIDEOS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum ON_OFF_SWITCH_LABELS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum REDUCE_MOTION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;


# instance fields
.field final value:I


# direct methods
.method private static synthetic $values()[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
    .locals 11

    .line 2471
    sget-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->INVERT_COLORS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v2, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v3, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->BOLD_TEXT:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v4, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->REDUCE_MOTION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v5, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->HIGH_CONTRAST:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v6, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ON_OFF_SWITCH_LABELS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v7, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_ANNOUNCE:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v8, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_AUTO_PLAY_ANIMATED_IMAGES:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v9, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_AUTO_PLAY_VIDEOS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    sget-object v10, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DETERMINISTIC_CURSOR:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    filled-new-array/range {v0 .. v10}, [Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 2472
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "ACCESSIBLE_NAVIGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2473
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "INVERT_COLORS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->INVERT_COLORS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2474
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "DISABLE_ANIMATIONS"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2475
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "BOLD_TEXT"

    const/4 v2, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->BOLD_TEXT:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2476
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "REDUCE_MOTION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->REDUCE_MOTION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2477
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "HIGH_CONTRAST"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->HIGH_CONTRAST:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2478
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const/4 v1, 0x6

    const/16 v2, 0x40

    const-string v3, "ON_OFF_SWITCH_LABELS"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ON_OFF_SWITCH_LABELS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2479
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const/4 v1, 0x7

    const/16 v2, 0x80

    const-string v3, "NO_ANNOUNCE"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_ANNOUNCE:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2480
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "NO_AUTO_PLAY_ANIMATED_IMAGES"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_AUTO_PLAY_ANIMATED_IMAGES:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2481
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const/16 v1, 0x9

    const/16 v2, 0x200

    const-string v3, "NO_AUTO_PLAY_VIDEOS"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->NO_AUTO_PLAY_VIDEOS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2482
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const/16 v1, 0xa

    const/16 v2, 0x400

    const-string v3, "DETERMINISTIC_CURSOR"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DETERMINISTIC_CURSOR:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2471
    invoke-static {}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->$values()[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    move-result-object v0

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->$VALUES:[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2486
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2487
    iput p3, p0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    .line 2488
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2471
    const-class v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    return-object v0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
    .locals 1

    .line 2471
    sget-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->$VALUES:[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    return-object v0
.end method
