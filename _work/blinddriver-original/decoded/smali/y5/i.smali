.class public final Ly5/i;
.super Ly5/b;
.source "SourceFile"


# static fields
.field public static final J:[B

.field public static final K:[B

.field public static final L:[B

.field public static final M:[B

.field public static final N:[B


# instance fields
.field public final A:La6/d;

.field public final B:B

.field public C:[B

.field public D:I

.field public final E:I

.field public final F:I

.field public G:[C

.field public final H:I

.field public final I:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lw5/b;->b(Z)[B

    move-result-object v0

    sput-object v0, Ly5/i;->J:[B

    const/4 v0, 0x0

    invoke-static {v0}, Lw5/b;->b(Z)[B

    move-result-object v0

    sput-object v0, Ly5/i;->K:[B

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Ly5/i;->L:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Ly5/i;->M:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ly5/i;->N:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lw5/d;ILs5/o;La6/d;C)V
    .locals 1

    iget-object v0, p1, Lw5/d;->p:La6/b;

    invoke-direct {p0, p2, p3, p1}, Ly5/b;-><init>(ILs5/o;Lw5/d;)V

    iput-object p4, p0, Ly5/i;->A:La6/d;

    int-to-byte p2, p5

    iput-byte p2, p0, Ly5/i;->B:B

    sget-object p2, Ly5/g;->p:Ly5/g;

    iget-object p2, p2, Ly5/g;->n:Ls5/f;

    invoke-virtual {p0, p2}, Lt5/a;->q(Ls5/f;)Z

    move-result p2

    const/16 p3, 0x22

    if-ne p5, p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-static {p5, p2}, Lw5/b;->d(IZ)[I

    move-result-object p2

    iput-object p2, p0, Ly5/b;->u:[I

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Ly5/i;->I:Z

    iget-object p3, p1, Lw5/d;->v:[B

    invoke-static {p3}, Lw5/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, La6/b;->a(I)[B

    move-result-object p3

    iput-object p3, p1, Lw5/d;->v:[B

    iput-object p3, p0, Ly5/i;->C:[B

    array-length p3, p3

    iput p3, p0, Ly5/i;->E:I

    shr-int/lit8 p3, p3, 0x3

    iput p3, p0, Ly5/i;->F:I

    iget-object p3, p1, Lw5/d;->y:[C

    invoke-static {p3}, Lw5/d;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, La6/b;->b(II)[C

    move-result-object p2

    iput-object p2, p1, Lw5/d;->y:[C

    iput-object p2, p0, Ly5/i;->G:[C

    array-length p1, p2

    iput p1, p0, Ly5/i;->H:I

    sget-object p1, Ly5/g;->o:Ly5/g;

    iget-object p1, p1, Ly5/g;->n:Ls5/f;

    invoke-virtual {p0, p1}, Lt5/a;->q(Ls5/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x7f

    invoke-virtual {p0, p1}, Ly5/b;->w(I)V

    :cond_2
    return-void
.end method

.method public static I0(Lbb/f;[BIII)I
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

    invoke-virtual {p1}, Lw5/k;->d()[B

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_3

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p1, 0x3a

    goto :goto_1

    :cond_5
    const/16 p1, 0x2c

    :goto_1
    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_6
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final C(Ls5/a;Lbb/f;I)I
    .locals 5

    const-string v0, "Too few bytes available: missing "

    const-string v1, "write a binary value"

    invoke-virtual {p0, v1}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v1, p0, Ly5/i;->D:I

    iget v2, p0, Ly5/i;->E:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v1, p0, Ly5/i;->C:[B

    iget v3, p0, Ly5/i;->D:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ly5/i;->D:I

    iget-byte v4, p0, Ly5/i;->B:B

    aput-byte v4, v1, v3

    iget-object v1, p0, Lt5/a;->o:Lw5/d;

    invoke-virtual {v1}, Lw5/d;->c()[B

    move-result-object v3

    if-gez p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Ly5/i;->J0(Ls5/a;Lbb/f;[B)I

    move-result p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v3, p3}, Ly5/i;->K0(Ls5/a;Lbb/f;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v3}, Lw5/d;->d([B)V

    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    iget-object p1, p0, Ly5/i;->C:[B

    iget p2, p0, Ly5/i;->D:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Ly5/i;->D:I

    aput-byte v4, p1, p2

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

.method public final E0()V
    .locals 3

    iget v0, p0, Ly5/i;->D:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Ly5/i;->D:I

    iget-object v2, p0, Ly5/i;->A:La6/d;

    iget-object p0, p0, Ly5/i;->C:[B

    invoke-virtual {v2, p0, v1, v0}, La6/d;->write([BII)V

    :cond_0
    return-void
.end method

.method public final F0(II)I
    .locals 4

    iget-boolean v0, p0, Ly5/b;->y:Z

    if-eqz v0, :cond_0

    sget-object v0, Ly5/i;->J:[B

    goto :goto_0

    :cond_0
    sget-object v0, Ly5/i;->K:[B

    :goto_0
    iget-object p0, p0, Ly5/i;->C:[B

    const v1, 0xd800

    if-lt p1, v1, :cond_1

    const v1, 0xdfff

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, p0, p2

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x75

    aput-byte v3, p0, v1

    add-int/lit8 v1, p2, 0x3

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v0, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p2, 0x4

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v0, v3

    aput-byte v3, p0, v1

    add-int/lit8 v1, p2, 0x5

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v0, v3

    aput-byte v3, p0, v2

    add-int/lit8 p2, p2, 0x6

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, v0, p1

    aput-byte p1, p0, v1

    return p2

    :cond_1
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p2, p2, 0x3

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    return p2
.end method

.method public final G0(III[C)I
    .locals 3

    const v0, 0xd800

    if-lt p1, v0, :cond_3

    const v0, 0xdfff

    if-gt p1, v0, :cond_3

    const/4 v1, 0x0

    if-ge p2, p3, :cond_2

    if-eqz p4, :cond_2

    aget-char p3, p4, p2

    const p4, 0xdc00

    if-lt p3, p4, :cond_1

    if-gt p3, v0, :cond_1

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p3

    const p3, -0x35fdc00

    add-int/2addr p1, p3

    iget p3, p0, Ly5/i;->D:I

    add-int/lit8 p3, p3, 0x4

    iget p4, p0, Ly5/i;->E:I

    if-le p3, p4, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object p3, p0, Ly5/i;->C:[B

    iget p4, p0, Ly5/i;->D:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Ly5/i;->D:I

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x2

    iput v1, p0, Ly5/i;->D:I

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, p4, 0x3

    iput v0, p0, Ly5/i;->D:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 p4, p4, 0x4

    iput p4, p0, Ly5/i;->D:I

    and-int/lit8 p0, p1, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p3, v0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Incomplete surrogate pair: first char 0x%04X, second 0x%04X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Split surrogate on writeRaw() input (last character): first character 0x%4x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object p3, p0, Ly5/i;->C:[B

    iget p4, p0, Ly5/i;->D:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Ly5/i;->D:I

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x2

    iput v1, p0, Ly5/i;->D:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 p4, p4, 0x3

    iput p4, p0, Ly5/i;->D:I

    and-int/lit8 p0, p1, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p3, v1

    return p2
.end method

.method public final H0(CCI)I
    .locals 2

    and-int/lit16 p1, p1, 0x3ff

    shl-int/lit8 p1, p1, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    and-int/lit16 p2, p2, 0x3ff

    add-int/2addr p1, p2

    iget-object p0, p0, Ly5/i;->C:[B

    add-int/lit8 p2, p3, 0x1

    shr-int/lit8 v0, p1, 0x12

    and-int/lit8 v0, v0, 0x7

    add-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    add-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    add-int/lit8 p2, p3, 0x3

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    add-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p1, p1, 0x3f

    add-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return p3
.end method

.method public final J(Ls5/a;[BII)V
    .locals 9

    invoke-virtual {p0, p2, p3, p4}, Lt5/a;->y0([BII)V

    const-string v0, "write a binary value"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    iget-byte v3, p0, Ly5/i;->B:B

    aput-byte v3, v0, v2

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    add-int/lit8 v2, v1, -0x6

    iget v4, p1, Ls5/a;->q:I

    const/4 v5, 0x2

    :goto_0
    shr-int/2addr v4, v5

    :cond_1
    if-gt p3, v0, :cond_3

    iget v6, p0, Ly5/i;->D:I

    if-le v6, v2, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

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

    iget-object v7, p0, Ly5/i;->C:[B

    iget v8, p0, Ly5/i;->D:I

    invoke-virtual {p1, v7, v6, v8}, Ls5/a;->f([BII)I

    move-result v6

    iput v6, p0, Ly5/i;->D:I

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_1

    iget-object v4, p0, Ly5/i;->C:[B

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ly5/i;->D:I

    const/16 v8, 0x5c

    aput-byte v8, v4, v6

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Ly5/i;->D:I

    const/16 v6, 0x6e

    aput-byte v6, v4, v7

    iget v4, p1, Ls5/a;->q:I

    goto :goto_0

    :cond_3
    sub-int/2addr p4, p3

    if-lez p4, :cond_6

    iget v0, p0, Ly5/i;->D:I

    if-le v0, v2, :cond_4

    invoke-virtual {p0}, Ly5/i;->E0()V

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
    iget-object p2, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    invoke-virtual {p1, p3, p4, v0, p2}, Ls5/a;->i(III[B)I

    move-result p1

    iput p1, p0, Ly5/i;->D:I

    :cond_6
    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v1, :cond_7

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_7
    iget-object p1, p0, Ly5/i;->C:[B

    iget p2, p0, Ly5/i;->D:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Ly5/i;->D:I

    aput-byte v3, p1, p2

    return-void
.end method

.method public final J0(Ls5/a;Lbb/f;[B)I
    .locals 12

    iget v0, p0, Ly5/i;->E:I

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

    invoke-static {p2, p3, v5, v6, v4}, Ly5/i;->I0(Lbb/f;[BIII)I

    move-result v6

    if-ge v6, v8, :cond_4

    if-lez v6, :cond_3

    iget p2, p0, Ly5/i;->D:I

    if-le p2, v0, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

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

    iget-object p3, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    invoke-virtual {p1, p2, v2, v0, p3}, Ls5/a;->i(III[B)I

    move-result p1

    iput p1, p0, Ly5/i;->D:I

    :cond_3
    return v7

    :cond_4
    add-int/lit8 v4, v6, -0x3

    move v5, v3

    :cond_5
    iget v9, p0, Ly5/i;->D:I

    if-le v9, v0, :cond_6

    invoke-virtual {p0}, Ly5/i;->E0()V

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

    iget-object v9, p0, Ly5/i;->C:[B

    iget v10, p0, Ly5/i;->D:I

    invoke-virtual {p1, v9, v8, v10}, Ls5/a;->f([BII)I

    move-result v8

    iput v8, p0, Ly5/i;->D:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Ly5/i;->C:[B

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ly5/i;->D:I

    const/16 v10, 0x5c

    aput-byte v10, v1, v8

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Ly5/i;->D:I

    const/16 v8, 0x6e

    aput-byte v8, v1, v9

    iget v1, p1, Ls5/a;->q:I

    shr-int/2addr v1, v2

    goto :goto_0
.end method

.method public final K(Z)V
    .locals 4

    const-string v0, "write a boolean value"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Ly5/i;->M:[B

    goto :goto_0

    :cond_1
    sget-object p1, Ly5/i;->N:[B

    :goto_0
    array-length v0, p1

    iget-object v1, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v0

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final K0(Ls5/a;Lbb/f;[BI)I
    .locals 11

    iget v0, p0, Ly5/i;->E:I

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

    invoke-static {p2, p3, v5, v6, p4}, Ly5/i;->I0(Lbb/f;[BIII)I

    move-result v6

    if-ge v6, v7, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v6, -0x3

    move v5, v3

    :cond_2
    iget v8, p0, Ly5/i;->D:I

    if-le v8, v0, :cond_3

    invoke-virtual {p0}, Ly5/i;->E0()V

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

    iget-object v8, p0, Ly5/i;->C:[B

    iget v9, p0, Ly5/i;->D:I

    invoke-virtual {p1, v8, v7, v9}, Ls5/a;->f([BII)I

    move-result v7

    iput v7, p0, Ly5/i;->D:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Ly5/i;->C:[B

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ly5/i;->D:I

    const/16 v9, 0x5c

    aput-byte v9, v1, v7

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Ly5/i;->D:I

    const/16 v7, 0x6e

    aput-byte v7, v1, v8

    iget v1, p1, Ls5/a;->q:I

    shr-int/2addr v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-lez p4, :cond_7

    invoke-static {p2, p3, v5, v6, p4}, Ly5/i;->I0(Lbb/f;[BIII)I

    move-result p2

    if-lez p2, :cond_7

    iget v1, p0, Ly5/i;->D:I

    if-le v1, v0, :cond_5

    invoke-virtual {p0}, Ly5/i;->E0()V

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
    iget-object p2, p0, Ly5/i;->C:[B

    iget p3, p0, Ly5/i;->D:I

    invoke-virtual {p1, v0, v2, p3, p2}, Ls5/a;->i(III[B)I

    move-result p1

    iput p1, p0, Ly5/i;->D:I

    sub-int/2addr p4, v2

    :cond_7
    return p4
.end method

.method public final L0([B)V
    .locals 4

    array-length v0, p1

    iget v1, p0, Ly5/i;->D:I

    add-int/2addr v1, v0

    iget v2, p0, Ly5/i;->E:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    iget-object p0, p0, Ly5/i;->A:La6/d;

    invoke-virtual {p0, p1, v3, v0}, La6/d;->write([BII)V

    return-void

    :cond_0
    iget-object v1, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v0

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final M0(II)I
    .locals 5

    iget-object v0, p0, Ly5/i;->C:[B

    iget-boolean p0, p0, Ly5/b;->y:Z

    if-eqz p0, :cond_0

    sget-object p0, Ly5/i;->J:[B

    goto :goto_0

    :cond_0
    sget-object p0, Ly5/i;->K:[B

    :goto_0
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v0, p2

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v3, v1, 0xff

    add-int/lit8 v4, p2, 0x3

    shr-int/lit8 v3, v3, 0x4

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, p0, v1

    aput-byte v1, v0, v4

    and-int/lit16 p1, p1, 0xff

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p2, 0x3

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    add-int/lit8 p2, p2, 0x4

    aput-byte v3, v0, v1

    :goto_1
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    aput-byte v2, v0, p2

    add-int/lit8 p2, p2, 0x2

    and-int/lit8 p1, p1, 0xf

    aget-byte p0, p0, p1

    aput-byte p0, v0, v1

    return p2
.end method

.method public final N0()V
    .locals 5

    iget v0, p0, Ly5/i;->D:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Ly5/i;->E:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    sget-object v3, Ly5/i;->L:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ly5/i;->D:I

    add-int/2addr v0, v1

    iput v0, p0, Ly5/i;->D:I

    return-void
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    iget-byte v3, p0, Ly5/i;->B:B

    aput-byte v3, v0, v2

    invoke-virtual {p0, p1}, Ly5/i;->g0(Ljava/lang/String;)V

    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v3, p1, v0

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
    iget v0, p0, Ly5/i;->D:I

    iget v2, p0, Ly5/i;->E:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    const/16 v3, 0x5d

    aput-byte v3, v0, v2

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

.method public final P0(IILjava/lang/String;)V
    .locals 10

    add-int/2addr p2, p1

    iget v0, p0, Ly5/i;->D:I

    iget-object v1, p0, Ly5/i;->C:[B

    iget-object v2, p0, Ly5/b;->u:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p1, p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    iput v0, p0, Ly5/i;->D:I

    if-ge p1, p2, :cond_11

    iget v1, p0, Ly5/b;->v:I

    const/16 v2, 0x7ff

    const/16 v4, 0x5c

    iget v5, p0, Ly5/i;->E:I

    if-nez v1, :cond_9

    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    iget v0, p0, Ly5/i;->D:I

    iget-object v1, p0, Ly5/i;->C:[B

    iget-object v5, p0, Ly5/b;->u:[I

    :goto_2
    if-ge p1, p2, :cond_8

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v7, v3, :cond_5

    aget p1, v5, v7

    if-nez p1, :cond_3

    add-int/lit8 p1, v0, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v0

    :goto_3
    move v0, p1

    :goto_4
    move p1, v6

    goto :goto_2

    :cond_3
    if-lez p1, :cond_4

    add-int/lit8 v7, v0, 0x1

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, p1

    aput-byte p1, v1, v7

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v7, v0}, Ly5/i;->M0(II)I

    move-result v0

    goto :goto_4

    :cond_5
    if-gt v7, v2, :cond_6

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v1, p1

    goto :goto_4

    :cond_6
    const v8, 0xfc00

    and-int/2addr v8, v7

    const v9, 0xd800

    if-ne v8, v9, :cond_7

    sget-object v8, Ls5/f;->z:Ls5/f;

    iget v9, p0, Lt5/a;->n:I

    invoke-virtual {v8, v9}, Ls5/f;->a(I)Z

    move-result v8

    if-eqz v8, :cond_7

    if-ge v6, p2, :cond_7

    int-to-char v7, v7

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v7, v6, v0}, Ly5/i;->H0(CCI)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v7, v0}, Ly5/i;->F0(II)I

    move-result p1

    goto :goto_3

    :cond_8
    iput v0, p0, Ly5/i;->D:I

    return-void

    :cond_9
    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_a

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_a
    iget v0, p0, Ly5/i;->D:I

    iget-object v1, p0, Ly5/i;->C:[B

    iget-object v5, p0, Ly5/b;->u:[I

    iget v6, p0, Ly5/b;->v:I

    :goto_5
    if-ge p1, p2, :cond_10

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-gt p1, v3, :cond_d

    aget v8, v5, p1

    if-nez v8, :cond_b

    add-int/lit8 v8, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v7

    move v0, v8

    goto :goto_5

    :cond_b
    if-lez v8, :cond_c

    add-int/lit8 p1, v0, 0x1

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v8, v8

    aput-byte v8, v1, p1

    :goto_6
    move p1, v7

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p1, v0}, Ly5/i;->M0(II)I

    move-result v0

    goto :goto_6

    :cond_d
    if-le p1, v6, :cond_e

    invoke-virtual {p0, p1, v0}, Ly5/i;->M0(II)I

    move-result v0

    goto :goto_6

    :cond_e
    if-gt p1, v2, :cond_f

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v1, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v8

    goto :goto_6

    :cond_f
    invoke-virtual {p0, p1, v0}, Ly5/i;->F0(II)I

    move-result p1

    move v0, p1

    goto :goto_6

    :cond_10
    iput v0, p0, Ly5/i;->D:I

    :cond_11
    return-void
.end method

.method public final Q0([CII)V
    .locals 10

    add-int/2addr p3, p2

    iget v0, p0, Ly5/i;->D:I

    iget-object v1, p0, Ly5/i;->C:[B

    iget-object v2, p0, Ly5/b;->u:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p2, p3, :cond_1

    aget-char v4, p1, p2

    if-gt v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    iput v0, p0, Ly5/i;->D:I

    if-ge p2, p3, :cond_11

    iget v1, p0, Ly5/b;->v:I

    const/16 v2, 0x7ff

    const/16 v4, 0x5c

    iget v5, p0, Ly5/i;->E:I

    if-nez v1, :cond_9

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    iget v0, p0, Ly5/i;->D:I

    iget-object v1, p0, Ly5/i;->C:[B

    iget-object v5, p0, Ly5/b;->u:[I

    :goto_2
    if-ge p2, p3, :cond_8

    add-int/lit8 v6, p2, 0x1

    aget-char v7, p1, p2

    if-gt v7, v3, :cond_5

    aget p2, v5, v7

    if-nez p2, :cond_3

    add-int/lit8 p2, v0, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v0

    :goto_3
    move v0, p2

    :goto_4
    move p2, v6

    goto :goto_2

    :cond_3
    if-lez p2, :cond_4

    add-int/lit8 v7, v0, 0x1

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte p2, p2

    aput-byte p2, v1, v7

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v7, v0}, Ly5/i;->M0(II)I

    move-result v0

    goto :goto_4

    :cond_5
    if-gt v7, v2, :cond_6

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v1, p2

    goto :goto_4

    :cond_6
    const v8, 0xfc00

    and-int/2addr v8, v7

    const v9, 0xd800

    if-ne v8, v9, :cond_7

    sget-object v8, Ls5/f;->z:Ls5/f;

    iget v9, p0, Lt5/a;->n:I

    invoke-virtual {v8, v9}, Ls5/f;->a(I)Z

    move-result v8

    if-eqz v8, :cond_7

    if-ge v6, p3, :cond_7

    int-to-char v7, v7

    add-int/lit8 p2, p2, 0x2

    aget-char v6, p1, v6

    invoke-virtual {p0, v7, v6, v0}, Ly5/i;->H0(CCI)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v7, v0}, Ly5/i;->F0(II)I

    move-result p2

    goto :goto_3

    :cond_8
    iput v0, p0, Ly5/i;->D:I

    return-void

    :cond_9
    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_a

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_a
    iget v0, p0, Ly5/i;->D:I

    iget-object v1, p0, Ly5/i;->C:[B

    iget-object v5, p0, Ly5/b;->u:[I

    iget v6, p0, Ly5/b;->v:I

    :goto_5
    if-ge p2, p3, :cond_10

    add-int/lit8 v7, p2, 0x1

    aget-char p2, p1, p2

    if-gt p2, v3, :cond_d

    aget v8, v5, p2

    if-nez v8, :cond_b

    add-int/lit8 v8, v0, 0x1

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    move p2, v7

    move v0, v8

    goto :goto_5

    :cond_b
    if-lez v8, :cond_c

    add-int/lit8 p2, v0, 0x1

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v8, v8

    aput-byte v8, v1, p2

    :goto_6
    move p2, v7

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p2, v0}, Ly5/i;->M0(II)I

    move-result v0

    goto :goto_6

    :cond_d
    if-le p2, v6, :cond_e

    invoke-virtual {p0, p2, v0}, Ly5/i;->M0(II)I

    move-result v0

    goto :goto_6

    :cond_e
    if-gt p2, v2, :cond_f

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p2, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v1, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v1, v8

    goto :goto_6

    :cond_f
    invoke-virtual {p0, p2, v0}, Ly5/i;->F0(II)I

    move-result p2

    move v0, p2

    goto :goto_6

    :cond_10
    iput v0, p0, Ly5/i;->D:I

    :cond_11
    return-void
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
    iget v0, p0, Ly5/i;->D:I

    iget v2, p0, Ly5/i;->E:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    const/16 v3, 0x7d

    aput-byte v3, v0, v2

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

.method public final R0(Ljava/lang/String;Z)V
    .locals 6

    iget-byte v0, p0, Ly5/i;->B:B

    iget v1, p0, Ly5/i;->E:I

    if-eqz p2, :cond_1

    iget v2, p0, Ly5/i;->D:I

    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v2, p0, Ly5/i;->C:[B

    iget v3, p0, Ly5/i;->D:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ly5/i;->D:I

    aput-byte v0, v2, v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lez v2, :cond_3

    iget v4, p0, Ly5/i;->F:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Ly5/i;->D:I

    add-int/2addr v5, v4

    if-le v5, v1, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    invoke-virtual {p0, v3, v4, p1}, Ly5/i;->P0(IILjava/lang/String;)V

    add-int/2addr v3, v4

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v1, :cond_4

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_4
    iget-object p1, p0, Ly5/i;->C:[B

    iget p2, p0, Ly5/i;->D:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v0, p1, p2

    :cond_5
    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    const/4 v1, 0x0

    const-string v2, "Can not write a field name, expecting a value"

    iget v3, p0, Ly5/i;->H:I

    const/4 v4, 0x4

    iget v5, p0, Ly5/i;->F:I

    iget-byte v6, p0, Ly5/i;->B:B

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p0, Ly5/i;->E:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->m(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {v0, p0}, Ls5/p;->l(Ly5/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {v0, p0}, Ls5/p;->c(Ls5/g;)V

    :goto_0
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v7}, Ly5/i;->R0(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    invoke-virtual {p0, p1, v8}, Ly5/i;->R0(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget v1, p0, Ly5/i;->D:I

    if-lt v1, v9, :cond_3

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_3
    iget-object v1, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    aput-byte v6, v1, v2

    iget-object v1, p0, Ly5/i;->G:[C

    invoke-virtual {p1, v7, v0, v1, v7}, Ljava/lang/String;->getChars(II[CI)V

    if-gt v0, v5, :cond_5

    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v0

    if-le p1, v9, :cond_4

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_4
    iget-object p1, p0, Ly5/i;->G:[C

    invoke-virtual {p0, p1, v7, v0}, Ly5/i;->Q0([CII)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ly5/i;->G:[C

    invoke-virtual {p0, p1, v7, v0}, Ly5/i;->S0([CII)V

    :goto_1
    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v9, :cond_6

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_6
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v6, p1, v0

    return-void

    :cond_7
    invoke-virtual {p0, v2}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->m(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_12

    if-ne v0, v8, :cond_a

    iget v0, p0, Ly5/i;->D:I

    if-lt v0, v9, :cond_9

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_9
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    :cond_a
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v7}, Ly5/i;->R0(Ljava/lang/String;Z)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_c

    invoke-virtual {p0, p1, v8}, Ly5/i;->R0(Ljava/lang/String;Z)V

    return-void

    :cond_c
    iget v1, p0, Ly5/i;->D:I

    if-lt v1, v9, :cond_d

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_d
    iget-object v1, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    aput-byte v6, v1, v2

    if-gt v0, v5, :cond_f

    add-int/2addr v3, v0

    if-le v3, v9, :cond_e

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_e
    invoke-virtual {p0, v7, v0, p1}, Ly5/i;->P0(IILjava/lang/String;)V

    goto :goto_2

    :cond_f
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Ly5/i;->D:I

    add-int/2addr v2, v1

    if-le v2, v9, :cond_10

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_10
    invoke-virtual {p0, v7, v1, p1}, Ly5/i;->P0(IILjava/lang/String;)V

    add-int/2addr v7, v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_f

    :goto_2
    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v9, :cond_11

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_11
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v6, p1, v0

    return-void

    :cond_12
    invoke-virtual {p0, v2}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1
.end method

.method public final S0([CII)V
    .locals 3

    :cond_0
    iget v0, p0, Ly5/i;->F:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Ly5/i;->D:I

    add-int/2addr v1, v0

    iget v2, p0, Ly5/i;->E:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Ly5/i;->Q0([CII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method

.method public final T(Ls5/q;)V
    .locals 8

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    const/4 v1, 0x0

    const-string v2, "Can not write a field name, expecting a value"

    const/4 v3, 0x4

    iget-byte v4, p0, Ly5/i;->B:B

    iget v5, p0, Ly5/i;->E:I

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    check-cast p1, Lw5/k;

    iget-object v7, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ly5/f;->m(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_6

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {v0, p0}, Ls5/p;->l(Ly5/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {v0, p0}, Ls5/p;->c(Ls5/g;)V

    :goto_0
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-nez v0, :cond_2

    iget v1, p0, Ly5/i;->D:I

    if-lt v1, v5, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v1, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    aput-byte v4, v1, v2

    :cond_2
    iget-object v1, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    invoke-virtual {p1, v2, v1}, Lw5/k;->a(I[B)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {p1}, Lw5/k;->c()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    goto :goto_1

    :cond_3
    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v1

    iput p1, p0, Ly5/i;->D:I

    :goto_1
    if-nez v0, :cond_5

    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v5, :cond_4

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_4
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v4, p1, v0

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0, v2}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    check-cast p1, Lw5/k;

    iget-object v7, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ly5/f;->m(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_f

    if-ne v0, v6, :cond_9

    iget v0, p0, Ly5/i;->D:I

    if-lt v0, v5, :cond_8

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_8
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    :cond_9
    iget-boolean v0, p0, Ly5/b;->x:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    invoke-virtual {p1, v1, v0}, Lw5/k;->a(I[B)I

    move-result v0

    if-gez v0, :cond_a

    invoke-virtual {p1}, Lw5/k;->c()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    return-void

    :cond_a
    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v0

    iput p1, p0, Ly5/i;->D:I

    return-void

    :cond_b
    iget v0, p0, Ly5/i;->D:I

    if-lt v0, v5, :cond_c

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_c
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    aput-byte v4, v0, v1

    invoke-virtual {p1, v2, v0}, Lw5/k;->a(I[B)I

    move-result v0

    if-gez v0, :cond_d

    invoke-virtual {p1}, Lw5/k;->c()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    goto :goto_2

    :cond_d
    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v0

    iput p1, p0, Ly5/i;->D:I

    :goto_2
    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v5, :cond_e

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_e
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v4, p1, v0

    return-void

    :cond_f
    invoke-virtual {p0, v2}, Ls5/g;->b(Ljava/lang/String;)V

    throw v1
.end method

.method public final U()V
    .locals 1

    const-string v0, "write a null"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly5/i;->N0()V

    return-void
.end method

.method public final V(D)V
    .locals 2

    iget-boolean v0, p0, Lt5/a;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ls5/f;->r:Ls5/f;

    iget v1, p0, Lt5/a;->n:I

    invoke-virtual {v0, v1}, Ls5/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lw5/i;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->g0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lw5/i;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final W(F)V
    .locals 2

    iget-boolean v0, p0, Lt5/a;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lw5/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ls5/f;->r:Ls5/f;

    iget v1, p0, Lt5/a;->n:I

    invoke-virtual {v0, v1}, Ls5/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, v0}, Lw5/i;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->g0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Ls5/f;->w:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    move-result v0

    invoke-static {p1, v0}, Lw5/i;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final X(I)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0xd

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    iget-byte v3, p0, Ly5/i;->B:B

    aput-byte v3, v0, v1

    invoke-static {v0, p1, v2}, Lw5/i;->h([BII)I

    move-result p1

    iget-object v0, p0, Ly5/i;->C:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v3, v0, p1

    return-void

    :cond_2
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    invoke-static {v0, p1, v1}, Lw5/i;->h([BII)I

    move-result p1

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final Y(J)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lt5/a;->p:Z

    iget v1, p0, Ly5/i;->E:I

    if-eqz v0, :cond_1

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    iget-byte v3, p0, Ly5/i;->B:B

    aput-byte v3, v0, v1

    invoke-static {p1, p2, v0, v2}, Lw5/i;->j(J[BI)I

    move-result p1

    iget-object p2, p0, Ly5/i;->C:[B

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ly5/i;->D:I

    aput-byte v3, p2, p1

    return-void

    :cond_1
    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    invoke-static {p1, p2, v0, v1}, Lw5/i;->j(J[BI)I

    move-result p1

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/i;->N0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ly5/i;->O0(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ly5/i;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final a0(Ljava/math/BigDecimal;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/i;->N0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lt5/a;->x0(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->O0(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lt5/a;->x0(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final b0(Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/i;->N0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->O0(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final c0(S)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-boolean v0, p0, Lt5/a;->p:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0x8

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    iget-byte v3, p0, Ly5/i;->B:B

    aput-byte v3, v0, v1

    invoke-static {v0, p1, v2}, Lw5/i;->h([BII)I

    move-result p1

    iget-object v0, p0, Ly5/i;->C:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v3, v0, p1

    return-void

    :cond_2
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    invoke-static {v0, p1, v1}, Lw5/i;->h([BII)I

    move-result p1

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final close()V
    .locals 9

    iget-object v0, p0, Lt5/a;->o:Lw5/d;

    iget-object v1, v0, Lw5/d;->p:La6/b;

    invoke-super {p0}, Lt5/a;->close()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ly5/i;->C:[B

    if-eqz v3, :cond_1

    sget-object v3, Ls5/f;->o:Ls5/f;

    invoke-virtual {p0, v3}, Lt5/a;->q(Ls5/f;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget-object v3, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v3}, Ls5/m;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ly5/i;->P()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ls5/m;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ly5/i;->R()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ly5/i;->E0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Ly5/i;->D:I

    iget-object v4, p0, Ly5/i;->A:La6/d;

    if-eqz v4, :cond_4

    :try_start_1
    iget-boolean v4, v0, Lw5/d;->o:Z

    if-nez v4, :cond_4

    sget-object v4, Ls5/f;->n:Ls5/f;

    invoke-virtual {p0, v4}, Lt5/a;->q(Ls5/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v4, Ls5/f;->p:Ls5/f;

    invoke-virtual {p0, v4}, Lt5/a;->q(Ls5/f;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    throw p0

    :cond_4
    :goto_2
    iget-object v4, p0, Ly5/i;->C:[B

    const/4 v5, 0x1

    const-string v6, "Trying to release buffer smaller than original"

    if-eqz v4, :cond_7

    iget-boolean v7, p0, Ly5/i;->I:Z

    if-eqz v7, :cond_7

    iput-object v2, p0, Ly5/i;->C:[B

    iget-object v7, v0, Lw5/d;->v:[B

    if-eq v4, v7, :cond_6

    array-length v8, v4

    array-length v7, v7

    if-lt v8, v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    iput-object v2, v0, Lw5/d;->v:[B

    invoke-virtual {v1, v5, v4}, La6/b;->c(I[B)V

    :cond_7
    iget-object v4, p0, Ly5/i;->G:[C

    if-eqz v4, :cond_a

    iput-object v2, p0, Ly5/i;->G:[C

    iget-object p0, v0, Lw5/d;->y:[C

    if-eq v4, p0, :cond_9

    array-length v7, v4

    array-length p0, p0

    if-lt v7, p0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    iput-object v2, v0, Lw5/d;->y:[C

    invoke-virtual {v1, v5, v4}, La6/b;->d(I[C)V

    :cond_a
    if-nez v3, :cond_b

    return-void

    :cond_b
    throw v3
.end method

.method public final e0(C)V
    .locals 4

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void

    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ly5/i;->D:I

    and-int/lit8 p0, p1, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Ly5/i;->G0(III[C)I

    return-void
.end method

.method public final f0(I[C)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Lt5/a;->z0(I[C)V

    add-int v0, p1, p1

    add-int/2addr v0, p1

    iget v1, p0, Ly5/i;->D:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x800

    const/16 v4, 0x7f

    iget v5, p0, Ly5/i;->E:I

    if-le v1, v5, :cond_6

    if-ge v5, v0, :cond_5

    iget-object v0, p0, Ly5/i;->C:[B

    :goto_0
    if-ge v2, p1, :cond_a

    :cond_0
    aget-char v1, p2, v2

    if-le v1, v4, :cond_3

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v1, v1, 0x3

    if-lt v1, v5, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    aget-char v2, p2, v2

    if-ge v2, v3, :cond_2

    iget v6, p0, Ly5/i;->D:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ly5/i;->D:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Ly5/i;->D:I

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v1, p1, p2}, Ly5/i;->G0(III[C)I

    move-result v1

    goto :goto_1

    :cond_3
    iget v6, p0, Ly5/i;->D:I

    if-lt v6, v5, :cond_4

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_4
    iget v6, p0, Ly5/i;->D:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ly5/i;->D:I

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_6
    :goto_2
    if-ge v2, p1, :cond_a

    :cond_7
    aget-char v0, p2, v2

    if-le v0, v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v3, :cond_8

    iget-object v1, p0, Ly5/i;->C:[B

    iget v5, p0, Ly5/i;->D:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ly5/i;->D:I

    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ly5/i;->D:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0, v2, p1, p2}, Ly5/i;->G0(III[C)I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_9
    iget-object v1, p0, Ly5/i;->C:[B

    iget v5, p0, Ly5/i;->D:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ly5/i;->D:I

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_7

    :cond_a
    :goto_3
    return-void
.end method

.method public final flush()V
    .locals 1

    invoke-virtual {p0}, Ly5/i;->E0()V

    iget-object v0, p0, Ly5/i;->A:La6/d;

    if-eqz v0, :cond_0

    sget-object v0, Ls5/f;->p:Ls5/f;

    invoke-virtual {p0, v0}, Lt5/a;->q(Ls5/f;)Z

    :cond_0
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ly5/i;->G:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v1}, Ly5/i;->f0(I[C)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v1, v0

    or-int/2addr v2, v0

    if-ltz v2, :cond_9

    iget-object v1, p0, Ly5/i;->G:[C

    array-length v2, v1

    if-gt v0, v2, :cond_1

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v1}, Ly5/i;->f0(I[C)V

    return-void

    :cond_1
    iget v4, p0, Ly5/i;->E:I

    shr-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, v4, 0x4

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v5, v2, 0x3

    move v6, v3

    :goto_0
    if-lez v0, :cond_8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v6, v7

    invoke-virtual {p1, v6, v8, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v8, p0, Ly5/i;->D:I

    add-int/2addr v8, v5

    if-le v8, v4, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    add-int/lit8 v8, v7, -0x1

    aget-char v8, v1, v8

    const v9, 0xd800

    if-lt v8, v9, :cond_3

    const v9, 0xdbff

    if-gt v8, v9, :cond_3

    add-int/lit8 v7, v7, -0x1

    :cond_3
    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_7

    :cond_4
    aget-char v9, v1, v8

    const/16 v10, 0x7f

    if-le v9, v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    const/16 v10, 0x800

    if-ge v9, v10, :cond_5

    iget-object v10, p0, Ly5/i;->C:[B

    iget v11, p0, Ly5/i;->D:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Ly5/i;->D:I

    shr-int/lit8 v13, v9, 0x6

    or-int/lit16 v13, v13, 0xc0

    int-to-byte v13, v13

    aput-byte v13, v10, v11

    add-int/lit8 v11, v11, 0x2

    iput v11, p0, Ly5/i;->D:I

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v10, v12

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v9, v8, v7, v1}, Ly5/i;->G0(III[C)I

    move-result v8

    goto :goto_1

    :cond_6
    iget-object v10, p0, Ly5/i;->C:[B

    iget v11, p0, Ly5/i;->D:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Ly5/i;->D:I

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v7, :cond_4

    :cond_7
    add-int/2addr v6, v7

    sub-int/2addr v0, v7

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `String` of length %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h0(Ls5/q;)V
    .locals 6

    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    check-cast p1, Lw5/k;

    iget-object v2, p1, Lw5/k;->n:[B

    if-nez v2, :cond_0

    sget-object v2, Lw5/k;->p:Lw5/f;

    iget-object v3, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lw5/f;->c(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p1, Lw5/k;->n:[B

    :cond_0
    array-length v3, v2

    add-int v4, v1, v3

    array-length v5, v0

    if-le v4, v5, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-gez v3, :cond_2

    invoke-virtual {p1}, Lw5/k;->d()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    return-void

    :cond_2
    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v3

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final j0(Ls5/q;)V
    .locals 6

    const-string v0, "write a raw (unencoded) value"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    check-cast p1, Lw5/k;

    iget-object v2, p1, Lw5/k;->n:[B

    if-nez v2, :cond_0

    sget-object v2, Lw5/k;->p:Lw5/f;

    iget-object v3, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lw5/f;->c(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p1, Lw5/k;->n:[B

    :cond_0
    array-length v3, v2

    add-int v4, v1, v3

    array-length v5, v0

    if-le v4, v5, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-gez v3, :cond_2

    invoke-virtual {p1}, Lw5/k;->d()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    return-void

    :cond_2
    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v3

    iput p1, p0, Ly5/i;->D:I

    return-void
.end method

.method public final k0()V
    .locals 3

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

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
    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    const/16 p0, 0x5b

    aput-byte p0, v0, v1

    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

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
    iget p1, p0, Ly5/i;->D:I

    iget v0, p0, Ly5/i;->E:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    const/16 p0, 0x5b

    aput-byte p0, p1, v0

    return-void
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

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
    iget p1, p0, Ly5/i;->D:I

    iget v0, p0, Ly5/i;->E:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    const/16 p0, 0x5b

    aput-byte p0, p1, v0

    return-void
.end method

.method public final n0()V
    .locals 3

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

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
    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object v0, p0, Ly5/i;->C:[B

    iget v1, p0, Ly5/i;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly5/i;->D:I

    const/16 p0, 0x7b

    aput-byte p0, v0, v1

    return-void
.end method

.method public final o0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->l(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iget v0, p1, Ls5/m;->c:I

    iget-object v1, p0, Ly5/b;->t:Ls5/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ls5/c;->h(I)V

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ls5/p;->f(Lt5/a;)V

    return-void

    :cond_0
    iget p1, p0, Ly5/i;->D:I

    iget v0, p0, Ly5/i;->E:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    const/16 p0, 0x7b

    aput-byte p0, p1, v0

    return-void
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ly5/i;->N0()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ly5/i;->F:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ly5/i;->R0(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget v1, p0, Ly5/i;->D:I

    add-int/2addr v1, v0

    iget v2, p0, Ly5/i;->E:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    iget-object v1, p0, Ly5/i;->C:[B

    iget v3, p0, Ly5/i;->D:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ly5/i;->D:I

    iget-byte v4, p0, Ly5/i;->B:B

    aput-byte v4, v1, v3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Ly5/i;->P0(IILjava/lang/String;)V

    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v2, :cond_3

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_3
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v4, p1, v0

    return-void
.end method

.method public final r0(Ls5/q;)V
    .locals 5

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    iget-byte v4, p0, Ly5/i;->B:B

    aput-byte v4, v0, v2

    check-cast p1, Lw5/k;

    invoke-virtual {p1, v3, v0}, Lw5/k;->a(I[B)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lw5/k;->c()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ly5/i;->L0([B)V

    goto :goto_0

    :cond_1
    iget p1, p0, Ly5/i;->D:I

    add-int/2addr p1, v0

    iput p1, p0, Ly5/i;->D:I

    :goto_0
    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_2
    iget-object p1, p0, Ly5/i;->C:[B

    iget v0, p0, Ly5/i;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly5/i;->D:I

    aput-byte v4, p1, v0

    return-void
.end method

.method public final s0([CII)V
    .locals 5

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Ly5/i;->B0(Ljava/lang/String;)V

    iget v0, p0, Ly5/i;->D:I

    iget v1, p0, Ly5/i;->E:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_0
    iget-object v0, p0, Ly5/i;->C:[B

    iget v2, p0, Ly5/i;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ly5/i;->D:I

    iget-byte v4, p0, Ly5/i;->B:B

    aput-byte v4, v0, v2

    iget v0, p0, Ly5/i;->F:I

    if-gt p3, v0, :cond_2

    add-int/2addr v3, p3

    if-le v3, v1, :cond_1

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ly5/i;->Q0([CII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ly5/i;->S0([CII)V

    :goto_0
    iget p1, p0, Ly5/i;->D:I

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Ly5/i;->E0()V

    :cond_3
    iget-object p1, p0, Ly5/i;->C:[B

    iget p2, p0, Ly5/i;->D:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Ly5/i;->D:I

    aput-byte v4, p1, p2

    return-void
.end method
