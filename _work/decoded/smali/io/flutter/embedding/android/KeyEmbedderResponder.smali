.class public Lio/flutter/embedding/android/KeyEmbedderResponder;
.super Ljava/lang/Object;
.source "KeyEmbedderResponder.java"

# interfaces
.implements Lio/flutter/embedding/android/KeyboardManager$Responder;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyEmbedderResponder"


# instance fields
.field private final characterCombiner:Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final pressingRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final togglingGoals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 7
    .param p1, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    .line 55
    new-instance v0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

    invoke-direct {v0}, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->characterCombiner:Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

    .line 60
    iput-object p1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 61
    invoke-static {}, Lio/flutter/embedding/android/KeyboardMap;->getTogglingGoals()[Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 62
    .local v3, "goal":Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    iget-object v4, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    iget-wide v5, v3, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v3    # "goal":Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private static getEventType(Landroid/view/KeyEvent;)Lio/flutter/embedding/android/KeyData$Type;
    .locals 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 31
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, "isRepeatEvent":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 38
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unexpected event type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 36
    :pswitch_0
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    return-object v1

    .line 34
    :pswitch_1
    if-eqz v0, :cond_1

    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    goto :goto_1

    :cond_1
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLogicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 93
    sget-object v0, Lio/flutter/embedding/android/KeyboardMap;->keyCodeToLogical:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 94
    .local v0, "byMapping":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0x1100000000L

    invoke-static {v1, v2, v3, v4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->keyOfPlane(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private getPhysicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    int-to-long v0, v0

    .line 78
    .local v0, "scancode":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide v3, 0x1100000000L

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v5, v6, v3, v4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->keyOfPlane(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 82
    :cond_0
    sget-object v2, Lio/flutter/embedding/android/KeyboardMap;->scanCodeToPhysical:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 83
    .local v2, "byMapping":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 84
    return-object v2

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6, v3, v4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->keyOfPlane(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method private handleEventImpl(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "onKeyEventHandledCallback"    # Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    return v9

    .line 281
    :cond_0
    invoke-direct/range {p0 .. p1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getPhysicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;

    move-result-object v10

    .line 282
    .local v10, "physicalKey":Ljava/lang/Long;
    invoke-direct/range {p0 .. p1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getLogicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;

    move-result-object v11

    .line 284
    .local v11, "logicalKey":Ljava/lang/Long;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v8, "postSynchronizeEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    sget-object v12, Lio/flutter/embedding/android/KeyboardMap;->pressingGoals:[Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    array-length v13, v12

    move v14, v9

    :goto_0
    const/4 v6, 0x1

    if-ge v14, v13, :cond_2

    aget-object v1, v12, v14

    .line 286
    .local v1, "goal":Lio/flutter/embedding/android/KeyboardMap$PressingGoal;
    nop

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    iget v2, v1, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v9

    .line 289
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 290
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 286
    move-object v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v8}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synchronizePressingKey(Lio/flutter/embedding/android/KeyboardMap$PressingGoal;ZJJLandroid/view/KeyEvent;Ljava/util/ArrayList;)V

    .line 285
    .end local v1    # "goal":Lio/flutter/embedding/android/KeyboardMap$PressingGoal;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 296
    .local v1, "goal":Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    iget v3, v1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_3

    :cond_3
    move v2, v9

    :goto_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synchronizeTogglingKey(Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;ZJLandroid/view/KeyEvent;)V

    .line 297
    .end local v1    # "goal":Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    goto :goto_2

    .line 300
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 308
    return v9

    .line 305
    :pswitch_0
    const/4 v1, 0x0

    .line 306
    .local v1, "isDownEvent":Z
    move v7, v1

    goto :goto_4

    .line 302
    .end local v1    # "isDownEvent":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 303
    .restart local v1    # "isDownEvent":Z
    move v7, v1

    .line 312
    .end local v1    # "isDownEvent":Z
    .local v7, "isDownEvent":Z
    :goto_4
    const/4 v12, 0x0

    .line 313
    .local v12, "character":Ljava/lang/String;
    iget-object v1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    .line 314
    .local v2, "lastLogicalRecord":Ljava/lang/Long;
    if-eqz v7, :cond_8

    .line 315
    if-nez v2, :cond_5

    .line 316
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    move-object v3, v10

    .local v1, "type":Lio/flutter/embedding/android/KeyData$Type;
    goto :goto_5

    .line 320
    .end local v1    # "type":Lio/flutter/embedding/android/KeyData$Type;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 321
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    move-object v3, v10

    .restart local v1    # "type":Lio/flutter/embedding/android/KeyData$Type;
    goto :goto_5

    .line 323
    .end local v1    # "type":Lio/flutter/embedding/android/KeyData$Type;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, v10

    .end local v10    # "physicalKey":Ljava/lang/Long;
    .local v3, "physicalKey":Ljava/lang/Long;
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 324
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    .line 327
    .restart local v1    # "type":Lio/flutter/embedding/android/KeyData$Type;
    :goto_5
    iget-object v4, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->characterCombiner:Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->applyCombiningCharacterToBaseCharacter(I)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 329
    .local v4, "complexChar":C
    if-eqz v4, :cond_7

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 332
    .end local v4    # "complexChar":C
    :cond_7
    goto :goto_6

    .line 333
    .end local v1    # "type":Lio/flutter/embedding/android/KeyData$Type;
    .end local v3    # "physicalKey":Ljava/lang/Long;
    .restart local v10    # "physicalKey":Ljava/lang/Long;
    :cond_8
    move-object v3, v10

    .end local v10    # "physicalKey":Ljava/lang/Long;
    .restart local v3    # "physicalKey":Ljava/lang/Long;
    if-nez v2, :cond_9

    .line 335
    return v9

    .line 337
    :cond_9
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    .line 341
    .restart local v1    # "type":Lio/flutter/embedding/android/KeyData$Type;
    :goto_6
    sget-object v4, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    if-eq v1, v4, :cond_b

    .line 342
    if-eqz v7, :cond_a

    move-object v4, v11

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p0, v3, v4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->updatePressingState(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 344
    :cond_b
    sget-object v4, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    if-ne v1, v4, :cond_c

    .line 345
    iget-object v4, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 346
    .local v4, "maybeTogglingGoal":Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    if-eqz v4, :cond_c

    .line 347
    iget-boolean v5, v4, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    xor-int/2addr v5, v6

    iput-boolean v5, v4, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 351
    .end local v4    # "maybeTogglingGoal":Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    :cond_c
    new-instance v4, Lio/flutter/embedding/android/KeyData;

    invoke-direct {v4}, Lio/flutter/embedding/android/KeyData;-><init>()V

    .line 353
    .local v4, "output":Lio/flutter/embedding/android/KeyData;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 356
    sget-object v5, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    iput-object v5, v4, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 357
    goto :goto_8

    .line 368
    :sswitch_0
    sget-object v5, Lio/flutter/embedding/android/KeyData$DeviceType;->kHdmi:Lio/flutter/embedding/android/KeyData$DeviceType;

    iput-object v5, v4, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    goto :goto_8

    .line 365
    :sswitch_1
    sget-object v5, Lio/flutter/embedding/android/KeyData$DeviceType;->kJoystick:Lio/flutter/embedding/android/KeyData$DeviceType;

    iput-object v5, v4, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 366
    goto :goto_8

    .line 362
    :sswitch_2
    sget-object v5, Lio/flutter/embedding/android/KeyData$DeviceType;->kGamepad:Lio/flutter/embedding/android/KeyData$DeviceType;

    iput-object v5, v4, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 363
    goto :goto_8

    .line 359
    :sswitch_3
    sget-object v5, Lio/flutter/embedding/android/KeyData$DeviceType;->kDirectionalPad:Lio/flutter/embedding/android/KeyData$DeviceType;

    iput-object v5, v4, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 360
    nop

    .line 372
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v13

    iput-wide v13, v4, Lio/flutter/embedding/android/KeyData;->timestamp:J

    .line 373
    iput-object v1, v4, Lio/flutter/embedding/android/KeyData;->type:Lio/flutter/embedding/android/KeyData$Type;

    .line 374
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v4, Lio/flutter/embedding/android/KeyData;->logicalKey:J

    .line 375
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v4, Lio/flutter/embedding/android/KeyData;->physicalKey:J

    .line 376
    iput-object v12, v4, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;

    .line 377
    iput-boolean v9, v4, Lio/flutter/embedding/android/KeyData;->synthesized:Z

    .line 379
    move-object/from16 v5, p2

    invoke-direct {p0, v4, v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->sendKeyEvent(Lio/flutter/embedding/android/KeyData;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    .line 380
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    .line 381
    .local v10, "postSyncEvent":Ljava/lang/Runnable;
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 382
    .end local v10    # "postSyncEvent":Ljava/lang/Runnable;
    goto :goto_9

    .line 383
    :cond_d
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_3
        0x401 -> :sswitch_2
        0x1000010 -> :sswitch_1
        0x2000001 -> :sswitch_0
    .end sparse-switch
.end method

.method private static keyOfPlane(JJ)J
    .locals 2
    .param p0, "key"    # J
    .param p2, "plane"    # J

    .line 68
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    or-long/2addr v0, p2

    return-wide v0
.end method

.method static synthetic lambda$sendKeyEvent$2(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "onKeyEventHandledCallback"    # Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;
    .param p1, "message"    # Ljava/nio/ByteBuffer;

    .line 406
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 407
    .local v1, "handled":Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 409
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 413
    :cond_1
    const-string v0, "KeyEmbedderResponder"

    const-string v2, "A null reply was received when sending a key event to the framework."

    invoke-static {v0, v2}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v0}, Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;->onKeyEventHandled(Z)V

    .line 416
    return-void
.end method

.method private sendKeyEvent(Lio/flutter/embedding/android/KeyData;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 4
    .param p1, "data"    # Lio/flutter/embedding/android/KeyData;
    .param p2, "onKeyEventHandledCallback"    # Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    .line 403
    if-nez p2, :cond_0

    .line 404
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    :goto_0
    nop

    .line 418
    .local v0, "handleMessageReply":Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;
    iget-object v1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    const-string v2, "flutter/keydata"

    invoke-virtual {p1}, Lio/flutter/embedding/android/KeyData;->toBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    .line 419
    return-void
.end method

.method private synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V
    .locals 6
    .param p1, "isDown"    # Z
    .param p2, "logicalKey"    # Ljava/lang/Long;
    .param p3, "physicalKey"    # Ljava/lang/Long;
    .param p4, "timestamp"    # J

    .line 387
    new-instance v0, Lio/flutter/embedding/android/KeyData;

    invoke-direct {v0}, Lio/flutter/embedding/android/KeyData;-><init>()V

    .line 388
    .local v0, "output":Lio/flutter/embedding/android/KeyData;
    iput-wide p4, v0, Lio/flutter/embedding/android/KeyData;->timestamp:J

    .line 389
    if-eqz p1, :cond_0

    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    :goto_0
    iput-object v1, v0, Lio/flutter/embedding/android/KeyData;->type:Lio/flutter/embedding/android/KeyData$Type;

    .line 390
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/flutter/embedding/android/KeyData;->logicalKey:J

    .line 391
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/flutter/embedding/android/KeyData;->physicalKey:J

    .line 392
    const/4 v1, 0x0

    iput-object v1, v0, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;

    .line 393
    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/flutter/embedding/android/KeyData;->synthesized:Z

    .line 394
    sget-object v2, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    iput-object v2, v0, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 395
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 396
    if-eqz p1, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {p0, p3, v2}, Lio/flutter/embedding/android/KeyEmbedderResponder;->updatePressingState(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 398
    :cond_2
    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->sendKeyEvent(Lio/flutter/embedding/android/KeyData;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    .line 399
    return-void
.end method


# virtual methods
.method public getPressedState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "onKeyEventHandledCallback"    # Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    .line 437
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/KeyEmbedderResponder;->handleEventImpl(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)Z

    move-result v0

    .line 438
    .local v0, "sentAny":Z
    if-nez v0, :cond_0

    .line 439
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 440
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;->onKeyEventHandled(Z)V

    .line 442
    :cond_0
    return-void
.end method

.method synthetic lambda$synchronizePressingKey$0$io-flutter-embedding-android-KeyEmbedderResponder(Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V
    .locals 8
    .param p1, "key"    # Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    .param p2, "eventPhysicalKey"    # J
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 168
    iget-wide v0, p1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 168
    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method

.method synthetic lambda$synchronizePressingKey$1$io-flutter-embedding-android-KeyEmbedderResponder(Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V
    .locals 8
    .param p1, "key"    # Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    .param p2, "eventPhysicalKey"    # J
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 185
    iget-wide v0, p1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 185
    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method

.method synchronizePressingKey(Lio/flutter/embedding/android/KeyboardMap$PressingGoal;ZJJLandroid/view/KeyEvent;Ljava/util/ArrayList;)V
    .locals 18
    .param p1, "goal"    # Lio/flutter/embedding/android/KeyboardMap$PressingGoal;
    .param p2, "truePressed"    # Z
    .param p3, "eventLogicalKey"    # J
    .param p5, "eventPhysicalKey"    # J
    .param p7, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/android/KeyboardMap$PressingGoal;",
            "ZJJ",
            "Landroid/view/KeyEvent;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p8, "postSynchronize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    iget-object v2, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    array-length v2, v2

    new-array v2, v2, [Z

    .line 153
    .local v2, "nowStates":[Z
    iget-object v3, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Boolean;

    .line 154
    .local v3, "preEventStates":[Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 157
    .local v4, "postEventAnyPressed":Z
    const/4 v5, 0x0

    .local v5, "keyIdx":I
    :goto_0
    iget-object v6, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    array-length v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_5

    .line 158
    iget-object v6, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    aget-object v11, v6, v5

    .line 159
    .local v11, "key":Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    move-object/from16 v10, p0

    iget-object v6, v10, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    iget-wide v12, v11, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->physicalKey:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v2, v5

    .line 160
    iget-wide v12, v11, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    cmp-long v6, v12, p3

    if-nez v6, :cond_2

    .line 161
    sget-object v6, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    invoke-static/range {p7 .. p7}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getEventType(Landroid/view/KeyEvent;)Lio/flutter/embedding/android/KeyData$Type;

    move-result-object v8

    invoke-virtual {v8}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 182
    :pswitch_0
    if-nez p2, :cond_0

    .line 183
    new-instance v9, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;-><init>(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    aget-boolean v6, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    .line 189
    const/4 v4, 0x1

    goto :goto_1

    .line 176
    :pswitch_1
    aget-boolean v6, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    .line 177
    goto :goto_1

    .line 163
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    .line 164
    const/4 v4, 0x1

    .line 165
    if-nez p2, :cond_1

    .line 166
    new-instance v9, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda1;

    move-object/from16 v10, p0

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda1;-><init>(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    :goto_1
    goto :goto_2

    .line 193
    :cond_2
    if-nez v4, :cond_3

    aget-boolean v6, v2, v5

    if-eqz v6, :cond_4

    :cond_3
    move v7, v8

    :cond_4
    move v4, v7

    .line 157
    .end local v11    # "key":Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    .end local v5    # "keyIdx":I
    :cond_5
    nop

    .line 201
    invoke-virtual/range {p7 .. p7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    move v5, v8

    goto :goto_3

    :cond_6
    move v5, v7

    .line 204
    .local v5, "isVirtualKeyboard":Z
    :goto_3
    if-eqz p2, :cond_b

    .line 206
    const/4 v6, 0x0

    .local v6, "keyIdx":I
    :goto_4
    iget-object v9, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    array-length v9, v9

    if-ge v6, v9, :cond_a

    .line 207
    aget-object v9, v3, v6

    if-eqz v9, :cond_7

    .line 208
    goto :goto_6

    .line 210
    :cond_7
    if-nez v4, :cond_9

    if-eqz v5, :cond_8

    goto :goto_5

    .line 213
    :cond_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v6

    .line 214
    const/4 v4, 0x1

    goto :goto_6

    .line 211
    :cond_9
    :goto_5
    aget-boolean v9, v2, v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v6

    .line 206
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 217
    .end local v6    # "keyIdx":I
    :cond_a
    if-nez v4, :cond_d

    if-nez v5, :cond_d

    .line 218
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v7

    goto :goto_9

    .line 221
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "keyIdx":I
    :goto_7
    iget-object v8, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    array-length v8, v8

    if-ge v6, v8, :cond_d

    .line 222
    aget-object v8, v3, v6

    if-eqz v8, :cond_c

    .line 223
    goto :goto_8

    .line 225
    :cond_c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v3, v6

    .line 221
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 230
    .end local v6    # "keyIdx":I
    :cond_d
    :goto_9
    const/4 v6, 0x0

    .restart local v6    # "keyIdx":I
    :goto_a
    iget-object v7, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    array-length v7, v7

    if-ge v6, v7, :cond_f

    .line 231
    aget-boolean v7, v2, v6

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v7, v8, :cond_e

    .line 232
    iget-object v7, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    aget-object v7, v7, v6

    .line 233
    .local v7, "key":Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    aget-object v8, v3, v6

    .line 234
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-wide v8, v7, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-wide v8, v7, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->physicalKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual/range {p7 .. p7}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v16

    .line 233
    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 230
    .end local v7    # "key":Lio/flutter/embedding/android/KeyboardMap$KeyPair;
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 237
    .end local v6    # "keyIdx":I
    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synchronizeTogglingKey(Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;ZJLandroid/view/KeyEvent;)V
    .locals 9
    .param p1, "goal"    # Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;
    .param p2, "trueEnabled"    # Z
    .param p3, "eventLogicalKey"    # J
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 254
    iget-wide v0, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iget-boolean v0, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    if-eq v0, p2, :cond_4

    .line 260
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    iget-wide v3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->physicalKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    xor-int/lit8 v3, v0, 0x1

    .line 261
    .local v3, "firstIsDown":Z
    if-eqz v3, :cond_1

    .line 262
    iget-boolean v0, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    xor-int/2addr v0, v8

    iput-boolean v0, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 264
    :cond_1
    iget-wide v4, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->physicalKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 265
    move v0, v3

    .end local v3    # "firstIsDown":Z
    .local v0, "firstIsDown":Z
    if-nez v0, :cond_2

    .line 266
    iget-boolean v2, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    xor-int/2addr v2, v8

    iput-boolean v2, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 268
    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    move v3, v8

    iget-wide v4, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->physicalKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 270
    .end local v0    # "firstIsDown":Z
    :cond_4
    return-void
.end method

.method updatePressingState(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .param p1, "physicalKey"    # Ljava/lang/Long;
    .param p2, "logicalKey"    # Ljava/lang/Long;

    .line 108
    if-eqz p2, :cond_1

    .line 109
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    .local v0, "previousValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 113
    .end local v0    # "previousValue":Ljava/lang/Long;
    goto :goto_0

    .line 111
    .restart local v0    # "previousValue":Ljava/lang/Long;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "The key was not empty"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 114
    .end local v0    # "previousValue":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 115
    .restart local v0    # "previousValue":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 119
    .end local v0    # "previousValue":Ljava/lang/Long;
    :goto_0
    return-void

    .line 116
    .restart local v0    # "previousValue":Ljava/lang/Long;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "The key was empty"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
