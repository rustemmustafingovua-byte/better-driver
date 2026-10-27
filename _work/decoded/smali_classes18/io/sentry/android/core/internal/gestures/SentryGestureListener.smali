.class public final Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;,
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    }
.end annotation


# static fields
.field private static final TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.gesture_listener"

.field static final UI_ACTION:Ljava/lang/String; = "ui.action"


# instance fields
.field private activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field private activeTransaction:Lio/sentry/ITransaction;

.field private activeUiElement:Lio/sentry/internal/gestures/UiElement;

.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final scopes:Lio/sentry/IScopes;

.field private final scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2
    .param p1, "currentActivity"    # Landroid/app/Activity;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 50
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 51
    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 53
    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-direct {v1, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 60
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    .line 61
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 62
    return-void
.end method

.method private addBreadcrumb(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "target"    # Lio/sentry/internal/gestures/UiElement;
    .param p2, "eventType"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
    .param p4, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/internal/gestures/UiElement;",
            "Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 179
    .local p3, "additionalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    invoke-static {p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->getGestureType(Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Lio/sentry/Hint;

    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    .line 186
    .local v1, "hint":Lio/sentry/Hint;
    const-string v2, "android:motionEvent"

    invoke-virtual {v1, v2, p4}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v2, "android:view"

    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getView()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    .line 191
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-static {v0, v3, v4, v5, p3}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object v3

    .line 189
    invoke-interface {v2, v3, v1}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 193
    return-void
.end method

.method private ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "caller"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 350
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ". No breadcrumb captured."

    if-nez v0, :cond_0

    .line 351
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 352
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity is null in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 353
    invoke-interface {v4, v5, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    return-object v1

    .line 357
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 358
    .local v4, "window":Landroid/view/Window;
    if-nez v4, :cond_1

    .line 359
    iget-object v5, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 360
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window is null in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 361
    invoke-interface {v5, v6, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    return-object v1

    .line 365
    :cond_1
    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v5

    .line 366
    .local v5, "decorView":Landroid/view/View;
    if-nez v5, :cond_2

    .line 367
    iget-object v6, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 368
    invoke-virtual {v6}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecorView is null in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 369
    invoke-interface {v6, v7, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    return-object v1

    .line 372
    :cond_2
    return-object v5
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGestureType(Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 378
    invoke-virtual {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 390
    const-string v0, "unknown"

    .local v0, "type":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_0
    const-string v0, "swipe"

    .line 387
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 383
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1
    const-string v0, "scroll"

    .line 384
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_2
    const-string v0, "click"

    .line 381
    .restart local v0    # "type":Ljava/lang/String;
    nop

    .line 393
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$startTracing$0([Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 2
    .param p0, "boundTransaction"    # [Lio/sentry/ITransaction;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 251
    const/4 v0, 0x0

    invoke-interface {p1}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v1

    aput-object v1, p0, v0

    return-void
.end method

.method private startTracing(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V
    .locals 18
    .param p1, "target"    # Lio/sentry/internal/gestures/UiElement;
    .param p2, "eventType"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    iget-object v3, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 198
    invoke-virtual {v1, v3}, Lio/sentry/internal/gestures/UiElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 199
    .local v3, "isNewGestureSameAsActive":Z
    :goto_0
    sget-object v6, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    if-ne v2, v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 202
    .local v6, "isClickGesture":Z
    :goto_1
    if-nez v6, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v7, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v4

    .line 204
    .local v7, "isNewInteraction":Z
    :goto_3
    iget-object v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v8

    if-nez v8, :cond_4

    move/from16 v16, v3

    goto/16 :goto_5

    .line 215
    :cond_4
    iget-object v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 216
    .local v8, "activity":Landroid/app/Activity;
    if-nez v8, :cond_5

    .line 217
    iget-object v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v10, "Activity is null, no transaction captured."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v9, v10, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    return-void

    .line 221
    :cond_5
    invoke-virtual {v1}, Lio/sentry/internal/gestures/UiElement;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "viewIdentifier":Ljava/lang/String;
    iget-object v10, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v10, :cond_8

    .line 224
    if-nez v7, :cond_7

    iget-object v10, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    invoke-interface {v10}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v10

    if-nez v10, :cond_7

    .line 225
    iget-object v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 226
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The view with id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already has an ongoing transaction assigned. Rescheduling finish"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v5, v5, [Ljava/lang/Object;

    .line 227
    invoke-interface {v4, v10, v11, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v4

    .line 234
    .local v4, "idleTimeout":Ljava/lang/Long;
    if-eqz v4, :cond_6

    .line 237
    iget-object v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    invoke-interface {v5}, Lio/sentry/ITransaction;->scheduleFinish()V

    .line 239
    :cond_6
    return-void

    .line 243
    .end local v4    # "idleTimeout":Ljava/lang/Long;
    :cond_7
    sget-object v10, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-virtual {v0, v10}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->stopTracing(Lio/sentry/SpanStatus;)V

    .line 250
    :cond_8
    new-array v10, v4, [Lio/sentry/ITransaction;

    const/4 v11, 0x0

    aput-object v11, v10, v5

    .line 251
    .local v10, "boundTransaction":[Lio/sentry/ITransaction;
    iget-object v12, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    new-instance v13, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;

    invoke-direct {v13, v10}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;-><init>([Lio/sentry/ITransaction;)V

    invoke-interface {v12, v13}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 252
    aget-object v5, v10, v5

    if-eqz v5, :cond_9

    .line 253
    iget-object v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 254
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v11

    .line 255
    const-string v12, "Transaction won\'t be created for view with id: %s since there\'s already a transaction bound to the Scope."

    invoke-interface {v4, v5, v12, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return-void

    .line 263
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v8}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "name":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ui.action."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->getGestureType(Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 266
    .local v12, "op":Ljava/lang/String;
    new-instance v13, Lio/sentry/TransactionOptions;

    invoke-direct {v13}, Lio/sentry/TransactionOptions;-><init>()V

    .line 267
    .local v13, "transactionOptions":Lio/sentry/TransactionOptions;
    invoke-virtual {v13, v4}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 270
    iget-object v14, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v14}, Lio/sentry/android/core/SentryAndroidOptions;->getDeadlineTimeout()J

    move-result-wide v14

    .line 272
    .local v14, "deadlineTimeoutMillis":J
    nop

    .line 273
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gtz v16, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 272
    :goto_4
    invoke-virtual {v13, v11}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    .line 275
    iget-object v11, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v11}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v13, v11}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 276
    invoke-virtual {v13, v4}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "auto.ui.gesture_listener."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lio/sentry/internal/gestures/UiElement;->getOrigin()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lio/sentry/TransactionOptions;->setOrigin(Ljava/lang/String;)V

    .line 279
    iget-object v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    new-instance v11, Lio/sentry/TransactionContext;

    move/from16 v16, v3

    .end local v3    # "isNewGestureSameAsActive":Z
    .local v16, "isNewGestureSameAsActive":Z
    sget-object v3, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {v11, v5, v3, v12}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 280
    invoke-interface {v4, v11, v13}, Lio/sentry/IScopes;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v3

    .line 283
    .local v3, "transaction":Lio/sentry/ITransaction;
    iget-object v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    new-instance v11, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0, v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/ITransaction;)V

    invoke-interface {v4, v11}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 288
    iput-object v3, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 289
    iput-object v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 290
    iput-object v2, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 291
    return-void

    .line 204
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "activity":Landroid/app/Activity;
    .end local v9    # "viewIdentifier":Ljava/lang/String;
    .end local v10    # "boundTransaction":[Lio/sentry/ITransaction;
    .end local v12    # "op":Ljava/lang/String;
    .end local v13    # "transactionOptions":Lio/sentry/TransactionOptions;
    .end local v14    # "deadlineTimeoutMillis":J
    .end local v16    # "isNewGestureSameAsActive":Z
    .local v3, "isNewGestureSameAsActive":Z
    :cond_b
    move/from16 v16, v3

    .line 205
    .end local v3    # "isNewGestureSameAsActive":Z
    .restart local v16    # "isNewGestureSameAsActive":Z
    :goto_5
    if-eqz v7, :cond_d

    .line 206
    iget-object v3, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoTraceIdGeneration()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 207
    iget-object v3, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    invoke-static {v3}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IScopes;)V

    .line 209
    :cond_c
    iput-object v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 210
    iput-object v2, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 212
    :cond_d
    return-void
.end method


# virtual methods
.method applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;

    .line 328
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 342
    return-void
.end method

.method clearScope(Lio/sentry/IScope;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 318
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 324
    return-void
.end method

.method synthetic lambda$applyScope$4$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 4
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;
    .param p3, "scopeTransaction"    # Lio/sentry/ITransaction;

    .line 331
    if-nez p3, :cond_0

    .line 332
    invoke-interface {p1, p2}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 335
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 339
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 336
    const-string v3, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :goto_0
    return-void
.end method

.method synthetic lambda$clearScope$3$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "transaction"    # Lio/sentry/ITransaction;

    .line 320
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    if-ne p2, v0, :cond_0

    .line 321
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    .line 323
    :cond_0
    return-void
.end method

.method synthetic lambda$startTracing$1$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 285
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    .line 286
    return-void
.end method

.method synthetic lambda$stopTracing$2$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;)V
    .locals 0
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 307
    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->clearScope(Lio/sentry/IScope;)V

    .line 308
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 90
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 91
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$400(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)V

    .line 94
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$502(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F

    .line 95
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$602(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F

    .line 96
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .line 162
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Swipe:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 170
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "firstEvent"    # Landroid/view/MotionEvent;
    .param p2, "currentEvent"    # Landroid/view/MotionEvent;
    .param p3, "distX"    # F
    .param p4, "distY"    # F

    .line 128
    const-string v0, "onScroll"

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v2

    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    if-ne v2, v3, :cond_2

    .line 134
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sget-object v5, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 135
    invoke-static {v2, v0, v3, v4, v5}, Lio/sentry/android/core/internal/gestures/ViewUtils;->findTarget(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v2

    .line 138
    .local v2, "target":Lio/sentry/internal/gestures/UiElement;
    if-nez v2, :cond_1

    .line 139
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 140
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v5, v1, [Ljava/lang/Object;

    .line 141
    const-string v6, "Unable to find scroll target. No breadcrumb captured."

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    sget-object v4, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {v3, v4}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 143
    return v1

    .line 145
    :cond_1
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 146
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scroll target found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    invoke-virtual {v2}, Lio/sentry/internal/gestures/UiElement;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v3, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$700(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/internal/gestures/UiElement;)V

    .line 151
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    sget-object v4, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {v3, v4}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 153
    .end local v2    # "target":Lio/sentry/internal/gestures/UiElement;
    :cond_2
    return v1

    .line 130
    :cond_3
    :goto_0
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 167
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 101
    const-string v0, "onSingleTapUp"

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sget-object v5, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 107
    invoke-static {v2, v0, v3, v4, v5}, Lio/sentry/android/core/internal/gestures/ViewUtils;->findTarget(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v2

    .line 110
    .local v2, "target":Lio/sentry/internal/gestures/UiElement;
    if-nez v2, :cond_1

    .line 111
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 112
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v5, v1, [Ljava/lang/Object;

    .line 113
    const-string v6, "Unable to find click target. No breadcrumb captured."

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return v1

    .line 117
    :cond_1
    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->addBreadcrumb(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 118
    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-direct {p0, v2, v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->startTracing(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V

    .line 119
    return v1

    .line 103
    .end local v2    # "target":Lio/sentry/internal/gestures/UiElement;
    :cond_2
    :goto_0
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 65
    const-string v0, "onUp"

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "decorView":Landroid/view/View;
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$100(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v1

    .line 67
    .local v1, "scrollTarget":Lio/sentry/internal/gestures/UiElement;
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v2

    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    if-ne v2, v3, :cond_1

    .line 72
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 73
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    const-string v5, "Unable to define scroll type. No breadcrumb captured."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$300(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "direction":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 81
    invoke-static {v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v3

    .line 82
    const-string v4, "direction"

    invoke-static {v4, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 79
    invoke-direct {p0, v1, v3, v4, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->addBreadcrumb(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 84
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->startTracing(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V

    .line 85
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-static {v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$400(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)V

    .line 86
    return-void

    .line 68
    .end local v2    # "direction":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method stopTracing(Lio/sentry/SpanStatus;)V
    .locals 2
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 294
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    invoke-interface {v0}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    .line 297
    .local v0, "currentStatus":Lio/sentry/SpanStatus;
    if-nez v0, :cond_0

    .line 298
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    invoke-interface {v1, p1}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    invoke-interface {v1}, Lio/sentry/ITransaction;->finish()V

    .line 303
    .end local v0    # "currentStatus":Lio/sentry/SpanStatus;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scopes:Lio/sentry/IScopes;

    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V

    invoke-interface {v0, v1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 310
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    if-eqz v1, :cond_2

    .line 311
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 313
    :cond_2
    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 314
    return-void
.end method
