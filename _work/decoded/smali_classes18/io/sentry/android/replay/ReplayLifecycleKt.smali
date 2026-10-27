.class public final Lio/sentry/android/replay/ReplayLifecycleKt;
.super Ljava/lang/Object;
.source "ReplayLifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayLifecycleKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "isAllowed",
        "",
        "Lio/sentry/android/replay/ReplayLifecycleState;",
        "newState",
        "sentry-android-replay_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isAllowed(Lio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/android/replay/ReplayLifecycleState;)Z
    .locals 3
    .param p0, "$this$isAllowed"    # Lio/sentry/android/replay/ReplayLifecycleState;
    .param p1, "newState"    # Lio/sentry/android/replay/ReplayLifecycleState;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayLifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    move v1, v2

    goto :goto_3

    .line 58
    :pswitch_1
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->STARTED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_8

    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne p1, v0, :cond_0

    goto :goto_3

    :cond_0
    move v1, v2

    goto :goto_3

    .line 54
    :pswitch_2
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->RESUMED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_2

    .line 55
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->STOPPED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_2

    .line 56
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_0
    goto :goto_3

    .line 50
    :pswitch_3
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->PAUSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_4

    .line 51
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->STOPPED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_4

    .line 52
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_1
    goto :goto_3

    .line 46
    :pswitch_4
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->PAUSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_6

    .line 47
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->STOPPED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_6

    .line 48
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    :goto_2
    goto :goto_3

    .line 44
    :pswitch_5
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->STARTED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq p1, v0, :cond_8

    sget-object v0, Lio/sentry/android/replay/ReplayLifecycleState;->CLOSED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    .line 60
    :cond_8
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
