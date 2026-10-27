.class public final Ldb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field public l:I

.field public m:I

.field public n:Ljava/lang/Object;


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Ldb/c;->n:Ljava/lang/Object;

    iget p0, p0, Ldb/c;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    check-cast v0, [I

    aget p0, v0, v2

    return p0

    :pswitch_1
    check-cast v0, [S

    aget-short p0, v0, v2

    return p0

    :pswitch_2
    check-cast v0, [B

    aget-byte p0, v0, v2

    return p0

    :cond_0
    check-cast v0, [C

    aget-char p0, v0, v2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0

    :cond_1
    :pswitch_3
    check-cast v0, [B

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Ldb/c;->n:Ljava/lang/Object;

    iget p0, p0, Ldb/c;->m:I

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_1
    check-cast v0, [I

    aget p0, v0, v1

    int-to-long v0, p0

    return-wide v0

    :pswitch_2
    check-cast v0, [S

    aget-short p0, v0, v1

    int-to-long v0, p0

    return-wide v0

    :pswitch_3
    check-cast v0, [B

    aget-byte p0, v0, v1

    int-to-long v0, p0

    return-wide v0

    :pswitch_4
    check-cast v0, [J

    aget-wide v0, v0, v1

    return-wide v0

    :pswitch_5
    check-cast v0, [C

    aget-char p0, v0, v1

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0

    :pswitch_6
    check-cast v0, [B

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ldb/c;

    iget p1, p1, Ldb/c;->l:I

    iget p0, p0, Ldb/c;->l:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
