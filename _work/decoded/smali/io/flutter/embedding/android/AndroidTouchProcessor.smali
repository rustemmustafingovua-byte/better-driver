.class public Lio/flutter/embedding/android/AndroidTouchProcessor;
.super Ljava/lang/Object;
.source "AndroidTouchProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/AndroidTouchProcessor$PointerChange;,
        Lio/flutter/embedding/android/AndroidTouchProcessor$PointerDeviceKind;,
        Lio/flutter/embedding/android/AndroidTouchProcessor$PointerSignalKind;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BYTES_PER_FIELD:I = 0x8

.field static final DEFAULT_HORIZONTAL_SCROLL_FACTOR:I = 0x30

.field static final DEFAULT_VERTICAL_SCROLL_FACTOR:I = 0x30

.field private static final IDENTITY_TRANSFORM:Landroid/graphics/Matrix;

.field private static final IMPLICIT_VIEW_ID:I = 0x0

.field static final POINTER_DATA_FIELD_COUNT:I = 0x24

.field private static final POINTER_DATA_FLAG_BATCHED:I = 0x1

.field private static final POINTER_DATA_FLAG_MULTIPLE:I = 0x2

.field private static final POINTER_DATA_MULTIPLE_POINTER_COUNT_SHIFT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AndroidTouchProcessor"

.field private static final TOOL_TYPE_BITS:I = 0x3

.field private static final TOOL_TYPE_MASK:I = 0x7


# instance fields
.field private cachedVerticalScrollFactor:I

.field private final motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

.field private final ongoingPans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private final renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final trackMotionEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    nop

    .line 125
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->IDENTITY_TRANSFORM:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V
    .locals 1
    .param p1, "renderer"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .param p2, "trackMotionEvents"    # Z

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->ongoingPans:Ljava/util/Map;

    .line 144
    iput-object p1, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 145
    invoke-static {}, Lio/flutter/embedding/android/MotionEventTracker;->getInstance()Lio/flutter/embedding/android/MotionEventTracker;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

    .line 146
    iput-boolean p2, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->trackMotionEvents:Z

    .line 147
    return-void
.end method

