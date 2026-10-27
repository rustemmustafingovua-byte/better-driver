.class public Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;
.super Ljava/lang/Object;
.source "PlatformViewTouch.java"


# instance fields
.field public final action:I

.field public final buttonState:I

.field public final deviceId:I

.field public final downTime:Ljava/lang/Number;

.field public final edgeFlags:I

.field public final eventTime:Ljava/lang/Number;

.field public final flags:I

.field public final metaState:I

.field public final motionEventId:J

.field public final pointerCount:I

.field public final rawPointerCoords:Ljava/lang/Object;

.field public final rawPointerPropertiesList:Ljava/lang/Object;

.field public final source:I

.field public final viewId:I

.field public final xPrecision:F

.field public final yPrecision:F


# direct methods
.method public constructor <init>(ILjava/lang/Number;Ljava/lang/Number;IILjava/lang/Object;Ljava/lang/Object;IIFFIIIIJ)V
    .locals 16
    .param p1, "viewId"    # I
    .param p2, "downTime"    # Ljava/lang/Number;
    .param p3, "eventTime"    # Ljava/lang/Number;
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "rawPointerPropertiesList"    # Ljava/lang/Object;
    .param p7, "rawPointerCoords"    # Ljava/lang/Object;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I
    .param p16, "motionEventId"    # J

    .line 60
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    move/from16 v1, p1

    iput v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->viewId:I

    .line 62
    move-object/from16 v2, p2

    iput-object v2, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->downTime:Ljava/lang/Number;

    .line 63
    move-object/from16 v3, p3

    iput-object v3, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->eventTime:Ljava/lang/Number;

    .line 64
    move/from16 v4, p4

    iput v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->action:I

    .line 65
    move/from16 v5, p5

    iput v5, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    .line 66
    move-object/from16 v6, p6

    iput-object v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->rawPointerPropertiesList:Ljava/lang/Object;

    .line 67
    move-object/from16 v7, p7

    iput-object v7, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->rawPointerCoords:Ljava/lang/Object;

    .line 68
    move/from16 v8, p8

    iput v8, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->metaState:I

    .line 69
    move/from16 v9, p9

    iput v9, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->buttonState:I

    .line 70
    move/from16 v10, p10

    iput v10, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->xPrecision:F

    .line 71
    move/from16 v11, p11

    iput v11, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->yPrecision:F

    .line 72
    move/from16 v12, p12

    iput v12, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->deviceId:I

    .line 73
    move/from16 v13, p13

    iput v13, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->edgeFlags:I

    .line 74
    move/from16 v14, p14

    iput v14, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->source:I

    .line 75
    move/from16 v15, p15

    iput v15, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->flags:I

    .line 76
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->motionEventId:J

    .line 77
    return-void
.end method
