.class public final Lf8/n5;
.super Lf8/p5;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lf8/n5;->b:I

    invoke-direct {p0, p1}, Lf8/p5;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(JLjava/lang/Object;)B
    .locals 5

    iget p0, p0, Lf8/n5;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lf8/q5;->h:Z

    const/4 v0, 0x3

    const-wide/16 v1, 0x3

    const-wide/16 v3, -0x4

    if-eqz p0, :cond_0

    and-long/2addr v3, p1

    sget-object p0, Lf8/q5;->d:Lf8/p5;

    invoke-virtual {p0, v3, v4, p3}, Lf8/p5;->d(JLjava/lang/Object;)I

    move-result p0

    not-long p1, p1

    :goto_0
    and-long/2addr p1, v1

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    goto :goto_1

    :cond_0
    and-long/2addr v3, p1

    sget-object p0, Lf8/q5;->d:Lf8/p5;

    invoke-virtual {p0, v3, v4, p3}, Lf8/p5;->d(JLjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :goto_1
    return p0

    :pswitch_0
    sget-boolean p0, Lf8/q5;->h:Z

    const/4 v0, 0x3

    const-wide/16 v1, 0x3

    const-wide/16 v3, -0x4

    if-eqz p0, :cond_1

    and-long/2addr v3, p1

    sget-object p0, Lf8/q5;->d:Lf8/p5;

    invoke-virtual {p0, v3, v4, p3}, Lf8/p5;->d(JLjava/lang/Object;)I

    move-result p0

    not-long p1, p1

    :goto_2
    and-long/2addr p1, v1

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    goto :goto_3

    :cond_1
    and-long/2addr v3, p1

    sget-object p0, Lf8/q5;->d:Lf8/p5;

    invoke-virtual {p0, v3, v4, p3}, Lf8/p5;->d(JLjava/lang/Object;)I

    move-result p0

    goto :goto_2

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
