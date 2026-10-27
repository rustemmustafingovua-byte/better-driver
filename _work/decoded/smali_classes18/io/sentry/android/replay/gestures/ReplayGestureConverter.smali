.class public final Lio/sentry/android/replay/gestures/ReplayGestureConverter;
.super Ljava/lang/Object;
.source "ReplayGestureConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/gestures/ReplayGestureConverter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayGestureConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayGestureConverter.kt\nio/sentry/android/replay/gestures/ReplayGestureConverter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1863#2,2:157\n1557#2:159\n1628#2,3:160\n*S KotlinDebug\n*F\n+ 1 ReplayGestureConverter.kt\nio/sentry/android/replay/gestures/ReplayGestureConverter\n*L\n45#1:157,2\n75#1:159\n75#1:160,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018RJ\u0010\u0007\u001a>\u0012\u0004\u0012\u00020\t\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c0\u0008j\u001e\u0012\u0004\u0012\u00020\t\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/sentry/android/replay/gestures/ReplayGestureConverter;",
        "",
        "dateProvider",
        "Lio/sentry/transport/ICurrentDateProvider;",
        "ticker",
        "Lio/sentry/time/MonotonicTicker;",
        "(Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;)V",
        "currentPositions",
        "Ljava/util/LinkedHashMap;",
        "",
        "Ljava/util/ArrayList;",
        "Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/collections/LinkedHashMap;",
        "moveDebounce",
        "Lio/sentry/time/Deadline;",
        "touchMoveBaseline",
        "",
        "convert",
        "",
        "Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;",
        "event",
        "Landroid/view/MotionEvent;",
        "recorderConfig",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "Companion",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final CAPTURE_MOVE_EVENT_THRESHOLD:I = 0x1f4

.field public static final Companion:Lio/sentry/android/replay/gestures/ReplayGestureConverter$Companion;

.field private static final TOUCH_MOVE_DEBOUNCE_THRESHOLD:J = 0x32L


# instance fields
.field private final currentPositions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private moveDebounce:Lio/sentry/time/Deadline;

.field private final ticker:Lio/sentry/time/MonotonicTicker;

.field private touchMoveBaseline:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/gestures/ReplayGestureConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->Companion:Lio/sentry/android/replay/gestures/ReplayGestureConverter$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;)V
    .locals 2
    .param p1, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p2, "ticker"    # Lio/sentry/time/MonotonicTicker;

    const-string v0, "dateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 18
    iput-object p2, p0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    .line 15
    return-void
.end method