.method private addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "pointerChange"    # I
    .param p4, "pointerData"    # I
    .param p5, "transformMatrix"    # Landroid/graphics/Matrix;
    .param p6, "packet"    # Ljava/nio/ByteBuffer;

    .line 287
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "event":Landroid/view/MotionEvent;
    .end local p2    # "pointerIndex":I
    .end local p3    # "pointerChange":I
    .end local p4    # "pointerData":I
    .end local p5    # "transformMatrix":Landroid/graphics/Matrix;
    .end local p6    # "packet":Ljava/nio/ByteBuffer;
    .local v1, "event":Landroid/view/MotionEvent;
    .local v2, "pointerIndex":I
    .local v3, "pointerChange":I
    .local v4, "pointerData":I
    .local v5, "transformMatrix":Landroid/graphics/Matrix;
    .local v6, "packet":Ljava/nio/ByteBuffer;
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method private addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;Landroid/content/Context;)V
    .locals 33
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "pointerChange"    # I
    .param p4, "pointerData"    # I
    .param p5, "transformMatrix"    # Landroid/graphics/Matrix;
    .param p6, "packet"    # Ljava/nio/ByteBuffer;
    .param p7, "context"    # Landroid/content/Context;

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 314
    return-void

    .line 319
    :cond_0
    const/4 v7, 0x0

    .line 320
    .local v7, "viewId":I
    invoke-direct/range {p0 .. p2}, Lio/flutter/embedding/android/AndroidTouchProcessor;->uniquePointerIdByType(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 322
    .local v8, "pointerId":I
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    invoke-direct {v0, v9}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getPointerDeviceTypeForToolType(I)I

    move-result v9

    .line 325
    .local v9, "pointerKind":I
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/4 v12, 0x2

    new-array v13, v12, [F

    const/4 v14, 0x0

    aput v10, v13, v14

    const/4 v10, 0x1

    aput v11, v13, v10

    .line 326
    .local v13, "viewToScreenCoords":[F
    move-object/from16 v11, p5

    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 328
    const/4 v15, 0x4

    move/from16 v17, v7

    .end local v7    # "viewId":I
    .local v17, "viewId":I
    const-wide/16 v6, 0x0

    if-ne v9, v10, :cond_1

    .line 329
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    move/from16 v19, v14

    and-int/lit8 v14, v18, 0x1f

    move/from16 v18, v10

    int-to-long v10, v14

    .line 330
    .local v10, "buttons":J
    cmp-long v14, v10, v6

    if-nez v14, :cond_3

    .line 331
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    const/16 v6, 0x2002

    if-ne v14, v6, :cond_3

    if-ne v3, v15, :cond_3

    .line 336
    iget-object v6, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->ongoingPans:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    .end local v10    # "buttons":J
    :cond_1
    move/from16 v18, v10

    move/from16 v19, v14

    if-ne v9, v12, :cond_2

    .line 344
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    shr-int/2addr v6, v15

    and-int/lit8 v6, v6, 0xf

    int-to-long v10, v6

    .restart local v10    # "buttons":J
    goto :goto_0

    .line 346
    .end local v10    # "buttons":J
    :cond_2
    const-wide/16 v10, 0x0

    .line 349
    .restart local v10    # "buttons":J
    :cond_3
    :goto_0
    const/4 v6, -0x1

    .line 350
    .local v6, "panZoomType":I
    iget-object v7, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->ongoingPans:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 351
    .local v7, "isTrackpadPan":Z
    if-eqz v7, :cond_4

    .line 352
    invoke-direct {v0, v3}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getPointerChangeForPanZoom(I)I

    move-result v6

    .line 353
    const/4 v14, -0x1

    if-ne v6, v14, :cond_4

    .line 354
    return-void

    .line 358
    :cond_4
    const-wide/16 v14, 0x0

    .line 359
    .local v14, "motionEventId":J
    iget-boolean v12, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->trackMotionEvents:Z

    if-eqz v12, :cond_5

    .line 360
    iget-object v12, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

    invoke-virtual {v12, v1}, Lio/flutter/embedding/android/MotionEventTracker;->track(Landroid/view/MotionEvent;)Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;

    move-result-object v12

    .line 361
    .local v12, "trackedEvent":Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    invoke-virtual {v12}, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->getId()J

    move-result-wide v14

    .line 365
    .end local v12    # "trackedEvent":Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    move/from16 v20, v7

    .end local v7    # "isTrackpadPan":Z
    .local v20, "isTrackpadPan":Z
    const/16 v7, 0x8

    if-ne v12, v7, :cond_6

    .line 366
    move/from16 v12, v18

    goto :goto_1

    .line 367
    :cond_6
    move/from16 v12, v19

    :goto_1
    nop

    .line 369
    .local v12, "signalKind":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    move/from16 v25, v8

    .end local v8    # "pointerId":I
    .local v25, "pointerId":I
    mul-long v7, v21, v23

    .line 371
    .local v7, "timeStamp":J
    invoke-virtual {v4, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 373
    if-eqz v20, :cond_7

    .line 374
    move-wide/from16 v21, v7

    .end local v7    # "timeStamp":J
    .local v21, "timeStamp":J
    int-to-long v7, v6

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 375
    const-wide/16 v7, 0x4

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 377
    .end local v21    # "timeStamp":J
    .restart local v7    # "timeStamp":J
    :cond_7
    move-wide/from16 v21, v7

    .end local v7    # "timeStamp":J
    .restart local v21    # "timeStamp":J
    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 378
    int-to-long v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 380
    :goto_2
    int-to-long v7, v12

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 381
    move-object v8, v13

    move-wide/from16 v23, v14

    move/from16 v7, v25

    .end local v13    # "viewToScreenCoords":[F
    .end local v14    # "motionEventId":J
    .end local v25    # "pointerId":I
    .local v7, "pointerId":I
    .local v8, "viewToScreenCoords":[F
    .local v23, "motionEventId":J
    int-to-long v13, v7

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 382
    const-wide/16 v13, 0x0

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 384
    if-eqz v20, :cond_8

    .line 385
    iget-object v13, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->ongoingPans:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    .line 386
    .local v13, "panStart":[F
    aget v14, v13, v19

    float-to-double v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 387
    aget v14, v13, v18

    float-to-double v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 388
    .end local v13    # "panStart":[F
    goto :goto_3

    .line 389
    :cond_8
    aget v13, v8, v19

    float-to-double v13, v13

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 390
    aget v13, v8, v18

    float-to-double v13, v13

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 393
    :goto_3
    const-wide/16 v13, 0x0

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 395
    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {v4, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 400
    const-wide/16 v13, 0x0

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 404
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 405
    const-wide/16 v13, 0x0

    .line 406
    .local v13, "pressureMin":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 407
    .local v26, "pressureMax":D
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 408
    nop

    .line 409
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v15

    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v15

    .line 410
    .local v15, "pressureRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v15, :cond_9

    .line 411
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v3

    float-to-double v13, v3

    .line 412
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    move/from16 v25, v7

    move-object/from16 v28, v8

    .end local v7    # "pointerId":I
    .end local v8    # "viewToScreenCoords":[F
    .restart local v25    # "pointerId":I
    .local v28, "viewToScreenCoords":[F
    float-to-double v7, v3

    .end local v26    # "pressureMax":D
    .local v7, "pressureMax":D
    goto :goto_5

    .line 410
    .end local v25    # "pointerId":I
    .end local v28    # "viewToScreenCoords":[F
    .local v7, "pointerId":I
    .restart local v8    # "viewToScreenCoords":[F
    .restart local v26    # "pressureMax":D
    :cond_9
    move/from16 v25, v7

    move-object/from16 v28, v8

    .end local v7    # "pointerId":I
    .end local v8    # "viewToScreenCoords":[F
    .restart local v25    # "pointerId":I
    .restart local v28    # "viewToScreenCoords":[F
    goto :goto_4

    .line 407
    .end local v15    # "pressureRange":Landroid/view/InputDevice$MotionRange;
    .end local v25    # "pointerId":I
    .end local v28    # "viewToScreenCoords":[F
    .restart local v7    # "pointerId":I
    .restart local v8    # "viewToScreenCoords":[F
    :cond_a
    move/from16 v25, v7

    move-object/from16 v28, v8

    .line 415
    .end local v7    # "pointerId":I
    .end local v8    # "viewToScreenCoords":[F
    .restart local v25    # "pointerId":I
    .restart local v28    # "viewToScreenCoords":[F
    :goto_4
    move-wide/from16 v7, v26

    .end local v26    # "pressureMax":D
    .local v7, "pressureMax":D
    :goto_5
    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 416
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 418
    const/4 v3, 0x2

    if-ne v9, v3, :cond_b

    .line 419
    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    move-wide/from16 v26, v7

    .end local v7    # "pressureMax":D
    .restart local v26    # "pressureMax":D
    float-to-double v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 420
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 422
    .end local v26    # "pressureMax":D
    .restart local v7    # "pressureMax":D
    :cond_b
    move-wide/from16 v26, v7

    const-wide/16 v7, 0x0

    .end local v7    # "pressureMax":D
    .restart local v26    # "pressureMax":D
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 423
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 426
    :goto_6
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 429
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 431
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 432
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 434
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 436
    const/4 v3, 0x2

    if-ne v9, v3, :cond_c

    .line 437
    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 439
    :cond_c
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 442
    :goto_7
    move/from16 v3, p4

    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 446
    move/from16 v8, v18

    if-ne v12, v8, :cond_e

    .line 447
    const-wide/high16 v15, 0x4048000000000000L    # 48.0

    .line 448
    .local v15, "horizontalScaleFactor":D
    const-wide/high16 v29, 0x4048000000000000L    # 48.0

    .line 449
    .local v29, "verticalScaleFactor":D
    if-eqz v5, :cond_d

    .line 450
    invoke-direct {v0, v5}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getHorizontalScrollFactor(Landroid/content/Context;)F

    move-result v8

    float-to-double v7, v8

    .line 451
    .end local v15    # "horizontalScaleFactor":D
    .local v7, "horizontalScaleFactor":D
    invoke-direct {v0, v5}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getVerticalScrollFactor(Landroid/content/Context;)F

    move-result v15

    move-wide/from16 v31, v7

    .end local v7    # "horizontalScaleFactor":D
    .local v31, "horizontalScaleFactor":D
    float-to-double v7, v15

    move-wide/from16 v29, v7

    move-wide/from16 v15, v31

    .line 455
    .end local v31    # "horizontalScaleFactor":D
    .restart local v15    # "horizontalScaleFactor":D
    :cond_d
    nop

    .line 456
    const/16 v7, 0xa

    invoke-virtual {v1, v7, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v7

    neg-float v7, v7

    float-to-double v7, v7

    mul-double/2addr v7, v15

    .line 457
    .local v7, "horizontalScrollPixels":D
    nop

    .line 458
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v5

    neg-float v3, v5

    float-to-double v1, v3

    mul-double v1, v1, v29

    .line 459
    .local v1, "verticalScrollPixels":D
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 460
    invoke-virtual {v4, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 461
    .end local v1    # "verticalScrollPixels":D
    .end local v7    # "horizontalScrollPixels":D
    .end local v15    # "horizontalScaleFactor":D
    .end local v29    # "verticalScaleFactor":D
    goto :goto_8

    .line 462
    :cond_e
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 466
    :goto_8
    if-eqz v20, :cond_f

    .line 467
    iget-object v1, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->ongoingPans:Ljava/util/Map;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 468
    .local v1, "panStart":[F
    aget v2, v28, v19

    aget v3, v1, v19

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 469
    const/16 v18, 0x1

    aget v2, v28, v18

    aget v3, v1, v18

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 470
    .end local v1    # "panStart":[F
    const-wide/16 v7, 0x0

    goto :goto_9

    .line 471
    :cond_f
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 472
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 474
    :goto_9
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 476
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 478
    const-wide/16 v1, 0x0

    invoke-virtual {v4, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 480
    if-eqz v20, :cond_10

    const/16 v3, 0x9

    if-ne v6, v3, :cond_10

    .line 481
    iget-object v1, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->ongoingPans:Ljava/util/Map;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_10
    return-void
.end method

.method private getHorizontalScrollFactor(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 486
    nop

    .line 487
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method private getPointerChangeForAction(I)I
    .locals 3
    .param p1, "maskedAction"    # I

    .line 526
    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 527
    return v0

    .line 529
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v1, :cond_1

    .line 530
    return v2

    .line 533
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 534
    return v0

    .line 536
    :cond_2
    if-ne p1, v2, :cond_3

    .line 537
    return v2

    .line 540
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 541
    return v1

    .line 543
    :cond_4
    const/4 v0, 0x7

    const/4 v1, 0x3

    if-ne p1, v0, :cond_5

    .line 544
    return v1

    .line 546
    :cond_5
    if-ne p1, v1, :cond_6

    .line 547
    const/4 v0, 0x0

    return v0

    .line 549
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 550
    return v1

    .line 552
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private getPointerChangeForPanZoom(I)I
    .locals 1
    .param p1, "pointerChange"    # I

    .line 557
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 558
    const/4 v0, 0x7

    return v0

    .line 559
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 560
    const/16 v0, 0x8

    return v0

    .line 561
    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 564
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 562
    :cond_3
    :goto_0
    const/16 v0, 0x9

    return v0
.end method

.method private getPointerDeviceTypeForToolType(I)I
    .locals 1
    .param p1, "toolType"    # I

    .line 569
    packed-switch p1, :pswitch_data_0

    .line 580
    const/4 v0, 0x5

    return v0

    .line 577
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 575
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 573
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 571
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVerticalScrollFactor(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 495
    nop

    .line 496
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getVerticalScrollFactorAbove26(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private getVerticalScrollFactorAbove26(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 504
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method private getVerticalScrollFactorPre26(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 510
    iget v0, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->cachedVerticalScrollFactor:I

    if-nez v0, :cond_1

    .line 511
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 512
    .local v0, "outValue":Landroid/util/TypedValue;
    nop

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 514
    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    const/16 v1, 0x30

    return v1

    .line 517
    :cond_0
    nop

    .line 518
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->cachedVerticalScrollFactor:I

    .line 520
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget v0, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->cachedVerticalScrollFactor:I

    return v0
.end method

.method private uniquePointerIdByType(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 298
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    .line 300
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 299
    return v0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 253
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v8

    .line 254
    .local v8, "isPointerEvent":Z
    nop

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v9, 0x1

    if-eq v1, v3, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v9

    :goto_1
    move v10, v1

    .line 257
    .local v10, "isMovementEvent":Z
    if-eqz v8, :cond_4

    if-nez v10, :cond_2

    goto :goto_2

    .line 261
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-direct {p0, v1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getPointerChangeForAction(I)I

    move-result v3

    .line 262
    .local v3, "pointerChange":I
    nop

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x24

    mul-int/2addr v1, v5

    .line 263
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 265
    .local v6, "packet":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 268
    nop

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    sget-object v5, Lio/flutter/embedding/android/AndroidTouchProcessor;->IDENTITY_TRANSFORM:Landroid/graphics/Matrix;

    .line 268
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;Landroid/content/Context;)V

    .line 270
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    rem-int/lit16 v1, v1, 0x120

    if-nez v1, :cond_3

    .line 273
    iget-object v1, p0, Lio/flutter/embedding/android/AndroidTouchProcessor;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V

    .line 274
    return v9

    .line 271
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Packet position is not on field boundary."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 258
    .end local v3    # "pointerChange":I
    .end local v6    # "packet":Ljava/nio/ByteBuffer;
    :cond_4
    :goto_2
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 150
    sget-object v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->IDENTITY_TRANSFORM:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "transformMatrix"    # Landroid/graphics/Matrix;

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 163
    .local v7, "maskedAction":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-direct {v0, v2}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getPointerChangeForAction(I)I

    move-result v3

    .line 164
    .local v3, "pointerChange":I
    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    const/4 v4, 0x5

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v8

    :goto_1
    move v9, v4

    .line 166
    .local v9, "updateForSinglePointer":Z
    if-nez v9, :cond_3

    if-eq v7, v8, :cond_2

    const/4 v4, 0x6

    if-ne v7, v4, :cond_3

    :cond_2
    move v4, v8

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    move v10, v4

    .line 171
    .local v10, "updateForMultiplePointers":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-direct {v0, v4}, Lio/flutter/embedding/android/AndroidTouchProcessor;->getPointerDeviceTypeForToolType(I)I

    move-result v11

    .line 172
    .local v11, "deviceType":I
    if-eqz v10, :cond_4

    if-nez v11, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    move v12, v4

    .line 174
    .local v12, "shouldRemovePointer":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 181
    .local v13, "originalPointerCount":I
    if-eqz v12, :cond_5

    move v2, v8

    :cond_5
    add-int v14, v13, v2

    .line 182
    .local v14, "totalPointerCount":I
    mul-int/lit8 v2, v14, 0x24

    mul-int/lit8 v2, v2, 0x8

    .line 183
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 184
    .local v6, "packet":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 186
    if-eqz v9, :cond_6

    .line 188
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    .end local v3    # "pointerChange":I
    .local v15, "pointerChange":I
    goto/16 :goto_6

    .line 189
    .end local v15    # "pointerChange":I
    .restart local v3    # "pointerChange":I
    :cond_6
    move v15, v3

    .end local v3    # "pointerChange":I
    .restart local v15    # "pointerChange":I
    if-eqz v10, :cond_a

    .line 194
    const/4 v0, 0x0

    move v2, v0

    .local v2, "p":I
    :goto_4
    if-ge v2, v13, :cond_8

    .line 195
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eq v2, v0, :cond_7

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 196
    const/4 v3, 0x5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    .line 194
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    goto :goto_4

    .line 202
    .end local v2    # "p":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move v3, v15

    .end local v15    # "pointerChange":I
    .restart local v3    # "pointerChange":I
    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    .line 204
    .end local v3    # "pointerChange":I
    .restart local v15    # "pointerChange":I
    if-eqz v12, :cond_9

    .line 213
    nop

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 213
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    move v3, v15

    goto :goto_6

    .line 204
    :cond_9
    move-object/from16 v0, p0

    move v3, v15

    goto :goto_6

    .line 220
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    .restart local v2    # "p":I
    :goto_5
    if-ge v2, v13, :cond_b

    .line 221
    shl-int/lit8 v0, v13, 0x8

    or-int/lit8 v4, v0, 0x2

    .line 224
    .local v4, "pointerData":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move v3, v15

    .end local v15    # "pointerChange":I
    .restart local v3    # "pointerChange":I
    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/android/AndroidTouchProcessor;->addPointerForIndex(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    .line 220
    .end local v4    # "pointerData":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v3    # "pointerChange":I
    .restart local v15    # "pointerChange":I
    :cond_b
    move-object/from16 v0, p0

    move v3, v15

    .line 229
    .end local v2    # "p":I
    .end local v15    # "pointerChange":I
    .restart local v3    # "pointerChange":I
    :goto_6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    rem-int/lit16 v1, v1, 0x120

    if-nez v1, :cond_c

    .line 234
    iget-object v1, v0, Lio/flutter/embedding/android/AndroidTouchProcessor;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V

    .line 236
    return v8

    .line 230
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Packet position is not on field boundary"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
