.class public final Le2/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le2/d1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(IJ)I
    .locals 1

    sget v0, Le2/c2;->b:I

    mul-int/lit8 p0, p0, 0xf

    shr-long p0, p1, p0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0x7fff

    return p0
.end method

.method public static c(IIII)J
    .locals 3

    and-int/lit16 p0, p0, 0x7fff

    int-to-long v0, p0

    and-int/lit16 p0, p1, 0x7fff

    int-to-long p0, p0

    const/16 v2, 0xf

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    and-int/lit16 p2, p2, 0x7fff

    int-to-long v0, p2

    const/16 p2, 0x1e

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    and-int/lit16 p2, p3, 0x7fff

    int-to-long p2, p2

    const/16 v0, 0x2d

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    const-wide/high16 p2, -0x8000000000000000L

    or-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Le2/d1;->a:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x8

    return p0

    :pswitch_0
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