# virtual methods
.method public final convert(Landroid/view/MotionEvent;Lio/sentry/android/replay/ScreenshotRecorderConfig;)Ljava/util/List;
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "recorderConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "recorderConfig"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    .line 152
    :pswitch_0
    move-object/from16 v17, v6

    goto/16 :goto_6

    .line 139
    :pswitch_1
    iget-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 141
    new-instance v2, Lio/sentry/rrweb/RRWebInteractionEvent;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    move-object v4, v2

    .local v4, "$this$convert_u24lambda_u244":Lio/sentry/rrweb/RRWebInteractionEvent;
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$a$-apply-ReplayGestureConverter$convert$5":I
    iget-object v6, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v6}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lio/sentry/rrweb/RRWebInteractionEvent;->setTimestamp(J)V

    .line 143
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v3}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorX()F

    move-result v8

    mul-float/2addr v6, v8

    invoke-virtual {v4, v6}, Lio/sentry/rrweb/RRWebInteractionEvent;->setX(F)V

    .line 144
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorY()F

    move-result v8

    mul-float/2addr v6, v8

    invoke-virtual {v4, v6}, Lio/sentry/rrweb/RRWebInteractionEvent;->setY(F)V

    .line 145
    invoke-virtual {v4, v7}, Lio/sentry/rrweb/RRWebInteractionEvent;->setId(I)V

    .line 146
    invoke-virtual {v4, v7}, Lio/sentry/rrweb/RRWebInteractionEvent;->setPointerId(I)V

    .line 147
    sget-object v6, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchCancel:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-virtual {v4, v6}, Lio/sentry/rrweb/RRWebInteractionEvent;->setInteractionType(Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)V

    .line 148
    nop

    .line 141
    .end local v4    # "$this$convert_u24lambda_u244":Lio/sentry/rrweb/RRWebInteractionEvent;
    .end local v5    # "$i$a$-apply-ReplayGestureConverter$convert$5":I
    nop

    .line 140
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_6

    .line 39
    :pswitch_2
    iget-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v2}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 40
    .local v8, "now":J
    iget-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->moveDebounce:Lio/sentry/time/Deadline;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    if-eqz v2, :cond_1

    .line 41
    return-object v6

    .line 43
    :cond_1
    iget-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->ticker:Lio/sentry/time/MonotonicTicker;

    const-wide/16 v10, 0x32

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v10, v11, v12}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v2

    iput-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->moveDebounce:Lio/sentry/time/Deadline;

    .line 45
    iget-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v10, "<get-keys>(...)"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 157
    .local v10, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v15, v12

    check-cast v15, Ljava/lang/Integer;

    .local v15, "pId":Ljava/lang/Integer;
    const/16 v16, 0x0

    .line 46
    .local v16, "$i$a$-forEach-ReplayGestureConverter$convert$1":I
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v17, v6

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 48
    .local v6, "pIndex":I
    if-ne v6, v5, :cond_2

    .line 50
    move-wide/from16 v23, v8

    goto :goto_2

    .line 54
    :cond_2
    const-wide/16 v18, 0x0

    iget-wide v13, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->touchMoveBaseline:J

    cmp-long v13, v13, v18

    if-nez v13, :cond_3

    .line 55
    iput-wide v8, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->touchMoveBaseline:J

    .line 58
    :cond_3
    iget-object v13, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Ljava/util/Collection;

    .line 59
    new-instance v14, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;

    invoke-direct {v14}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;-><init>()V

    move-object/from16 v18, v14

    .local v18, "$this$convert_u24lambda_u240_u240":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    const/16 v19, 0x0

    .line 60
    .local v19, "$i$a$-apply-ReplayGestureConverter$convert$1$1":I
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    invoke-virtual {v3}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorX()F

    move-result v21

    mul-float v5, v20, v21

    move-object/from16 v4, v18

    .end local v18    # "$this$convert_u24lambda_u240_u240":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    .local v4, "$this$convert_u24lambda_u240_u240":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    invoke-virtual {v4, v5}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->setX(F)V

    .line 61
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorY()F

    move-result v18

    mul-float v5, v5, v18

    invoke-virtual {v4, v5}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->setY(F)V

    .line 62
    invoke-virtual {v4, v7}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->setId(I)V

    .line 63
    move-wide/from16 v23, v8

    .end local v8    # "now":J
    .local v23, "now":J
    iget-wide v7, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->touchMoveBaseline:J

    sub-long v8, v23, v7

    invoke-virtual {v4, v8, v9}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->setTimeOffset(J)V

    .line 64
    nop

    .line 59
    .end local v4    # "$this$convert_u24lambda_u240_u240":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    .end local v19    # "$i$a$-apply-ReplayGestureConverter$convert$1$1":I
    nop

    .line 58
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    nop

    .line 157
    .end local v6    # "pIndex":I
    .end local v15    # "pId":Ljava/lang/Integer;
    .end local v16    # "$i$a$-forEach-ReplayGestureConverter$convert$1":I
    :goto_2
    move-object/from16 v6, v17

    move-wide/from16 v8, v23

    const/4 v5, -0x1

    const/4 v7, 0x0

    .end local v12    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 158
    .end local v23    # "now":J
    .restart local v8    # "now":J
    :cond_4
    move-object/from16 v17, v6

    move-wide/from16 v23, v8

    const-wide/16 v18, 0x0

    .line 67
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "now":J
    .end local v10    # "$i$f$forEach":I
    .restart local v23    # "now":J
    iget-wide v4, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->touchMoveBaseline:J

    sub-long v8, v23, v4

    .line 68
    .local v8, "totalOffset":J
    const-wide/16 v4, 0x1f4

    cmp-long v2, v8, v4

    if-lez v2, :cond_8

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v2, "moveEvents":Ljava/util/ArrayList;
    iget-object v4, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "pointerId":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 71
    .local v5, "positions":Ljava/util/ArrayList;
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 72
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    .line 73
    new-instance v10, Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    invoke-direct {v10}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;-><init>()V

    move-object v11, v10

    .local v11, "$this$convert_u24lambda_u241":Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    const/4 v12, 0x0

    .line 74
    .local v12, "$i$a$-apply-ReplayGestureConverter$convert$2":I
    move-wide/from16 v13, v23

    .end local v23    # "now":J
    .local v13, "now":J
    invoke-virtual {v11, v13, v14}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->setTimestamp(J)V

    .line 75
    move-object v15, v5

    check-cast v15, Ljava/lang/Iterable;

    .local v15, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 159
    .local v16, "$i$f$map":I
    move-object/from16 v17, v2

    .end local v2    # "moveEvents":Ljava/util/ArrayList;
    .local v17, "moveEvents":Ljava/util/ArrayList;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v21, v4

    const/16 v3, 0xa

    invoke-static {v15, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v15

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 160
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .line 161
    .local v23, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v24, v3

    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v24, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    move-object/from16 v3, v23

    check-cast v3, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;

    .local v3, "pos":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    const/16 v25, 0x0

    .line 76
    .local v25, "$i$a$-map-ReplayGestureConverter$convert$2$1":I
    invoke-virtual {v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->getTimeOffset()J

    move-result-wide v26

    move/from16 v29, v4

    move-object/from16 v28, v5

    .end local v4    # "$i$f$mapTo":I
    .end local v5    # "positions":Ljava/util/ArrayList;
    .local v28, "positions":Ljava/util/ArrayList;
    .local v29, "$i$f$mapTo":I
    sub-long v4, v26, v8

    invoke-virtual {v3, v4, v5}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->setTimeOffset(J)V

    .line 77
    nop

    .line 161
    .end local v3    # "pos":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    .end local v25    # "$i$a$-map-ReplayGestureConverter$convert$2$1":I
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v24

    move-object/from16 v5, v28

    move/from16 v4, v29

    goto :goto_4

    .line 162
    .end local v23    # "item$iv$iv":Ljava/lang/Object;
    .end local v24    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v28    # "positions":Ljava/util/ArrayList;
    .end local v29    # "$i$f$mapTo":I
    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v4    # "$i$f$mapTo":I
    .restart local v5    # "positions":Ljava/util/ArrayList;
    :cond_5
    move-object/from16 v24, v3

    move/from16 v29, v4

    move-object/from16 v28, v5

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    .end local v5    # "positions":Ljava/util/ArrayList;
    .restart local v28    # "positions":Ljava/util/ArrayList;
    check-cast v2, Ljava/util/List;

    .line 159
    nop

    .line 75
    .end local v15    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$map":I
    invoke-virtual {v11, v2}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->setPositions(Ljava/util/List;)V

    .line 79
    invoke-virtual {v11, v6}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->setPointerId(I)V

    .line 80
    nop

    .line 73
    .end local v11    # "$this$convert_u24lambda_u241":Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    .end local v12    # "$i$a$-apply-ReplayGestureConverter$convert$2":I
    nop

    .line 72
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v3, p2

    move-wide/from16 v23, v13

    move-object/from16 v2, v17

    move-object/from16 v4, v21

    .end local v6    # "pointerId":I
    .end local v28    # "positions":Ljava/util/ArrayList;
    goto/16 :goto_3

    .line 71
    .end local v13    # "now":J
    .end local v17    # "moveEvents":Ljava/util/ArrayList;
    .local v2, "moveEvents":Ljava/util/ArrayList;
    .restart local v5    # "positions":Ljava/util/ArrayList;
    .restart local v6    # "pointerId":I
    .local v23, "now":J
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v21, v4

    move-object/from16 v28, v5

    move-wide/from16 v13, v23

    .end local v2    # "moveEvents":Ljava/util/ArrayList;
    .end local v5    # "positions":Ljava/util/ArrayList;
    .end local v23    # "now":J
    .restart local v13    # "now":J
    .restart local v17    # "moveEvents":Ljava/util/ArrayList;
    .restart local v28    # "positions":Ljava/util/ArrayList;
    move-object/from16 v3, p2

    goto/16 :goto_3

    .line 84
    .end local v6    # "pointerId":I
    .end local v13    # "now":J
    .end local v17    # "moveEvents":Ljava/util/ArrayList;
    .end local v28    # "positions":Ljava/util/ArrayList;
    .restart local v2    # "moveEvents":Ljava/util/ArrayList;
    .restart local v23    # "now":J
    :cond_7
    move-object/from16 v17, v2

    move-wide/from16 v13, v23

    .end local v2    # "moveEvents":Ljava/util/ArrayList;
    .end local v23    # "now":J
    .restart local v13    # "now":J
    .restart local v17    # "moveEvents":Ljava/util/ArrayList;
    move-wide/from16 v2, v18

    iput-wide v2, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->touchMoveBaseline:J

    .line 85
    nop

    .end local v17    # "moveEvents":Ljava/util/ArrayList;
    move-object/from16 v6, v17

    check-cast v6, Ljava/util/List;

    goto :goto_5

    .line 87
    .end local v13    # "now":J
    .restart local v23    # "now":J
    :cond_8
    move-wide/from16 v13, v23

    .end local v23    # "now":J
    .restart local v13    # "now":J
    move-object/from16 v6, v17

    .line 68
    :goto_5
    return-object v6

    .line 116
    .end local v8    # "totalOffset":J
    .end local v13    # "now":J
    :pswitch_3
    move-object/from16 v17, v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 117
    .local v2, "pId":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 119
    .local v3, "pIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 121
    return-object v17

    .line 125
    :cond_9
    iget-object v4, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v4, Lio/sentry/rrweb/RRWebInteractionEvent;

    invoke-direct {v4}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    move-object v6, v4

    .local v6, "$this$convert_u24lambda_u243":Lio/sentry/rrweb/RRWebInteractionEvent;
    const/4 v7, 0x0

    .line 128
    .local v7, "$i$a$-apply-ReplayGestureConverter$convert$4":I
    iget-object v8, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v8}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lio/sentry/rrweb/RRWebInteractionEvent;->setTimestamp(J)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorX()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lio/sentry/rrweb/RRWebInteractionEvent;->setX(F)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorY()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lio/sentry/rrweb/RRWebInteractionEvent;->setY(F)V

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lio/sentry/rrweb/RRWebInteractionEvent;->setId(I)V

    .line 132
    invoke-virtual {v6, v2}, Lio/sentry/rrweb/RRWebInteractionEvent;->setPointerId(I)V

    .line 133
    sget-object v5, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchEnd:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-virtual {v6, v5}, Lio/sentry/rrweb/RRWebInteractionEvent;->setInteractionType(Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)V

    .line 134
    nop

    .line 127
    .end local v6    # "$this$convert_u24lambda_u243":Lio/sentry/rrweb/RRWebInteractionEvent;
    .end local v7    # "$i$a$-apply-ReplayGestureConverter$convert$4":I
    nop

    .line 126
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .end local v2    # "pId":I
    .end local v3    # "pIndex":I
    goto :goto_6

    .line 93
    :pswitch_4
    move-object/from16 v17, v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 94
    .restart local v2    # "pId":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 96
    .restart local v3    # "pIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 98
    return-object v17

    .line 102
    :cond_a
    iget-object v4, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->currentPositions:Ljava/util/LinkedHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v4, Lio/sentry/rrweb/RRWebInteractionEvent;

    invoke-direct {v4}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    move-object v6, v4

    .local v6, "$this$convert_u24lambda_u242":Lio/sentry/rrweb/RRWebInteractionEvent;
    const/4 v7, 0x0

    .line 105
    .local v7, "$i$a$-apply-ReplayGestureConverter$convert$3":I
    iget-object v8, v0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v8}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lio/sentry/rrweb/RRWebInteractionEvent;->setTimestamp(J)V

    .line 106
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorX()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lio/sentry/rrweb/RRWebInteractionEvent;->setX(F)V

    .line 107
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorY()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lio/sentry/rrweb/RRWebInteractionEvent;->setY(F)V

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lio/sentry/rrweb/RRWebInteractionEvent;->setId(I)V

    .line 109
    invoke-virtual {v6, v2}, Lio/sentry/rrweb/RRWebInteractionEvent;->setPointerId(I)V

    .line 110
    sget-object v5, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchStart:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-virtual {v6, v5}, Lio/sentry/rrweb/RRWebInteractionEvent;->setInteractionType(Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)V

    .line 111
    nop

    .line 104
    .end local v6    # "$this$convert_u24lambda_u242":Lio/sentry/rrweb/RRWebInteractionEvent;
    .end local v7    # "$i$a$-apply-ReplayGestureConverter$convert$3":I
    nop

    .line 103
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 36
    .end local v2    # "pId":I
    .end local v3    # "pIndex":I
    :goto_6
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
