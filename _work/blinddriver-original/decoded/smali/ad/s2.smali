.class public final Lad/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/q;
.implements Ln/s1;
.implements Lr0/c;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lad/s2;->l:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 28
    new-array v0, v0, [Lad/s2;

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lad/s2;->m:I

    .line 30
    iput v0, p0, Lad/s2;->n:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lad/s2;->l:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shl-int/lit8 v0, p1, 0x1

    .line 32
    new-array v0, v0, [D

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    .line 33
    iput p1, p0, Lad/s2;->m:I

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lad/s2;->n:I

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 1
    iput p1, p0, Lad/s2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    iput p3, p0, Lad/s2;->l:I

    packed-switch p3, :pswitch_data_0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x2

    .line 15
    new-array p3, p3, [I

    const/4 v0, 0x1

    aput p1, p3, v0

    const/4 v0, 0x0

    aput p2, p3, v0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[B

    iput-object p3, p0, Lad/s2;->o:Ljava/lang/Object;

    .line 16
    iput p1, p0, Lad/s2;->m:I

    .line 17
    iput p2, p0, Lad/s2;->n:I

    return-void

    .line 18
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 19
    iput-object p3, p0, Lad/s2;->o:Ljava/lang/Object;

    .line 20
    iput p1, p0, Lad/s2;->m:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 21
    :cond_0
    iput p1, p0, Lad/s2;->n:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(IILad/s2;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lad/s2;->l:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p2, p1

    .line 36
    iput p2, p0, Lad/s2;->m:I

    .line 37
    iget-object p2, p3, Lad/s2;->o:Ljava/lang/Object;

    check-cast p2, [D

    iput-object p2, p0, Lad/s2;->o:Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    .line 38
    iput p1, p0, Lad/s2;->n:I

    return-void
.end method

.method public constructor <init>(IILn/v;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lad/s2;->l:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lad/s2;->m:I

    .line 41
    iput p2, p0, Lad/s2;->n:I

    .line 42
    new-instance v0, Lg5/i;

    new-instance v1, Ln/a0;

    invoke-direct {v1, p1, p2, p3}, Ln/a0;-><init>(IILn/v;)V

    invoke-direct {v0, v1}, Lg5/i;-><init>(Ln/y;)V

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lad/s2;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x3f

    add-long/2addr p1, v0

    const/4 v0, 0x6

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    .line 4
    iput p1, p0, Lad/s2;->m:I

    .line 5
    new-array p2, p1, [I

    iput-object p2, p0, Lad/s2;->o:Ljava/lang/Object;

    .line 6
    iput p1, p0, Lad/s2;->n:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "numBits="

    .line 8
    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 2
    iput p4, p0, Lad/s2;->l:I

    iput p2, p0, Lad/s2;->m:I

    iput p3, p0, Lad/s2;->n:I

    iput-object p1, p0, Lad/s2;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr0/c;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lad/s2;->l:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/s2;->o:Ljava/lang/Object;

    iput p2, p0, Lad/s2;->m:I

    return-void
.end method

.method public constructor <init>(Lu2/q;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lad/s2;->l:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lad/s2;->o:Ljava/lang/Object;

    .line 24
    iput p2, p0, Lad/s2;->m:I

    .line 25
    iput p3, p0, Lad/s2;->n:I

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    iget p0, p0, Lad/s2;->n:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public B(ILv5/e;)V
    .locals 13

    invoke-virtual {p0, p1}, Lad/s2;->K(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lad/s2;->A(I)I

    move-result p1

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide v1, p0, v0

    aget-wide v3, p0, p1

    iget-wide v5, p2, Lv5/e;->a:D

    neg-double v7, v3

    iget-wide v9, p2, Lv5/e;->b:D

    mul-double/2addr v7, v9

    mul-double v11, v1, v5

    add-double/2addr v11, v7

    aput-wide v11, p0, v0

    mul-double/2addr v3, v5

    mul-double/2addr v1, v9

    add-double/2addr v1, v3

    aput-wide v1, p0, p1

    return-void
.end method

.method public C(ILv5/e;)V
    .locals 13

    invoke-virtual {p0, p1}, Lad/s2;->K(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lad/s2;->A(I)I

    move-result p1

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide v1, p0, v0

    aget-wide v3, p0, p1

    neg-double v5, v1

    iget-wide v7, p2, Lv5/e;->b:D

    neg-double v3, v3

    iget-wide v9, p2, Lv5/e;->a:D

    mul-double v11, v3, v9

    mul-double/2addr v5, v7

    add-double/2addr v5, v11

    aput-wide v5, p0, v0

    mul-double/2addr v3, v7

    mul-double/2addr v1, v9

    add-double/2addr v1, v3

    aput-wide v1, p0, p1

    return-void
.end method

.method public D(ILv5/e;)V
    .locals 13

    invoke-virtual {p0, p1}, Lad/s2;->K(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lad/s2;->A(I)I

    move-result p1

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide v1, p0, v0

    aget-wide v3, p0, p1

    iget-wide v5, p2, Lv5/e;->a:D

    iget-wide v7, p2, Lv5/e;->b:D

    mul-double v9, v3, v7

    mul-double v11, v1, v5

    add-double/2addr v11, v9

    aput-wide v11, p0, v0

    neg-double v0, v1

    mul-double/2addr v3, v5

    mul-double/2addr v0, v7

    add-double/2addr v0, v3

    aput-wide v0, p0, p1

    return-void
.end method

.method public E(ILv5/e;)V
    .locals 13

    invoke-virtual {p0, p1}, Lad/s2;->K(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lad/s2;->A(I)I

    move-result p1

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide v1, p0, v0

    aget-wide v3, p0, p1

    neg-double v1, v1

    iget-wide v5, p2, Lv5/e;->b:D

    iget-wide v7, p2, Lv5/e;->a:D

    mul-double v9, v3, v7

    mul-double v11, v1, v5

    add-double/2addr v11, v9

    aput-wide v11, p0, v0

    neg-double v3, v3

    mul-double/2addr v3, v5

    mul-double/2addr v1, v7

    add-double/2addr v1, v3

    aput-wide v1, p0, p1

    return-void
.end method

.method public F(Lad/s2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lad/s2;->n:I

    iget-object v1, v1, Lad/s2;->o:Ljava/lang/Object;

    check-cast v1, [D

    iget v3, v0, Lad/s2;->n:I

    iget v4, v0, Lad/s2;->m:I

    add-int/2addr v4, v3

    shl-int/lit8 v4, v4, 0x1

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v5, v0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v5, [D

    aget-wide v6, v5, v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v9, v5, v8

    aget-wide v11, v1, v2

    add-int/lit8 v13, v2, 0x1

    aget-wide v13, v1, v13

    move-object/from16 p1, v1

    neg-double v0, v9

    mul-double/2addr v0, v13

    mul-double v15, v6, v11

    add-double/2addr v15, v0

    aput-wide v15, v5, v3

    mul-double/2addr v9, v11

    mul-double/2addr v6, v13

    add-double/2addr v6, v9

    aput-wide v6, v5, v8

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(Ljava/util/Iterator;)V
    .locals 3

    iget v0, p0, Lad/s2;->m:I

    iget v1, p0, Lad/s2;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v1, [Ljava/util/Iterator;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lad/s2;->m:I

    aput-object p1, v1, v0

    return-void

    :cond_0
    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [Ljava/util/Iterator;

    if-nez v0, :cond_1

    const/16 v0, 0xa

    iput v0, p0, Lad/s2;->n:I

    new-array v0, v0, [Ljava/util/Iterator;

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    const/16 v2, 0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0xfa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lad/s2;->n:I

    iget-object v1, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v1, [Ljava/util/Iterator;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Iterator;

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [Ljava/util/Iterator;

    iget v1, p0, Lad/s2;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lad/s2;->m:I

    aput-object p1, v0, v1

    return-void
.end method

.method public H(Lp6/f;)V
    .locals 3

    iget v0, p0, Lad/s2;->m:I

    iget v1, p0, Lad/s2;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v1, [Lp6/f;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lad/s2;->m:I

    aput-object p1, v1, v0

    return-void

    :cond_0
    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [Lp6/f;

    if-nez v0, :cond_1

    const/16 v0, 0xa

    iput v0, p0, Lad/s2;->n:I

    new-array v0, v0, [Lp6/f;

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    const/16 v2, 0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0xfa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lad/s2;->n:I

    iget-object v1, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v1, [Lp6/f;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp6/f;

    iput-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [Lp6/f;

    iget v1, p0, Lad/s2;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lad/s2;->m:I

    aput-object p1, v0, v1

    return-void
.end method

.method public I(I)D
    .locals 1

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [D

    shl-int/lit8 p1, p1, 0x1

    iget p0, p0, Lad/s2;->n:I

    add-int/2addr p1, p0

    aget-wide p0, v0, p1

    return-wide p0
.end method

.method public J(DI)V
    .locals 1

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [D

    shl-int/lit8 p3, p3, 0x1

    iget p0, p0, Lad/s2;->n:I

    add-int/2addr p3, p0

    aput-wide p1, v0, p3

    return-void
.end method

.method public K(I)I
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    iget p0, p0, Lad/s2;->n:I

    add-int/2addr p1, p0

    return p1
.end method

.method public L(IDD)V
    .locals 0

    invoke-virtual {p0, p1}, Lad/s2;->K(I)I

    move-result p1

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [D

    aput-wide p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aput-wide p4, p0, p1

    return-void
.end method

.method public M(III)V
    .locals 0

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public N()V
    .locals 12

    iget v0, p0, Lad/s2;->n:I

    iget v1, p0, Lad/s2;->m:I

    add-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v2, [D

    aget-wide v3, v2, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v2, v5

    neg-double v8, v6

    mul-double/2addr v8, v6

    mul-double v10, v3, v3

    add-double/2addr v10, v8

    aput-wide v10, v2, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v8

    mul-double/2addr v3, v6

    aput-wide v3, v2, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O()Ljava/math/BigInteger;
    .locals 4

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [I

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget v3, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public c(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, Lr0/c;

    iget v1, p0, Lad/s2;->n:I

    if-nez v1, :cond_0

    iget p0, p0, Lad/s2;->m:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Lr0/c;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lad/s2;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lad/s2;->n:I

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, Lr0/c;

    invoke-interface {p0, p1}, Lr0/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, Lr0/c;

    invoke-interface {p0}, Lr0/c;->e()V

    return-void
.end method

.method public f(III)V
    .locals 1

    iget v0, p0, Lad/s2;->n:I

    if-nez v0, :cond_0

    iget v0, p0, Lad/s2;->m:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, Lr0/c;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-interface {p0, p1, p2, p3}, Lr0/c;->f(III)V

    return-void
.end method

.method public g(II)V
    .locals 2

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, Lr0/c;

    iget v1, p0, Lad/s2;->n:I

    if-nez v1, :cond_0

    iget p0, p0, Lad/s2;->m:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Lr0/c;->g(II)V

    return-void
.end method

.method public i(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 6

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lg5/i;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lg5/i;->i(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0
.end method

.method public j(I)I
    .locals 2

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, Lu2/q;

    invoke-interface {v0, p1}, Lu2/q;->j(I)I

    move-result v0

    if-ltz p1, :cond_0

    iget v1, p0, Lad/s2;->n:I

    if-gt p1, v1, :cond_0

    iget p0, p0, Lad/s2;->m:I

    invoke-static {v0, p0, p1}, Lb0/i3;->c(III)V

    :cond_0
    return v0
.end method

.method public k()V
    .locals 1

    iget v0, p0, Lad/s2;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "OffsetApplier up called with no corresponding down"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lad/s2;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lad/s2;->n:I

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, Lr0/c;

    invoke-interface {p0}, Lr0/c;->k()V

    return-void
.end method

.method public l(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, Lr0/c;

    iget v1, p0, Lad/s2;->n:I

    if-nez v1, :cond_0

    iget p0, p0, Lad/s2;->m:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Lr0/c;->l(ILjava/lang/Object;)V

    return-void
.end method

.method public n()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, Lr0/c;

    invoke-interface {p0}, Lr0/c;->n()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lad/s2;->n:I

    return p0
.end method

.method public p(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 6

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lg5/i;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lg5/i;->p(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0
.end method

.method public q(Li9/e;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, Lr0/c;

    invoke-interface {p0, p1, p2}, Lr0/c;->q(Li9/e;Ljava/lang/Object;)V

    return-void
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lad/s2;->m:I

    return p0
.end method

.method public s(I)I
    .locals 2

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, Lu2/q;

    invoke-interface {v0, p1}, Lu2/q;->s(I)I

    move-result v0

    if-ltz p1, :cond_0

    iget v1, p0, Lad/s2;->m:I

    if-gt p1, v1, :cond_0

    iget p0, p0, Lad/s2;->n:I

    invoke-static {v0, p0, p1}, Lb0/i3;->b(III)V

    :cond_0
    return v0
.end method

.method public t(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget p1, p0, Lad/s2;->m:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v4, [I

    aget v5, v4, p1

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v5, v0

    long-to-int v0, v5

    aput v0, v4, p1

    const/16 v0, 0x20

    ushr-long v0, v5, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lad/s2;->n:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lad/s2;->n:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lad/s2;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lad/s2;->m:I

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lad/s2;->n:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v5, [[B

    aget-object v5, v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_2

    aget-byte v7, v5, v6

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v7, " 1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v7, " 0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lad/s2;)V
    .locals 14

    iget v0, p1, Lad/s2;->n:I

    iget-object p1, p1, Lad/s2;->o:Ljava/lang/Object;

    check-cast p1, [D

    iget v1, p0, Lad/s2;->n:I

    iget v2, p0, Lad/s2;->m:I

    add-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v3, [D

    aget-wide v4, v3, v1

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v3, v6

    aget-wide v9, p1, v0

    add-int/lit8 v11, v0, 0x1

    aget-wide v12, p1, v11

    mul-double/2addr v12, v7

    mul-double/2addr v9, v4

    add-double/2addr v9, v12

    aput-wide v9, v3, v1

    neg-double v4, v4

    aget-wide v9, p1, v11

    aget-wide v11, p1, v0

    mul-double/2addr v7, v11

    mul-double/2addr v4, v9

    add-double/2addr v4, v7

    aput-wide v4, v3, v6

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Lad/s2;)V
    .locals 9

    iget v0, p1, Lad/s2;->n:I

    iget-object p1, p1, Lad/s2;->o:Ljava/lang/Object;

    check-cast p1, [D

    iget v1, p0, Lad/s2;->n:I

    iget v2, p0, Lad/s2;->m:I

    add-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v3, [D

    aget-wide v4, v3, v1

    aget-wide v6, p1, v0

    mul-double/2addr v6, v4

    aput-wide v6, v3, v1

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, 0x1

    aget-wide v7, p1, v7

    mul-double/2addr v4, v7

    aput-wide v4, v3, v6

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 9

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [I

    const v1, 0x5f5e100

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    iget p1, p0, Lad/s2;->m:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v7, p0, Lad/s2;->n:I

    if-lt p1, v7, :cond_0

    aget v7, v0, p1

    int-to-long v7, v7

    and-long/2addr v7, v3

    mul-long/2addr v7, v1

    add-long/2addr v7, v5

    long-to-int v5, v7

    aput v5, v0, p1

    const/16 v5, 0x20

    ushr-long v5, v7, v5

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_1

    long-to-int v1, v5

    aput v1, v0, p1

    iput p1, p0, Lad/s2;->n:I

    :cond_1
    return-void
.end method

.method public x(II)B
    .locals 0

    iget-object p0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    aget-byte p0, p0, p1

    return p0
.end method

.method public y(I)D
    .locals 1

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [D

    shl-int/lit8 p1, p1, 0x1

    iget p0, p0, Lad/s2;->n:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    aget-wide p0, v0, p1

    return-wide p0
.end method

.method public z(DI)V
    .locals 1

    iget-object v0, p0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [D

    shl-int/lit8 p3, p3, 0x1

    iget p0, p0, Lad/s2;->n:I

    add-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x1

    aput-wide p1, v0, p3

    return-void
.end method
