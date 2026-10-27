.class Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
.super Ljava/lang/Object;
.source "AccessibilityViewEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionAccessors"
.end annotation


# instance fields
.field private final childNodeIdsField:Ljava/lang/reflect/Field;

.field private final getChildId:Ljava/lang/reflect/Method;

.field private final getParentNodeId:Ljava/lang/reflect/Method;

.field private final getRecordSourceNodeId:Ljava/lang/reflect/Method;

.field private final getSourceNodeId:Ljava/lang/reflect/Method;

.field private final longArrayGetIndex:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 11

    .line 428
    const-string v0, "getSourceNodeId"

    const-string v1, "AccessibilityBridge"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, "getSourceNodeId":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 431
    .local v3, "getParentNodeId":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 432
    .local v4, "getRecordSourceNodeId":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 433
    .local v5, "getChildId":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 434
    .local v6, "childNodeIdsField":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 436
    .local v7, "longArrayGetIndex":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    :try_start_0
    const-class v9, Landroid/view/accessibility/AccessibilityNodeInfo;

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    .line 439
    goto :goto_0

    .line 437
    :catch_0
    move-exception v9

    .line 438
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "can\'t invoke AccessibilityNodeInfo#getSourceNodeId with reflection"

    invoke-static {v1, v10}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v9    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v9, Landroid/view/accessibility/AccessibilityRecord;

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    .line 444
    goto :goto_1

    .line 442
    :catch_1
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v9, "can\'t invoke AccessibiiltyRecord#getSourceNodeId with reflection"

    invoke-static {v1, v9}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-gt v0, v9, :cond_0

    .line 448
    :try_start_2
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v9, "getParentNodeId"

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v0

    .line 451
    goto :goto_2

    .line 449
    :catch_2
    move-exception v0

    .line 450
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "can\'t invoke getParentNodeId with reflection"

    invoke-static {v1, v8}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    :try_start_3
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v8, "getChildId"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v0

    goto :goto_3

    .line 456
    :catch_3
    move-exception v0

    .line 457
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "can\'t invoke getChildId with reflection"

    invoke-static {v1, v8}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_3
    goto :goto_5

    .line 461
    :cond_0
    :try_start_4
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v8, "mChildNodeIds"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v6, v0

    .line 462
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 465
    const-string v0, "android.util.LongArray"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v8, "get"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v7, v0

    .line 472
    goto :goto_5

    .line 466
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const-string v8, "can\'t access childNodeIdsField with reflection"

    invoke-static {v1, v8}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v6, 0x0

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    iput-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    .line 475
    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    .line 476
    iput-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    .line 477
    iput-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    .line 478
    iput-object v6, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    .line 479
    iput-object v7, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    .line 480
    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/view/AccessibilityViewEmbedder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/flutter/view/AccessibilityViewEmbedder$1;

    .line 419
    invoke-direct {p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 419
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 419
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getVirtualNodeId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 419
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "x2"    # I

    .line 419
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 419
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getChildId(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "child"    # I

    .line 504
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    return-object v1

    .line 507
    :cond_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    const-string v2, "AccessibilityBridge"

    if-eqz v0, :cond_2

    .line 509
    :try_start_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "The getChildId method threw an exception when invoked."

    invoke-static {v2, v3, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 515
    :catch_1
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to access getChildId method."

    invoke-static {v2, v3, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    goto :goto_2

    .line 522
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 530
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "The longArrayGetIndex method threw an exception when invoked."

    invoke-static {v2, v3, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to access longArrayGetIndex method or the childNodeId field."

    invoke-static {v2, v3, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 534
    :goto_2
    return-object v1
.end method

.method private getParentNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 3
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 539
    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 541
    :try_start_0
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "The getParentNodeId method threw an exception when invoked."

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 547
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Failed to access getParentNodeId method."

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 555
    :cond_0
    :goto_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->yoinkParentIdFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getRecordSourceNodeId(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 607
    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 608
    return-object v2

    .line 611
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "The getRecordSourceNodeId method threw an exception when invoked."

    invoke-static {v0, v3, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 612
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to access the getRecordSourceNodeId method."

    invoke-static {v0, v3, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 617
    :goto_0
    return-object v2
.end method

.method private getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 489
    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 490
    return-object v2

    .line 493
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "The getSourceNodeId method threw an exception when invoked."

    invoke-static {v0, v3, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to access getSourceNodeId method."

    invoke-static {v0, v3, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 499
    :goto_0
    return-object v2
.end method

.method private static getVirtualNodeId(J)I
    .locals 2
    .param p0, "nodeId"    # J

    .line 484
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static isBitSet(JI)Z
    .locals 4
    .param p0, "flags"    # J
    .param p2, "bitIndex"    # I

    .line 602
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long/2addr v0, p0

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

.method private static yoinkParentIdFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 8
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 564
    nop

    .line 573
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 574
    .local v0, "copy":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 575
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 576
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 577
    const/4 v3, 0x0

    .line 581
    .local v3, "parentNodeId":Ljava/lang/Long;
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 583
    .local v4, "nonDefaultFields":J
    const/4 v2, 0x0

    .line 584
    .local v2, "fieldIndex":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "fieldIndex":I
    .local v6, "fieldIndex":I
    invoke-static {v4, v5, v2}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 587
    :cond_0
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v4, v5, v6}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 590
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    invoke-static {v4, v5, v2}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 593
    :cond_2
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v4, v5, v6}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 594
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 597
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    return-object v3
.end method
