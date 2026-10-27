.class public final Lc2/j;
.super Lc2/f1;
.source "SourceFile"


# instance fields
.field public final synthetic q:I


# direct methods
.method public constructor <init>(III)V
    .locals 4

    iput p3, p0, Lc2/j;->q:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0}, Lc2/f1;-><init>()V

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lc2/f1;->q0(J)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lc2/f1;-><init>()V

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lc2/f1;->q0(J)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lc2/f1;-><init>()V

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lc2/f1;->q0(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final s0(JFLi9/c;)V
    .locals 0

    return-void
.end method

.method private final t0(JFLi9/c;)V
    .locals 0

    return-void
.end method

.method private final v0(JFLi9/c;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final d0(Lc2/a;)I
    .locals 0

    iget p0, p0, Lc2/j;->q:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    const/high16 p0, -0x80000000

    return p0

    :pswitch_1
    const/high16 p0, -0x80000000

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o0(JFLi9/c;)V
    .locals 0

    iget p0, p0, Lc2/j;->q:I

    return-void
.end method
