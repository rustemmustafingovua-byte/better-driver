.class public final Lr0/i0;
.super Lb2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string p1, "rememberCoroutineScope left the composition"

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lb2/b;-><init>(Ljava/lang/String;I)V

    return-void

    :pswitch_0
    const-string p1, "The coroutine scope left the composition"

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lb2/b;-><init>(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
