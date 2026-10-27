.class public final Lio/sentry/android/replay/video/SimpleVideoEncoderKt;
.super Ljava/lang/Object;
.source "SimpleVideoEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0008\u0010\u0004\u001a\u00020\u0005H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "MAX_EOS_STALL_ITERATIONS",
        "",
        "TIMEOUT_USEC",
        "",
        "shouldUseSoftwareCanvas",
        "",
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


# static fields
.field private static final MAX_EOS_STALL_ITERATIONS:I = 0xa

.field private static final TIMEOUT_USEC:J = 0x186a0L


# direct methods
.method public static final shouldUseSoftwareCanvas()Z
    .locals 5

    .line 343
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "xiaomi"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "motorola"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    sget-object v0, Lio/sentry/android/replay/util/SystemProperties;->INSTANCE:Lio/sentry/android/replay/util/SystemProperties;

    sget-object v1, Lio/sentry/android/replay/util/SystemProperties$Property;->SOC_MANUFACTURER:Lio/sentry/android/replay/util/SystemProperties$Property;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4, v2}, Lio/sentry/android/replay/util/SystemProperties;->get$default(Lio/sentry/android/replay/util/SystemProperties;Lio/sentry/android/replay/util/SystemProperties$Property;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v1, "spreadtrum"

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    sget-object v0, Lio/sentry/android/replay/util/SystemProperties;->INSTANCE:Lio/sentry/android/replay/util/SystemProperties;

    sget-object v1, Lio/sentry/android/replay/util/SystemProperties$Property;->SOC_MANUFACTURER:Lio/sentry/android/replay/util/SystemProperties$Property;

    invoke-static {v0, v1, v2, v4, v2}, Lio/sentry/android/replay/util/SystemProperties;->get$default(Lio/sentry/android/replay/util/SystemProperties;Lio/sentry/android/replay/util/SystemProperties$Property;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v1, "unisoc"

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "HARDWARE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "goldfish"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "ranchu"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v3
.end method
