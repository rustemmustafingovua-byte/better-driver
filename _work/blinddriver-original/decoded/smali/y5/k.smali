.class public final Ly5/k;
.super Ly5/b;
.source "SourceFile"


# static fields
.field public static final H:[C

.field public static final I:[C


# instance fields
.field public final A:Ljava/io/Writer;

.field public final B:C

.field public C:[C

.field public D:I

.field public E:I

.field public final F:I

.field public G:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lw5/b;->c(Z)[C

    move-result-object v0

    sput-object v0, Ly5/k;->H:[C

    const/4 v0, 0x0

    invoke-static {v0}, Lw5/b;->c(Z)[C

    move-result-object v0

    sput-object v0, Ly5/k;->I:[C

    return-void
.end method

.method public constructor <init>(Lw5/d;ILs5/o;Ljava/io/Writer;C)V
    .locals 0

    invoke-direct {p0, p2, p3, p1}, Ly5/b;-><init>(ILs5/o;Lw5/d;)V

    iput-object p4, p0, Ly5/k;->A:Ljava/io/Writer;

    iget-object p2, p1, Lw5/d;->y:[C

    invoke-static {p2}, Lw5/d;->b(Ljava/lang/Object;)V

    iget-object p2, p1, Lw5/d;->p:La6/b;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, La6/b;->b(II)[C

    move-result-object p2

    iput-object p2, p1, Lw5/d;->y:[C

    iput-object p2, p0, Ly5/k;->C:[C

    array-length p1, p2

    iput p1, p0, Ly5/k;->F:I

    iput-char p5, p0, Ly5/k;->B:C

    sget-object p1, Ly5/g;->p:Ly5/g;

    iget-object p1, p1, Ly5/g;->n:Ls5/f;

    invoke-virtual {p0, p1}, Lt5/a;->q(Ls5/f;)Z

    move-result p1

    const/16 p2, 0x22

    if-ne p5, p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p5, p1}, Lw5/b;->d(IZ)[I

    move-result-object p1

    iput-object p1, p0, Ly5/b;->u:[I

    return-void
.end method

.method public static J0(Lbb/f;[BIII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, p1, v0

    move v0, v1

    move p2, v2

    goto :goto_0

    :cond_0
    array-length p2, p1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    sub-int p3, p2, v0

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Lbb/f;->read([BII)I

    move-result p3

    if-gez p3, :cond_3

    :goto_1
    return v0

    :cond_3
    add-int/2addr v0, p3

    const/4 p3, 0x3

    if-lt v0, p3, :cond_1

    return v0
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    move-result v0

    iget-object v1, p0, Ls5/g;->l:Ls5/p;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Ly5/b;->D0(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ly5/b;->C0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p1, p0, Ly5/b;->w:Ls5/q;

    if-eqz p1, :cond_3

    check-cast p1, Lw5/k;

    iget-object p1, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p1, 0x3a

    goto :goto_1

    :cond_5
    const/16 p1, 0x2c

    :goto_1
    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_6
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final C(Ls5/a;Lbb/f;I)I
    .locals 5

    const-string v0, "Too few bytes available: missing "

    const-string v1, "write a binary value"

    invoke-virtual {p0, v1}, Ly5/k;->B0(Ljava/lang/String;)V

    iget v1, p0, Ly5/k;->E:I

    iget v2, p0, Ly5/k;->F:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v1, p0, Ly5/k;->C:[C

    iget v3, p0, Ly5/k;->E:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ly5/k;->E:I

    iget-char v4, p0, Ly5/k;->B:C

    aput-char v4, v1, v3

    iget-object v1, p0, Lt5/a;->o:Lw5/d;

    invoke-virtual {v1}, Lw5/d;->c()[B

    move-result-object v3

    if-gez p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Ly5/k;->K0(Ls5/a;Lbb/f;[B)I

    move-result p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v3, p3}, Ly5/k;->L0(Ls5/a;Lbb/f;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v3}, Lw5/d;->d([B)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    iget-object p1, p0, Ly5/k;->C:[C

    iget p2, p0, Ly5/k;->E:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Ly5/k;->E:I

    aput-char v4, p1, p2

    return p3

    :cond_3
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes (out of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1, v3}, Lw5/d;->d([B)V

    throw p0
.end method

.method public final E0()[C
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x75

    aput-char v3, v0, v1

    const/4 v1, 0x4

    const/16 v4, 0x30

    aput-char v4, v0, v1

    const/4 v1, 0x5

    aput-char v4, v0, v1

    const/16 v1, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v3, v0, v1

    iput-object v0, p0, Ly5/k;->G:[C

    return-object v0
.end method

.method public final F0(CI)V
    .locals 6

    const/16 v0, 0x5c

    iget v1, p0, Ly5/k;->F:I

    if-ltz p2, :cond_1

    iget p1, p0, Ly5/k;->E:I

    add-int/lit8 p1, p1, 0x2

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object p1, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char v0, p1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ly5/k;->E:I

    int-to-char p0, p2

    aput-char p0, p1, v2

    return-void

    :cond_1
    const/4 v2, -0x2

    if-eq p2, v2, :cond_5

    iget p2, p0, Ly5/k;->E:I

    add-int/lit8 p2, p2, 0x5

    if-lt p2, v1, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    iget p2, p0, Ly5/k;->E:I

    iget-object v1, p0, Ly5/k;->C:[C

    iget-boolean v2, p0, Ly5/b;->y:Z

    if-eqz v2, :cond_3

    sget-object v2, Ly5/k;->H:[C

    goto :goto_0

    :cond_3
    sget-object v2, Ly5/k;->I:[C

    :goto_0
    add-int/lit8 v3, p2, 0x1

    aput-char v0, v1, p2

    add-int/lit8 v0, p2, 0x2

    const/16 v4, 0x75

    aput-char v4, v1, v3

    const/16 v3, 0xff

    if-le p1, v3, :cond_4

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v5, p2, 0x3

    shr-int/lit8 v4, v4, 0x4

    aget-char v4, v2, v4

    aput-char v4, v1, v0

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 v0, v3, 0xf

    aget-char v0, v2, v0

    aput-char v0, v1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p2, 0x3

    const/16 v4, 0x30

    aput-char v4, v1, v0

    add-int/lit8 p2, p2, 0x4

    aput-char v4, v1, v3

    :goto_1
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v3, p1, 0x4

    aget-char v3, v2, v3

    aput-char v3, v1, p2

    add-int/lit8 p2, p2, 0x2

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v2, p1

    aput-char p1, v1, v0

    iput p2, p0, Ly5/k;->E:I

    return-void

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public final G0()V
    .locals 3

    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->D:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Ly5/k;->D:I

    iput v2, p0, Ly5/k;->E:I

    iget-object v2, p0, Ly5/k;->A:Ljava/io/Writer;

    iget-object p0, p0, Ly5/k;->C:[C

    invoke-virtual {v2, p0, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method

.method public final H0([CIICI)I
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0x5c

    iget-object v2, p0, Ly5/k;->A:Ljava/io/Writer;

    if-ltz p5, :cond_2

    const/4 p4, 0x1

    if-le p2, p4, :cond_0

    if-ge p2, p3, :cond_0

    add-int/lit8 p0, p2, -0x2

    aput-char v1, p1, p0

    add-int/lit8 p2, p2, -0x1

    int-to-char p3, p5

    aput-char p3, p1, p2

    return p0

    :cond_0
    iget-object p1, p0, Ly5/k;->G:[C

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ly5/k;->E0()[C

    move-result-object p1

    :cond_1
    int-to-char p0, p5

    aput-char p0, p1, p4

    const/4 p0, 0x0

    invoke-virtual {v2, p1, p0, v0}, Ljava/io/Writer;->write([CII)V

    return p2

    :cond_2
    const/4 v3, -0x2

    if-eq p5, v3, :cond_8

    iget-boolean p5, p0, Ly5/b;->y:Z

    if-eqz p5, :cond_3

    sget-object p5, Ly5/k;->H:[C

    goto :goto_0

    :cond_3
    sget-object p5, Ly5/k;->I:[C

    :goto_0
    const/4 v4, 0x5

    const/16 v5, 0xff

    if-le p2, v4, :cond_5

    if-ge p2, p3, :cond_5

    add-int/lit8 p0, p2, -0x6

    add-int/lit8 p3, p2, -0x5

    aput-char v1, p1, p0

    add-int/lit8 p0, p2, -0x4

    const/16 v0, 0x75

    aput-char v0, p1, p3

    if-le p4, v5, :cond_4

    shr-int/lit8 p3, p4, 0x8

    and-int/lit16 v0, p3, 0xff

    add-int/lit8 v1, p2, -0x3

    shr-int/lit8 v0, v0, 0x4

    aget-char v0, p5, v0

    aput-char v0, p1, p0

    add-int/2addr p2, v3

    and-int/lit8 p0, p3, 0xf

    aget-char p0, p5, p0

    aput-char p0, p1, v1

    and-int/lit16 p0, p4, 0xff

    int-to-char p4, p0

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p2, -0x3

    const/16 v0, 0x30

    aput-char v0, p1, p0

    add-int/2addr p2, v3

    aput-char v0, p1, p3

    :goto_1
    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 p3, p4, 0x4

    aget-char p3, p5, p3

    aput-char p3, p1, p2

    and-int/lit8 p3, p4, 0xf

    aget-char p3, p5, p3

    aput-char p3, p1, p0

    add-int/lit8 p2, p2, -0x4

    return p2

    :cond_5
    iget-object p1, p0, Ly5/k;->G:[C

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ly5/k;->E0()[C

    move-result-object p1

    :cond_6
    iget p3, p0, Ly5/k;->E:I

    iput p3, p0, Ly5/k;->D:I

    const/4 p0, 0x6

    if-le p4, v5, :cond_7

    shr-int/lit8 p3, p4, 0x8

    and-int/lit16 v0, p3, 0xff

    and-int/lit16 v1, p4, 0xff

    shr-int/lit8 v0, v0, 0x4

    aget-char v0, p5, v0

    const/16 v3, 0xa

    aput-char v0, p1, v3

    and-int/lit8 p3, p3, 0xf

    aget-char p3, p5, p3

    const/16 v0, 0xb

    aput-char p3, p1, v0

    shr-int/lit8 p3, v1, 0x4

    aget-char p3, p5, p3

    const/16 v0, 0xc

    aput-char p3, p1, v0

    and-int/lit8 p3, p4, 0xf

    aget-char p3, p5, p3

    const/16 p4, 0xd

    aput-char p3, p1, p4

    const/16 p3, 0x8

    invoke-virtual {v2, p1, p3, p0}, Ljava/io/Writer;->write([CII)V

    return p2

    :cond_7
    shr-int/lit8 p3, p4, 0x4

    aget-char p3, p5, p3

    aput-char p3, p1, p0

    and-int/lit8 p3, p4, 0xf

    aget-char p3, p5, p3

    const/4 p4, 0x7

    aput-char p3, p1, p4

    invoke-virtual {v2, p1, v0, p0}, Ljava/io/Writer;->write([CII)V

    return p2

    :cond_8
    const/4 p0, 0x0

    throw p0
.end method

.method public final I0(CI)V
    .locals 6

    const/16 v0, 0x5c

    iget-object v1, p0, Ly5/k;->A:Ljava/io/Writer;

    const/4 v2, 0x2

    if-ltz p2, :cond_2

    iget p1, p0, Ly5/k;->E:I

    const/4 v3, 0x1

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    iput v1, p0, Ly5/k;->D:I

    iget-object p0, p0, Ly5/k;->C:[C

    sub-int/2addr p1, v3

    aput-char v0, p0, v1

    int-to-char p2, p2

    aput-char p2, p0, p1

    return-void

    :cond_0
    iget-object p1, p0, Ly5/k;->G:[C

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ly5/k;->E0()[C

    move-result-object p1

    :cond_1
    iget v0, p0, Ly5/k;->E:I

    iput v0, p0, Ly5/k;->D:I

    int-to-char p0, p2

    aput-char p0, p1, v3

    const/4 p0, 0x0

    invoke-virtual {v1, p1, p0, v2}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_2
    const/4 v3, -0x2

    if-eq p2, v3, :cond_8

    iget-boolean p2, p0, Ly5/b;->y:Z

    if-eqz p2, :cond_3

    sget-object p2, Ly5/k;->H:[C

    goto :goto_0

    :cond_3
    sget-object p2, Ly5/k;->I:[C

    :goto_0
    iget v3, p0, Ly5/k;->E:I

    const/4 v4, 0x6

    const/16 v5, 0xff

    if-lt v3, v4, :cond_5

    iget-object v1, p0, Ly5/k;->C:[C

    add-int/lit8 v4, v3, -0x6

    iput v4, p0, Ly5/k;->D:I

    aput-char v0, v1, v4

    add-int/lit8 p0, v3, -0x5

    const/16 v0, 0x75

    aput-char v0, v1, p0

    if-le p1, v5, :cond_4

    shr-int/lit8 p0, p1, 0x8

    and-int/lit16 v0, p0, 0xff

    add-int/lit8 v4, v3, -0x4

    shr-int/lit8 v0, v0, 0x4

    aget-char v0, p2, v0

    aput-char v0, v1, v4

    add-int/lit8 v3, v3, -0x3

    and-int/lit8 p0, p0, 0xf

    aget-char p0, p2, p0

    aput-char p0, v1, v3

    and-int/lit16 p0, p1, 0xff

    int-to-char p1, p0

    goto :goto_1

    :cond_4
    add-int/lit8 p0, v3, -0x4

    const/16 v0, 0x30

    aput-char v0, v1, p0

    add-int/lit8 v3, v3, -0x3

    aput-char v0, v1, v3

    :goto_1
    add-int/lit8 p0, v3, 0x1

    shr-int/lit8 v0, p1, 0x4

    aget-char v0, p2, v0

    aput-char v0, v1, p0

    add-int/2addr v3, v2

    and-int/lit8 p0, p1, 0xf

    aget-char p0, p2, p0

    aput-char p0, v1, v3

    return-void

    :cond_5
    iget-object v0, p0, Ly5/k;->G:[C

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ly5/k;->E0()[C

    move-result-object v0

    :cond_6
    iget v3, p0, Ly5/k;->E:I

    iput v3, p0, Ly5/k;->D:I

    if-le p1, v5, :cond_7

    shr-int/lit8 p0, p1, 0x8

    and-int/lit16 v2, p0, 0xff

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v2, v2, 0x4

    aget-char v2, p2, v2

    const/16 v5, 0xa

    aput-char v2, v0, v5

    and-int/lit8 p0, p0, 0xf

    aget-char p0, p2, p0

    const/16 v2, 0xb

    aput-char p0, v0, v2

    shr-int/lit8 p0, v3, 0x4

    aget-char p0, p2, p0

    const/16 v2, 0xc

    aput-char p0, v0, v2

    and-int/lit8 p0, p1, 0xf

    aget-char p0, p2, p0

    const/16 p1, 0xd

    aput-char p0, v0, p1

    const/16 p0, 0x8

    invoke-virtual {v1, v0, p0, v4}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_7
    shr-int/lit8 p0, p1, 0x4

    aget-char p0, p2, p0

    aput-char p0, v0, v4

    and-int/lit8 p0, p1, 0xf

    aget-char p0, p2, p0

    const/4 p1, 0x7

    aput-char p0, v0, p1

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_8
    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Ls5/a;[BII)V
    .locals 9

    invoke-virtual {p0, p2, p3, p4}, Lt5/a;->y0([BII)V

    const-string v0, "write a binary value"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/k;->E:I

    iget-char v3, p0, Ly5/k;->B:C

    aput-char v3, v0, v2

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    add-int/lit8 v2, v1, -0x6

    iget v4, p1, Ls5/a;->q:I

    const/4 v5, 0x2

    :goto_0
    shr-int/2addr v4, v5

    :cond_1
    if-gt p3, v0, :cond_3

    iget v6, p0, Ly5/k;->E:I

    if-le v6, v2, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    add-int/lit8 v6, p3, 0x1

    aget-byte v7, p2, p3

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p3, 0x2

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 p3, p3, 0x3

    aget-byte v7, p2, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    iget-object v7, p0, Ly5/k;->C:[C

    iget v8, p0, Ly5/k;->E:I

    invoke-virtual {p1, v7, v6, v8}, Ls5/a;->h([CII)I

    move-result v6

    iput v6, p0, Ly5/k;->E:I

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_1

    iget-object v4, p0, Ly5/k;->C:[C

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ly5/k;->E:I

    const/16 v8, 0x5c

    aput-char v8, v4, v6

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Ly5/k;->E:I

    const/16 v6, 0x6e

    aput-char v6, v4, v7

    iget v4, p1, Ls5/a;->q:I

    goto :goto_0

    :cond_3
    sub-int/2addr p4, p3

    if-lez p4, :cond_6

    iget v0, p0, Ly5/k;->E:I

    if-le v0, v2, :cond_4

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_4
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v5, :cond_5

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    :cond_5
    iget-object p2, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    invoke-virtual {p1, p3, p4, v0, p2}, Ls5/a;->j(III[C)I

    move-result p1

    iput p1, p0, Ly5/k;->E:I

    :cond_6
    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v1, :cond_7

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_7
    iget-object p1, p0, Ly5/k;->C:[C

    iget p2, p0, Ly5/k;->E:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Ly5/k;->E:I

    aput-char v3, p1, p2

    return-void
.end method

.method public final K(Z)V
    .locals 4

    const-string v0, "write a boolean value"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget-object v1, p0, Ly5/k;->C:[C

    const/16 v2, 0x65

    if-eqz p1, :cond_1

    const/16 p1, 0x74

    aput-char p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    const/16 v3, 0x72

    aput-char v3, v1, p1

    add-int/lit8 p1, v0, 0x2

    const/16 v3, 0x75

    aput-char v3, v1, p1

    add-int/lit8 v0, v0, 0x3

    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    aput-char p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    const/16 v3, 0x61

    aput-char v3, v1, p1

    add-int/lit8 p1, v0, 0x2

    const/16 v3, 0x6c

    aput-char v3, v1, p1

    add-int/lit8 p1, v0, 0x3

    const/16 v3, 0x73

    aput-char v3, v1, p1

    add-int/lit8 v0, v0, 0x4

    aput-char v2, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly5/k;->E:I

    return-void
.end method

.method public final K0(Ls5/a;Lbb/f;[B)I
    .locals 12

    iget v0, p0, Ly5/k;->F:I

    add-int/lit8 v0, v0, -0x6

    iget v1, p1, Ls5/a;->q:I

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, -0x3

    move v5, v3

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    const/4 v8, 0x3

    if-le v5, v4, :cond_5

    array-length v4, p3

    invoke-static {p2, p3, v5, v6, v4}, Ly5/k;->J0(Lbb/f;[BIII)I

    move-result v6

    if-ge v6, v8, :cond_4

    if-lez v6, :cond_3

    iget p2, p0, Ly5/k;->E:I

    if-le p2, v0, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    aget-byte p2, p3, v3

    shl-int/lit8 p2, p2, 0x10

    const/4 v0, 0x1

    if-ge v0, v6, :cond_2

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v7, v2

    iget-object p3, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    invoke-virtual {p1, p2, v2, v0, p3}, Ls5/a;->j(III[C)I

    move-result p1

    iput p1, p0, Ly5/k;->E:I

    :cond_3
    return v7

    :cond_4
    add-int/lit8 v4, v6, -0x3

    move v5, v3

    :cond_5
    iget v9, p0, Ly5/k;->E:I

    if-le v9, v0, :cond_6

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_6
    add-int/lit8 v9, v5, 0x1

    aget-byte v10, p3, v5

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v5, 0x2

    aget-byte v9, p3, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v5, v8

    aget-byte v8, p3, v11

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x3

    iget-object v9, p0, Ly5/k;->C:[C

    iget v10, p0, Ly5/k;->E:I

    invoke-virtual {p1, v9, v8, v10}, Ls5/a;->h([CII)I

    move-result v8

    iput v8, p0, Ly5/k;->E:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Ly5/k;->C:[C

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ly5/k;->E:I

    const/16 v10, 0x5c

    aput-char v10, v1, v8

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Ly5/k;->E:I

    const/16 v8, 0x6e

    aput-char v8, v1, v9

    iget v1, p1, Ls5/a;->q:I

    shr-int/2addr v1, v2

    goto :goto_0
.end method

.method public final L0(Ls5/a;Lbb/f;[BI)I
    .locals 11

    iget v0, p0, Ly5/k;->F:I

    add-int/lit8 v0, v0, -0x6

    iget v1, p1, Ls5/a;->q:I

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, -0x3

    move v5, v3

    move v6, v5

    :cond_0
    :goto_0
    if-le p4, v2, :cond_4

    const/4 v7, 0x3

    if-le v5, v4, :cond_2

    invoke-static {p2, p3, v5, v6, p4}, Ly5/k;->J0(Lbb/f;[BIII)I

    move-result v6

    if-ge v6, v7, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v6, -0x3

    move v5, v3

    :cond_2
    iget v8, p0, Ly5/k;->E:I

    if-le v8, v0, :cond_3

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_3
    add-int/lit8 v8, v5, 0x1

    aget-byte v9, p3, v5

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v5, 0x2

    aget-byte v8, p3, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v5, v7

    aget-byte v7, p3, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    add-int/lit8 p4, p4, -0x3

    iget-object v8, p0, Ly5/k;->C:[C

    iget v9, p0, Ly5/k;->E:I

    invoke-virtual {p1, v8, v7, v9}, Ls5/a;->h([CII)I

    move-result v7

    iput v7, p0, Ly5/k;->E:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Ly5/k;->C:[C

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ly5/k;->E:I

    const/16 v9, 0x5c

    aput-char v9, v1, v7

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Ly5/k;->E:I

    const/16 v7, 0x6e

    aput-char v7, v1, v8

    iget v1, p1, Ls5/a;->q:I

    shr-int/2addr v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-lez p4, :cond_7

    invoke-static {p2, p3, v5, v6, p4}, Ly5/k;->J0(Lbb/f;[BIII)I

    move-result p2

    if-lez p2, :cond_7

    iget v1, p0, Ly5/k;->E:I

    if-le v1, v0, :cond_5

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_5
    aget-byte v0, p3, v3

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-ge v1, p2, :cond_6

    aget-byte p2, p3, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr v0, p2

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    iget-object p2, p0, Ly5/k;->C:[C

    iget p3, p0, Ly5/k;->E:I

    invoke-virtual {p1, v0, v2, p3, p2}, Ls5/a;->j(III[C)I

    move-result p1

    iput p1, p0, Ly5/k;->E:I

    sub-int/2addr p4, v2

    :cond_7
    return p4
.end method

.method public final M0()V
    .locals 4

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget-object v1, p0, Ly5/k;->C:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x6c

    aput-char v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ly5/k;->E:I

    return-void
.end method

.method public final N0(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/k;->E:I

    iget-char v3, p0, Ly5/k;->B:C

    aput-char v3, v0, v2

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v3, p1, v0

    return-void
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x0

    iget-object v9, v0, Ly5/k;->A:Ljava/io/Writer;

    iget v10, v0, Ly5/k;->F:I

    if-le v1, v10, :cond_b

    invoke-virtual {v0}, Ly5/k;->G0()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    move v1, v8

    :goto_0
    add-int v2, v1, v10

    if-le v2, v11, :cond_0

    sub-int v2, v11, v1

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v10

    :goto_1
    add-int v12, v1, v3

    iget-object v2, v0, Ly5/k;->C:[C

    invoke-virtual {v6, v1, v12, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    iget v13, v0, Ly5/b;->v:I

    if-eqz v13, :cond_5

    iget-object v14, v0, Ly5/b;->u:[I

    array-length v1, v14

    add-int/lit8 v2, v13, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v1, v8

    move v2, v1

    move v4, v2

    :goto_2
    if-ge v1, v3, :cond_9

    :goto_3
    iget-object v5, v0, Ly5/k;->C:[C

    move/from16 v16, v4

    aget-char v4, v5, v1

    if-ge v4, v15, :cond_1

    aget v16, v14, v4

    if-eqz v16, :cond_2

    goto :goto_4

    :cond_1
    if-le v4, v13, :cond_2

    const/16 v16, -0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_4

    :goto_4
    sub-int v7, v1, v2

    if-lez v7, :cond_3

    invoke-virtual {v9, v5, v2, v7}, Ljava/io/Writer;->write([CII)V

    if-lt v1, v3, :cond_3

    goto :goto_7

    :cond_3
    add-int/lit8 v2, v1, 0x1

    iget-object v1, v0, Ly5/k;->C:[C

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Ly5/k;->H0([CIICI)I

    move-result v1

    move v4, v2

    move v2, v1

    move v1, v4

    move v4, v5

    goto :goto_2

    :cond_4
    move/from16 v4, v16

    goto :goto_3

    :cond_5
    iget-object v7, v0, Ly5/b;->u:[I

    array-length v13, v7

    move v1, v8

    move v2, v1

    :goto_5
    if-ge v1, v3, :cond_9

    :cond_6
    iget-object v4, v0, Ly5/k;->C:[C

    aget-char v5, v4, v1

    if-ge v5, v13, :cond_7

    aget v14, v7, v5

    if-eqz v14, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_6

    :goto_6
    sub-int v14, v1, v2

    if-lez v14, :cond_8

    invoke-virtual {v9, v4, v2, v14}, Ljava/io/Writer;->write([CII)V

    if-lt v1, v3, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v1, 0x1

    iget-object v1, v0, Ly5/k;->C:[C

    move v4, v5

    aget v5, v7, v4

    invoke-virtual/range {v0 .. v5}, Ly5/k;->H0([CIICI)I

    move-result v1

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_5

    :cond_9
    :goto_7
    if-lt v12, v11, :cond_a

    goto/16 :goto_b

    :cond_a
    move v1, v12

    goto/16 :goto_0

    :cond_b
    iget v2, v0, Ly5/k;->E:I

    add-int/2addr v2, v1

    if-le v2, v10, :cond_c

    invoke-virtual {v0}, Ly5/k;->G0()V

    :cond_c
    iget-object v2, v0, Ly5/k;->C:[C

    iget v3, v0, Ly5/k;->E:I

    invoke-virtual {v6, v8, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, v0, Ly5/b;->v:I

    if-eqz v2, :cond_11

    iget v3, v0, Ly5/k;->E:I

    add-int/2addr v3, v1

    iget-object v1, v0, Ly5/b;->u:[I

    array-length v4, v1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_8
    iget v5, v0, Ly5/k;->E:I

    if-ge v5, v3, :cond_15

    :cond_d
    iget-object v5, v0, Ly5/k;->C:[C

    iget v6, v0, Ly5/k;->E:I

    aget-char v7, v5, v6

    if-ge v7, v4, :cond_e

    aget v8, v1, v7

    if-eqz v8, :cond_10

    goto :goto_9

    :cond_e
    if-le v7, v2, :cond_10

    const/4 v8, -0x1

    :goto_9
    iget v10, v0, Ly5/k;->D:I

    sub-int/2addr v6, v10

    if-lez v6, :cond_f

    invoke-virtual {v9, v5, v10, v6}, Ljava/io/Writer;->write([CII)V

    :cond_f
    iget v5, v0, Ly5/k;->E:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Ly5/k;->E:I

    invoke-virtual {v0, v7, v8}, Ly5/k;->I0(CI)V

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ly5/k;->E:I

    if-lt v6, v3, :cond_d

    goto :goto_b

    :cond_11
    iget v2, v0, Ly5/k;->E:I

    add-int/2addr v2, v1

    iget-object v1, v0, Ly5/b;->u:[I

    array-length v3, v1

    :goto_a
    iget v4, v0, Ly5/k;->E:I

    if-ge v4, v2, :cond_15

    :cond_12
    iget-object v4, v0, Ly5/k;->C:[C

    iget v5, v0, Ly5/k;->E:I

    aget-char v6, v4, v5

    if-ge v6, v3, :cond_14

    aget v6, v1, v6

    if-eqz v6, :cond_14

    iget v6, v0, Ly5/k;->D:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_13

    invoke-virtual {v9, v4, v6, v5}, Ljava/io/Writer;->write([CII)V

    :cond_13
    iget-object v4, v0, Ly5/k;->C:[C

    iget v5, v0, Ly5/k;->E:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Ly5/k;->E:I

    aget-char v4, v4, v5

    aget v5, v1, v4

    invoke-virtual {v0, v4, v5}, Ly5/k;->I0(CI)V

    goto :goto_a

    :cond_14
    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Ly5/k;->E:I

    if-lt v5, v2, :cond_12

    :cond_15
    :goto_b
    return-void
.end method

.method public final P()V
    .locals 4

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ls5/m;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lt5/a;->q:Ly5/f;

    iget v2, v2, Ls5/m;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v2}, Ls5/p;->e(Lt5/a;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget v2, p0, Ly5/k;->F:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/k;->E:I

    const/16 v3, 0x5d

    aput-char v3, v0, v2

    :goto_0
    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    iput-object v1, v0, Ly5/f;->h:Ljava/lang/Object;

    iget-object v0, v0, Ly5/f;->d:Ly5/f;

    iput-object v0, p0, Lt5/a;->q:Ly5/f;

    return-void

    :cond_2
    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Current context not Array but "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1
.end method

.method public final R()V
    .locals 4

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ls5/m;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lt5/a;->q:Ly5/f;

    iget v2, v2, Ls5/m;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v2}, Ls5/p;->d(Lt5/a;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget v2, p0, Ly5/k;->F:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/k;->E:I

    const/16 v3, 0x7d

    aput-char v3, v0, v2

    :goto_0
    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    iput-object v1, v0, Ly5/f;->h:Ljava/lang/Object;

    iget-object v0, v0, Ly5/f;->d:Ly5/f;

    iput-object v0, p0, Lt5/a;->q:Ly5/f;

    return-void

    :cond_2
    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Current context not Object but "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1
.end method

.method public final S(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->m(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ls5/g;->l:Ls5/p;

    iget v3, p0, Ly5/k;->F:I

    iget-char v4, p0, Ly5/k;->B:C

    if-eqz v2, :cond_5

    if-eqz v0, :cond_1

    invoke-interface {v2, p0}, Ls5/p;->l(Ly5/b;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, p0}, Ls5/p;->c(Ls5/g;)V

    :goto_1
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ly5/k;->O0(Ljava/lang/String;)V

    return-void

    :cond_2
    iget v0, p0, Ly5/k;->E:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_3
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char v4, v0, v1

    invoke-virtual {p0, p1}, Ly5/k;->O0(Ljava/lang/String;)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v3, :cond_4

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_4
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v4, p1, v0

    return-void

    :cond_5
    iget v2, p0, Ly5/k;->E:I

    add-int/2addr v2, v1

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_7
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Ly5/k;->O0(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char v4, v0, v1

    invoke-virtual {p0, p1}, Ly5/k;->O0(Ljava/lang/String;)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v3, :cond_9

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_9
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v4, p1, v0

    return-void

    :cond_a
    const-string p1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T(Ls5/q;)V
    .locals 9

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    check-cast p1, Lw5/k;

    iget-object v1, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly5/f;->m(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Ly5/k;->F:I

    iget-char v4, p0, Ly5/k;->B:C

    iget-object v5, p0, Ls5/g;->l:Ls5/p;

    if-eqz v5, :cond_5

    if-eqz v0, :cond_1

    invoke-interface {v5, p0}, Ls5/p;->l(Ly5/b;)V

    goto :goto_1

    :cond_1
    invoke-interface {v5, p0}, Ls5/p;->c(Ls5/g;)V

    :goto_1
    invoke-virtual {p1}, Lw5/k;->b()[C

    move-result-object p1

    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    invoke-virtual {p0, v0, p1}, Ly5/k;->f0(I[C)V

    return-void

    :cond_2
    iget v0, p0, Ly5/k;->E:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_3
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char v4, v0, v1

    array-length v0, p1

    invoke-virtual {p0, v0, p1}, Ly5/k;->f0(I[C)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v3, :cond_4

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_4
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v4, p1, v0

    return-void

    :cond_5
    iget v5, p0, Ly5/k;->E:I

    add-int/2addr v5, v2

    if-lt v5, v3, :cond_6

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Ly5/k;->E:I

    const/16 v5, 0x2c

    aput-char v5, v0, v2

    :cond_7
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lw5/k;->b()[C

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0, p1}, Ly5/k;->f0(I[C)V

    return-void

    :cond_8
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Ly5/k;->E:I

    aput-char v4, v0, v2

    iget-object v2, p1, Lw5/k;->o:[C

    if-nez v2, :cond_9

    sget-object v2, Lw5/k;->p:Lw5/f;

    iget-object v6, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lw5/f;->d(Ljava/lang/String;)[C

    move-result-object v2

    iput-object v2, p1, Lw5/k;->o:[C

    :cond_9
    array-length v6, v2

    add-int v7, v5, v6

    array-length v8, v0

    if-le v7, v8, :cond_a

    const/4 v6, -0x1

    goto :goto_2

    :cond_a
    invoke-static {v2, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-gez v6, :cond_c

    invoke-virtual {p1}, Lw5/k;->b()[C

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0, p1}, Ly5/k;->f0(I[C)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v3, :cond_b

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_b
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v4, p1, v0

    return-void

    :cond_c
    iget p1, p0, Ly5/k;->E:I

    add-int/2addr p1, v6

    iput p1, p0, Ly5/k;->E:I

    if-lt p1, v3, :cond_d

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_d
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v4, p1, v0

    return-void

    :cond_e
    const-string p1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final U()V
    .locals 1

    const-string v0, "write a null"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly5/k;->M0()V

    return-void
.end method

.method public final V(D)V
    .locals 1

    iget-boolean v0, p0, Lt5/a;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ls5/f;->r:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lw5/i;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lw5/i;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final W(F)V
    .locals 1

    iget-boolean v0, p0, Lt5/a;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ls5/f;->r:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, v0}, Lw5/i;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, v0}, Lw5/i;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final X(I)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lt5/a;->p:Z

    iget v1, p0, Ly5/k;->F:I

    if-eqz v0, :cond_1

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0xd

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    iget-char v3, p0, Ly5/k;->B:C

    aput-char v3, v0, v1

    invoke-static {v0, p1, v2}, Lw5/i;->i([CII)I

    move-result p1

    iget-object v0, p0, Ly5/k;->C:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v3, v0, p1

    return-void

    :cond_1
    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    invoke-static {v0, p1, v1}, Lw5/i;->i([CII)I

    move-result p1

    iput p1, p0, Ly5/k;->E:I

    return-void
.end method

.method public final Y(J)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lt5/a;->p:Z

    iget v1, p0, Ly5/k;->F:I

    if-eqz v0, :cond_1

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    iget-char v3, p0, Ly5/k;->B:C

    aput-char v3, v0, v1

    invoke-static {p1, p2, v0, v2}, Lw5/i;->k(J[CI)I

    move-result p1

    iget-object p2, p0, Ly5/k;->C:[C

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ly5/k;->E:I

    aput-char v3, p2, p1

    return-void

    :cond_1
    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    invoke-static {p1, p2, v0, v1}, Lw5/i;->k(J[CI)I

    move-result p1

    iput p1, p0, Ly5/k;->E:I

    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/k;->M0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ly5/k;->N0(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final a0(Ljava/math/BigDecimal;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/k;->M0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lt5/a;->x0(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->N0(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lt5/a;->x0(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final b0(Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/k;->M0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->N0(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final c0(S)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lt5/a;->p:Z

    iget v1, p0, Ly5/k;->F:I

    if-eqz v0, :cond_1

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    iget-char v3, p0, Ly5/k;->B:C

    aput-char v3, v0, v1

    invoke-static {v0, p1, v2}, Lw5/i;->i([CII)I

    move-result p1

    iget-object v0, p0, Ly5/k;->C:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v3, v0, p1

    return-void

    :cond_1
    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v0, v0, 0x6

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    invoke-static {v0, p1, v1}, Lw5/i;->i([CII)I

    move-result p1

    iput p1, p0, Ly5/k;->E:I

    return-void
.end method

.method public final close()V
    .locals 5

    invoke-super {p0}, Lt5/a;->close()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ly5/k;->C:[C

    if-eqz v1, :cond_1

    sget-object v1, Ls5/f;->o:Ls5/f;

    invoke-virtual {p0, v1}, Lt5/a;->q(Ls5/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v1}, Ls5/m;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ly5/k;->P()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ls5/m;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ly5/k;->R()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ly5/k;->G0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Ly5/k;->D:I

    iput v2, p0, Ly5/k;->E:I

    iget-object v2, p0, Lt5/a;->o:Lw5/d;

    iget-object v3, p0, Ly5/k;->A:Ljava/io/Writer;

    if-eqz v3, :cond_5

    :try_start_1
    iget-boolean v4, v2, Lw5/d;->o:Z

    if-nez v4, :cond_3

    sget-object v4, Ls5/f;->n:Ls5/f;

    invoke-virtual {p0, v4}, Lt5/a;->q(Ls5/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v4, Ls5/f;->p:Ls5/f;

    invoke-virtual {p0, v4}, Lt5/a;->q(Ls5/f;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    throw p0

    :cond_5
    :goto_4
    iget-object v3, p0, Ly5/k;->C:[C

    if-eqz v3, :cond_8

    iput-object v0, p0, Ly5/k;->C:[C

    iget-object p0, v2, Lw5/d;->y:[C

    if-eq v3, p0, :cond_7

    array-length v4, v3

    array-length p0, p0

    if-lt v4, p0, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer smaller than original"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    iput-object v0, v2, Lw5/d;->y:[C

    iget-object p0, v2, Lw5/d;->p:La6/b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, La6/b;->d(I[C)V

    :cond_8
    if-nez v1, :cond_9

    return-void

    :cond_9
    throw v1
.end method

.method public final e0(C)V
    .locals 3

    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final f0(I[C)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lt5/a;->z0(I[C)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    iget v0, p0, Ly5/k;->F:I

    iget v2, p0, Ly5/k;->E:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    invoke-static {p2, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Ly5/k;->E:I

    add-int/2addr p2, p1

    iput p2, p0, Ly5/k;->E:I

    return-void

    :cond_1
    invoke-virtual {p0}, Ly5/k;->G0()V

    iget-object p0, p0, Ly5/k;->A:Ljava/io/Writer;

    invoke-virtual {p0, p2, v1, p1}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public final flush()V
    .locals 2

    invoke-virtual {p0}, Ly5/k;->G0()V

    iget-object v0, p0, Ly5/k;->A:Ljava/io/Writer;

    if-eqz v0, :cond_0

    sget-object v1, Ls5/f;->p:Ls5/f;

    invoke-virtual {p0, v1}, Lt5/a;->q(Ls5/f;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ly5/k;->E:I

    iget v2, p0, Ly5/k;->F:I

    sub-int v1, v2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    iget v1, p0, Ly5/k;->E:I

    sub-int v1, v2, v1

    :cond_0
    const/4 v3, 0x0

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Ly5/k;->E:I

    add-int/2addr p1, v0

    iput p1, p0, Ly5/k;->E:I

    return-void

    :cond_1
    iget v0, p0, Ly5/k;->E:I

    sub-int v1, v2, v0

    iget-object v4, p0, Ly5/k;->C:[C

    invoke-virtual {p1, v3, v1, v4, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Ly5/k;->E:I

    add-int/2addr v0, v1

    iput v0, p0, Ly5/k;->E:I

    invoke-virtual {p0}, Ly5/k;->G0()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-le v0, v2, :cond_2

    add-int v4, v1, v2

    iget-object v5, p0, Ly5/k;->C:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, p0, Ly5/k;->D:I

    iput v2, p0, Ly5/k;->E:I

    invoke-virtual {p0}, Ly5/k;->G0()V

    sub-int/2addr v0, v2

    move v1, v4

    goto :goto_0

    :cond_2
    add-int v2, v1, v0

    iget-object v4, p0, Ly5/k;->C:[C

    invoke-virtual {p1, v1, v2, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, p0, Ly5/k;->D:I

    iput v0, p0, Ly5/k;->E:I

    return-void
.end method

.method public final h0(Ls5/q;)V
    .locals 6

    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    move-object v2, p1

    check-cast v2, Lw5/k;

    iget-object v2, v2, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v1, v3

    array-length v5, v0

    if-le v4, v5, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    if-gez v3, :cond_1

    check-cast p1, Lw5/k;

    iget-object p1, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ly5/k;->g0(Ljava/lang/String;)V

    return-void

    :cond_1
    iget p1, p0, Ly5/k;->E:I

    add-int/2addr p1, v3

    iput p1, p0, Ly5/k;->E:I

    return-void
.end method

.method public final k0()V
    .locals 3

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->i()Ly5/f;

    move-result-object v0

    iput-object v0, p0, Lt5/a;->q:Ly5/f;

    iget v0, v0, Ls5/m;->c:I

    iget-object v1, p0, Ly5/b;->t:Ls5/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ls5/c;->h(I)V

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ls5/p;->k(Lt5/a;)V

    return-void

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    const/16 p0, 0x5b

    aput-char p0, v0, v1

    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->j(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    iget p1, p1, Ls5/m;->c:I

    iget-object v0, p0, Ly5/b;->t:Ls5/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ls5/c;->h(I)V

    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ls5/p;->k(Lt5/a;)V

    return-void

    :cond_0
    iget p1, p0, Ly5/k;->E:I

    iget v0, p0, Ly5/k;->F:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    const/16 p0, 0x5b

    aput-char p0, p1, v0

    return-void
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->j(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    iget p1, p1, Ls5/m;->c:I

    iget-object v0, p0, Ly5/b;->t:Ls5/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ls5/c;->h(I)V

    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ls5/p;->k(Lt5/a;)V

    return-void

    :cond_0
    iget p1, p0, Ly5/k;->E:I

    iget v0, p0, Ly5/k;->F:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    const/16 p0, 0x5b

    aput-char p0, p1, v0

    return-void
.end method

.method public final n0()V
    .locals 3

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->k()Ly5/f;

    move-result-object v0

    iput-object v0, p0, Lt5/a;->q:Ly5/f;

    iget v0, v0, Ls5/m;->c:I

    iget-object v1, p0, Ly5/b;->t:Ls5/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ls5/c;->h(I)V

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ls5/p;->f(Lt5/a;)V

    return-void

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object v0, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    const/16 p0, 0x7b

    aput-char p0, v0, v1

    return-void
.end method

.method public final o0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->l(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    iget v0, v0, Ls5/m;->c:I

    iget-object v1, p0, Ly5/b;->t:Ls5/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ls5/c;->h(I)V

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ls5/p;->f(Lt5/a;)V

    return-void

    :cond_0
    iget p1, p0, Ly5/k;->E:I

    iget v0, p0, Ly5/k;->F:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    const/16 p0, 0x7b

    aput-char p0, p1, v0

    return-void
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Ly5/k;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/k;->M0()V

    return-void

    :cond_0
    iget v0, p0, Ly5/k;->E:I

    iget v1, p0, Ly5/k;->F:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_1
    iget-object v0, p0, Ly5/k;->C:[C

    iget v2, p0, Ly5/k;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/k;->E:I

    iget-char v3, p0, Ly5/k;->B:C

    aput-char v3, v0, v2

    invoke-virtual {p0, p1}, Ly5/k;->O0(Ljava/lang/String;)V

    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_2
    iget-object p1, p0, Ly5/k;->C:[C

    iget v0, p0, Ly5/k;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/k;->E:I

    aput-char v3, p1, v0

    return-void
.end method

.method public final r0(Ls5/q;)V
    .locals 9

    iget-char v0, p0, Ly5/k;->B:C

    const-string v1, "write a string"

    invoke-virtual {p0, v1}, Ly5/k;->B0(Ljava/lang/String;)V

    iget v1, p0, Ly5/k;->E:I

    iget v2, p0, Ly5/k;->F:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_0
    iget-object v1, p0, Ly5/k;->C:[C

    iget v3, p0, Ly5/k;->E:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ly5/k;->E:I

    aput-char v0, v1, v3

    check-cast p1, Lw5/k;

    iget-object v3, p1, Lw5/k;->o:[C

    if-nez v3, :cond_1

    sget-object v3, Lw5/k;->p:Lw5/f;

    iget-object v5, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lw5/f;->d(Ljava/lang/String;)[C

    move-result-object v3

    iput-object v3, p1, Lw5/k;->o:[C

    :cond_1
    array-length v5, v3

    add-int v6, v4, v5

    array-length v7, v1

    const/4 v8, 0x0

    if-le v6, v7, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v3, v8, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-gez v5, :cond_6

    invoke-virtual {p1}, Lw5/k;->b()[C

    move-result-object p1

    array-length v1, p1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_4

    iget v3, p0, Ly5/k;->E:I

    sub-int v3, v2, v3

    if-le v1, v3, :cond_3

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_3
    iget-object v3, p0, Ly5/k;->C:[C

    iget v4, p0, Ly5/k;->E:I

    invoke-static {p1, v8, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ly5/k;->E:I

    add-int/2addr p1, v1

    iput p1, p0, Ly5/k;->E:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ly5/k;->G0()V

    iget-object v3, p0, Ly5/k;->A:Ljava/io/Writer;

    invoke-virtual {v3, p1, v8, v1}, Ljava/io/Writer;->write([CII)V

    :goto_1
    iget p1, p0, Ly5/k;->E:I

    if-lt p1, v2, :cond_5

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_5
    iget-object p1, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char v0, p1, v1

    return-void

    :cond_6
    iget p1, p0, Ly5/k;->E:I

    add-int/2addr p1, v5

    iput p1, p0, Ly5/k;->E:I

    if-lt p1, v2, :cond_7

    invoke-virtual {p0}, Ly5/k;->G0()V

    :cond_7
    iget-object p1, p0, Ly5/k;->C:[C

    iget v1, p0, Ly5/k;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/k;->E:I

    aput-char v0, p1, v1

    return-void
.end method

.method public final s0([CII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "write a string"

    invoke-virtual {v0, v2}, Ly5/k;->B0(Ljava/lang/String;)V

    iget v2, v0, Ly5/k;->E:I

    iget v3, v0, Ly5/k;->F:I

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ly5/k;->G0()V

    :cond_0
    iget-object v2, v0, Ly5/k;->C:[C

    iget v4, v0, Ly5/k;->E:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Ly5/k;->E:I

    iget-char v5, v0, Ly5/k;->B:C

    aput-char v5, v2, v4

    iget v2, v0, Ly5/b;->v:I

    iget-object v4, v0, Ly5/k;->A:Ljava/io/Writer;

    const/16 v6, 0x20

    if-eqz v2, :cond_8

    add-int v7, p3, p2

    iget-object v8, v0, Ly5/b;->u:[I

    array-length v9, v8

    add-int/lit8 v10, v2, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    move/from16 v10, p2

    :goto_0
    if-ge v10, v7, :cond_f

    move v12, v10

    :cond_1
    aget-char v13, v1, v12

    if-ge v13, v9, :cond_2

    aget v11, v8, v13

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_2
    if-le v13, v2, :cond_3

    const/4 v11, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    if-lt v12, v7, :cond_1

    :goto_1
    sub-int v14, v12, v10

    if-ge v14, v6, :cond_5

    iget v15, v0, Ly5/k;->E:I

    add-int/2addr v15, v14

    if-le v15, v3, :cond_4

    invoke-virtual {v0}, Ly5/k;->G0()V

    :cond_4
    if-lez v14, :cond_6

    iget-object v15, v0, Ly5/k;->C:[C

    iget v6, v0, Ly5/k;->E:I

    invoke-static {v1, v10, v15, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Ly5/k;->E:I

    add-int/2addr v6, v14

    iput v6, v0, Ly5/k;->E:I

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ly5/k;->G0()V

    invoke-virtual {v4, v1, v10, v14}, Ljava/io/Writer;->write([CII)V

    :cond_6
    :goto_2
    if-lt v12, v7, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v12, 0x1

    invoke-virtual {v0, v13, v11}, Ly5/k;->F0(CI)V

    const/16 v6, 0x20

    goto :goto_0

    :cond_8
    add-int v2, p3, p2

    iget-object v6, v0, Ly5/b;->u:[I

    array-length v7, v6

    move/from16 v8, p2

    :goto_3
    if-ge v8, v2, :cond_f

    move v9, v8

    :cond_9
    aget-char v10, v1, v9

    if-ge v10, v7, :cond_a

    aget v10, v6, v10

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v2, :cond_9

    :goto_4
    sub-int v10, v9, v8

    const/16 v11, 0x20

    if-ge v10, v11, :cond_c

    iget v12, v0, Ly5/k;->E:I

    add-int/2addr v12, v10

    if-le v12, v3, :cond_b

    invoke-virtual {v0}, Ly5/k;->G0()V

    :cond_b
    if-lez v10, :cond_d

    iget-object v12, v0, Ly5/k;->C:[C

    iget v13, v0, Ly5/k;->E:I

    invoke-static {v1, v8, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v0, Ly5/k;->E:I

    add-int/2addr v8, v10

    iput v8, v0, Ly5/k;->E:I

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ly5/k;->G0()V

    invoke-virtual {v4, v1, v8, v10}, Ljava/io/Writer;->write([CII)V

    :cond_d
    :goto_5
    if-lt v9, v2, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v8, v9, 0x1

    aget-char v9, v1, v9

    aget v10, v6, v9

    invoke-virtual {v0, v9, v10}, Ly5/k;->F0(CI)V

    goto :goto_3

    :cond_f
    :goto_6
    iget v1, v0, Ly5/k;->E:I

    if-lt v1, v3, :cond_10

    invoke-virtual {v0}, Ly5/k;->G0()V

    :cond_10
    iget-object v1, v0, Ly5/k;->C:[C

    iget v2, v0, Ly5/k;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ly5/k;->E:I

    aput-char v5, v1, v2

    return-void
.end method
