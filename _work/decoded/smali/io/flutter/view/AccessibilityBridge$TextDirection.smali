.class final enum Lio/flutter/view/AccessibilityBridge$TextDirection;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$TextDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$TextDirection;

.field public static final enum LTR:Lio/flutter/view/AccessibilityBridge$TextDirection;

.field public static final enum RTL:Lio/flutter/view/AccessibilityBridge$TextDirection;

.field public static final enum UNKNOWN:Lio/flutter/view/AccessibilityBridge$TextDirection;


# direct methods
.method private static synthetic $values()[Lio/flutter/view/AccessibilityBridge$TextDirection;
    .locals 3

    .line 2491
    sget-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->UNKNOWN:Lio/flutter/view/AccessibilityBridge$TextDirection;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$TextDirection;->LTR:Lio/flutter/view/AccessibilityBridge$TextDirection;

    sget-object v2, Lio/flutter/view/AccessibilityBridge$TextDirection;->RTL:Lio/flutter/view/AccessibilityBridge$TextDirection;

    filled-new-array {v0, v1, v2}, [Lio/flutter/view/AccessibilityBridge$TextDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2492
    new-instance v0, Lio/flutter/view/AccessibilityBridge$TextDirection;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->UNKNOWN:Lio/flutter/view/AccessibilityBridge$TextDirection;

    .line 2493
    new-instance v0, Lio/flutter/view/AccessibilityBridge$TextDirection;

    const-string v1, "LTR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->LTR:Lio/flutter/view/AccessibilityBridge$TextDirection;

    .line 2494
    new-instance v0, Lio/flutter/view/AccessibilityBridge$TextDirection;

    const-string v1, "RTL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->RTL:Lio/flutter/view/AccessibilityBridge$TextDirection;

    .line 2491
    invoke-static {}, Lio/flutter/view/AccessibilityBridge$TextDirection;->$values()[Lio/flutter/view/AccessibilityBridge$TextDirection;

    move-result-object v0

    sput-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->$VALUES:[Lio/flutter/view/AccessibilityBridge$TextDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 2491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lio/flutter/view/AccessibilityBridge$TextDirection;
    .locals 1
    .param p0, "value"    # I

    .line 2497
    packed-switch p0, :pswitch_data_0

    .line 2503
    sget-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->UNKNOWN:Lio/flutter/view/AccessibilityBridge$TextDirection;

    return-object v0

    .line 2501
    :pswitch_0
    sget-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->LTR:Lio/flutter/view/AccessibilityBridge$TextDirection;

    return-object v0

    .line 2499
    :pswitch_1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->RTL:Lio/flutter/view/AccessibilityBridge$TextDirection;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$TextDirection;
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

    .line 2491
    const-class v0, Lio/flutter/view/AccessibilityBridge$TextDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$TextDirection;

    return-object v0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$TextDirection;
    .locals 1

    .line 2491
    sget-object v0, Lio/flutter/view/AccessibilityBridge$TextDirection;->$VALUES:[Lio/flutter/view/AccessibilityBridge$TextDirection;

    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$TextDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$TextDirection;

    return-object v0
.end method
