.class public final Lio/sentry/android/core/internal/util/DeviceOrientations;
.super Ljava/lang/Object;
.source "DeviceOrientations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 1
    .param p0, "orientation"    # I

    .line 19
    packed-switch p0, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 21
    :pswitch_0
    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object v0

    .line 23
    :pswitch_1
    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
