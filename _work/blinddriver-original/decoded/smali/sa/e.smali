.class public final Lsa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:Lbb/p;

.field public d:[Lsa/d;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lsa/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lsa/e;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsa/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lbb/p;

    invoke-direct {v0, p1}, Lbb/p;-><init>(Lbb/u;)V

    iput-object v0, p0, Lsa/e;->c:Lbb/p;

    const/16 p1, 0x8

    new-array p1, p1, [Lsa/d;

    iput-object p1, p0, Lsa/e;->d:[Lsa/d;

    const/4 p1, 0x7

    iput p1, p0, Lsa/e;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lsa/e;->d:[Lsa/d;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lsa/e;->e:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lsa/e;->d:[Lsa/d;

    aget-object v2, v2, v1

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v2, v2, Lsa/d;->c:I

    sub-int/2addr p1, v2

    iget v3, p0, Lsa/e;->g:I

    sub-int/2addr v3, v2

    iput v3, p0, Lsa/e;->g:I

    iget v2, p0, Lsa/e;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsa/e;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lsa/e;->d:[Lsa/d;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lsa/e;->f:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lsa/e;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lsa/e;->e:I

    :cond_1
    return v0
.end method

.method public final b(I)Lbb/j;
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lsa/g;->a:[Lsa/d;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    aget-object p0, v0, p1

    iget-object p0, p0, Lsa/d;->a:Lbb/j;

    return-object p0

    :cond_0
    sget-object v0, Lsa/g;->a:[Lsa/d;

    array-length v0, v0

    sub-int v0, p1, v0

    iget v1, p0, Lsa/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    iget-object p0, p0, Lsa/e;->d:[Lsa/d;

    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object p0, p0, v1

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lsa/d;->a:Lbb/j;

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Header index too large "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lsa/d;)V
    .locals 6

    iget-object v0, p0, Lsa/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lsa/d;->c:I

    iget v1, p0, Lsa/e;->a:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lsa/e;->d:[Lsa/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    iget-object p1, p0, Lsa/e;->d:[Lsa/d;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lsa/e;->e:I

    iput v2, p0, Lsa/e;->f:I

    iput v2, p0, Lsa/e;->g:I

    return-void

    :cond_0
    iget v3, p0, Lsa/e;->g:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lsa/e;->a(I)I

    iget v1, p0, Lsa/e;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lsa/e;->d:[Lsa/d;

    array-length v4, v3

    if-le v1, v4, :cond_1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lsa/d;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsa/e;->d:[Lsa/d;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsa/e;->e:I

    iput-object v1, p0, Lsa/e;->d:[Lsa/d;

    :cond_1
    iget v1, p0, Lsa/e;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lsa/e;->e:I

    iget-object v2, p0, Lsa/e;->d:[Lsa/d;

    aput-object p1, v2, v1

    iget p1, p0, Lsa/e;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsa/e;->f:I

    iget p1, p0, Lsa/e;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lsa/e;->g:I

    return-void
.end method

.method public final d()Lbb/j;
    .locals 11

    iget-object v0, p0, Lsa/e;->c:Lbb/p;

    invoke-virtual {v0}, Lbb/p;->readByte()B

    move-result v1

    sget-object v2, Lma/c;->a:[B

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x80

    and-int/2addr v1, v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lsa/e;->e(II)I

    move-result p0

    int-to-long v2, p0

    if-eqz v1, :cond_6

    new-instance p0, Lbb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lsa/z;->a:[I

    const-string v1, "source"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lsa/z;->c:Lad/s2;

    const-wide/16 v5, 0x0

    move-object v8, v1

    move-wide v6, v5

    move v5, v4

    :goto_1
    cmp-long v9, v6, v2

    if-gez v9, :cond_3

    invoke-virtual {v0}, Lbb/p;->readByte()B

    move-result v9

    sget-object v10, Lma/c;->a:[B

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v5, v5, 0x8

    :goto_2
    const/16 v9, 0x8

    if-lt v5, v9, :cond_2

    add-int/lit8 v9, v5, -0x8

    ushr-int v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    iget-object v8, v8, Lad/s2;->o:Ljava/lang/Object;

    check-cast v8, [Lad/s2;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    aget-object v8, v8, v9

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v9, v8, Lad/s2;->o:Ljava/lang/Object;

    check-cast v9, [Lad/s2;

    if-nez v9, :cond_1

    iget v9, v8, Lad/s2;->m:I

    invoke-virtual {p0, v9}, Lbb/g;->X(I)V

    iget v8, v8, Lad/s2;->n:I

    sub-int/2addr v5, v8

    move-object v8, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x8

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v5, :cond_5

    rsub-int/lit8 v0, v5, 0x8

    shl-int v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, v8, Lad/s2;->o:Ljava/lang/Object;

    check-cast v2, [Lad/s2;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    aget-object v0, v2, v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v2, v0, Lad/s2;->n:I

    iget-object v3, v0, Lad/s2;->o:Ljava/lang/Object;

    check-cast v3, [Lad/s2;

    if-nez v3, :cond_5

    if-le v2, v5, :cond_4

    goto :goto_4

    :cond_4
    iget v0, v0, Lad/s2;->m:I

    invoke-virtual {p0, v0}, Lbb/g;->X(I)V

    sub-int/2addr v5, v2

    move-object v8, v1

    goto :goto_3

    :cond_5
    :goto_4
    iget-wide v0, p0, Lbb/g;->m:J

    invoke-virtual {p0, v0, v1}, Lbb/g;->f(J)Lbb/j;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v0, v2, v3}, Lbb/p;->f(J)Lbb/j;

    move-result-object p0

    return-object p0
.end method

.method public final e(II)I
    .locals 3

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lsa/e;->c:Lbb/p;

    invoke-virtual {v0}, Lbb/p;->readByte()B

    move-result v0

    sget-object v1, Lma/c;->a:[B

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p0, v1, p1

    add-int/2addr p2, p0

    return p2
.end method
