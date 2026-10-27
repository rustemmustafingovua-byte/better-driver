.class public final Ly5/h;
.super Ly5/c;
.source "SourceFile"


# instance fields
.field public p0:Ljava/io/Reader;

.field public q0:[C

.field public final r0:Z

.field public final s0:Lz5/e;

.field public final t0:I

.field public u0:Z

.field public v0:J

.field public w0:I

.field public x0:I


# direct methods
.method public constructor <init>(Lw5/d;ILjava/io/Reader;Ls5/o;Lz5/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt5/b;-><init>(Lw5/d;I)V

    .line 2
    iput-object p4, p0, Ly5/c;->d0:Ls5/o;

    .line 3
    iput-object p3, p0, Ly5/h;->p0:Ljava/io/Reader;

    .line 4
    iget-object p2, p1, Lw5/d;->x:[C

    invoke-static {p2}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Lw5/d;->p:La6/b;

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p2, p3, p3}, La6/b;->b(II)[C

    move-result-object p2

    .line 7
    iput-object p2, p1, Lw5/d;->x:[C

    .line 8
    iput-object p2, p0, Ly5/h;->q0:[C

    .line 9
    iput p3, p0, Lt5/b;->C:I

    .line 10
    iput p3, p0, Lt5/b;->D:I

    .line 11
    iput-object p5, p0, Ly5/h;->s0:Lz5/e;

    .line 12
    iget p1, p5, Lz5/e;->d:I

    .line 13
    iput p1, p0, Ly5/h;->t0:I

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Ly5/h;->r0:Z

    return-void
.end method

.method public constructor <init>(Lw5/d;ILs5/o;Lz5/e;[CI)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lt5/b;-><init>(Lw5/d;I)V

    .line 16
    iput-object p3, p0, Ly5/c;->d0:Ls5/o;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Ly5/h;->p0:Ljava/io/Reader;

    .line 18
    iput-object p5, p0, Ly5/h;->q0:[C

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lt5/b;->C:I

    .line 20
    iput p6, p0, Lt5/b;->D:I

    .line 21
    iput p1, p0, Lt5/b;->G:I

    int-to-long p1, p1

    .line 22
    iput-wide p1, p0, Lt5/b;->E:J

    .line 23
    iput-object p4, p0, Ly5/h;->s0:Lz5/e;

    .line 24
    iget p1, p4, Lz5/e;->d:I

    .line 25
    iput p1, p0, Ly5/h;->t0:I

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Ly5/h;->r0:Z

    return-void
.end method


# virtual methods
.method public final A0(Ls5/a;Lu6/e;)I
    .locals 2

    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt5/b;->A:Lw5/d;

    invoke-virtual {v0}, Lw5/d;->c()[B

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Ly5/h;->Q1(Ls5/a;Lu6/e;[B)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lw5/d;->d([B)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lw5/d;->d([B)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ly5/h;->J(Ls5/a;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    array-length p0, p0

    return p0
.end method

.method public final A1(I)Ljava/lang/String;
    .locals 10

    iget v0, p0, Ly5/h;->t0:I

    iget-object v1, p0, Ly5/h;->s0:Lz5/e;

    const/16 v2, 0x27

    if-ne p1, v2, :cond_4

    iget v3, p0, Ls5/k;->l:I

    sget v4, Ly5/c;->j0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    iget p1, p0, Lt5/b;->C:I

    iget v3, p0, Lt5/b;->D:I

    if-ge p1, v3, :cond_3

    sget-object v4, Ly5/c;->n0:[I

    array-length v5, v4

    :cond_0
    iget-object v6, p0, Ly5/h;->q0:[C

    aget-char v7, v6, p1

    if-ne v7, v2, :cond_1

    iget v2, p0, Lt5/b;->C:I

    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lt5/b;->C:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, v0, v6}, Lz5/e;->b(III[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ge v7, v5, :cond_2

    aget v6, v4, v7

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v7

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v3, :cond_0

    :cond_3
    :goto_0
    iget v1, p0, Lt5/b;->C:I

    iput p1, p0, Lt5/b;->C:I

    invoke-virtual {p0, v1, v0, v2}, Ly5/h;->M1(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget v2, p0, Ls5/k;->l:I

    sget v3, Ly5/c;->k0:I

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    sget-object v2, Lw5/b;->g:[I

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p1, v4, :cond_6

    aget v7, v2, p1

    if-nez v7, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v5

    goto :goto_1

    :cond_6
    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_10

    iget p1, p0, Lt5/b;->C:I

    iget v3, p0, Lt5/b;->D:I

    if-ge p1, v3, :cond_a

    :cond_7
    iget-object v7, p0, Ly5/h;->q0:[C

    aget-char v8, v7, p1

    if-ge v8, v4, :cond_8

    aget v9, v2, v8

    if-eqz v9, :cond_9

    iget v2, p0, Lt5/b;->C:I

    sub-int/2addr v2, v6

    iput p1, p0, Lt5/b;->C:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, v0, v7}, Lz5/e;->b(III[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    int-to-char v7, v8

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-nez v7, :cond_9

    iget v2, p0, Lt5/b;->C:I

    sub-int/2addr v2, v6

    iput p1, p0, Lt5/b;->C:I

    iget-object p0, p0, Ly5/h;->q0:[C

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, v0, p0}, Lz5/e;->b(III[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v8

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v3, :cond_7

    :cond_a
    iget v3, p0, Lt5/b;->C:I

    sub-int/2addr v3, v6

    iput p1, p0, Lt5/b;->C:I

    iget-object v4, p0, Ly5/h;->q0:[C

    sub-int/2addr p1, v3

    iget-object v7, p0, Lt5/b;->M:La6/o;

    invoke-virtual {v7, v4, v3, p1}, La6/s;->o([CII)V

    invoke-virtual {v7}, La6/s;->l()[C

    move-result-object p1

    iget v3, v7, La6/s;->i:I

    array-length v4, v2

    :goto_2
    iget v8, p0, Lt5/b;->C:I

    iget v9, p0, Lt5/b;->D:I

    if-lt v8, v9, :cond_b

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    iget-object v8, p0, Ly5/h;->q0:[C

    iget v9, p0, Lt5/b;->C:I

    aget-char v8, v8, v9

    if-ge v8, v4, :cond_c

    aget v9, v2, v8

    if-eqz v9, :cond_e

    goto :goto_3

    :cond_c
    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-nez v9, :cond_e

    :goto_3
    iput v3, v7, La6/s;->i:I

    invoke-virtual {v7}, La6/s;->m()[C

    move-result-object p0

    iget p1, v7, La6/s;->c:I

    if-ltz p1, :cond_d

    move v5, p1

    :cond_d
    invoke-virtual {v7}, La6/s;->p()I

    move-result p1

    invoke-virtual {v1, v5, p1, v0, p0}, Lz5/e;->b(III[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    iget v9, p0, Lt5/b;->C:I

    add-int/2addr v9, v6

    iput v9, p0, Lt5/b;->C:I

    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v8

    add-int/lit8 v9, v3, 0x1

    aput-char v8, p1, v3

    array-length v3, p1

    if-lt v9, v3, :cond_f

    invoke-virtual {v7}, La6/s;->k()[C

    move-result-object p1

    move v3, v5

    goto :goto_2

    :cond_f
    move v3, v9

    goto :goto_2

    :cond_10
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v3

    :cond_11
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v3
.end method

.method public final B1(I)Ls5/n;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x27

    if-eq p1, v2, :cond_9

    const/16 v2, 0x49

    sget v3, Ly5/c;->g0:I

    const/4 v4, 0x1

    if-eq p1, v2, :cond_7

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_5

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_0

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_4

    goto/16 :goto_4

    :cond_0
    iget p1, p0, Lt5/b;->C:I

    iget v2, p0, Lt5/b;->D:I

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ls5/n;->B:Ls5/n;

    invoke-virtual {p0, p1}, Lt5/c;->M0(Ls5/n;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p1, p0, Ly5/h;->q0:[C

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char p1, p1, v0

    invoke-virtual {p0, p1, v1, v4}, Ly5/h;->z1(IZZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v1}, Ls5/m;->d()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v1}, Ls5/m;->f()Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Ls5/k;->l:I

    sget v2, Ly5/c;->h0:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    iget p1, p0, Lt5/b;->C:I

    sub-int/2addr p1, v4

    iput p1, p0, Lt5/b;->C:I

    sget-object p0, Ls5/n;->F:Ls5/n;

    return-object p0

    :cond_5
    const-string p1, "NaN"

    invoke-virtual {p0, v4, p1}, Ly5/h;->G1(ILjava/lang/String;)V

    iget v1, p0, Ls5/k;->l:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lt5/b;->s1(Ljava/lang/String;D)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "Non-standard token \'NaN\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string p1, "Infinity"

    invoke-virtual {p0, v4, p1}, Ly5/h;->G1(ILjava/lang/String;)V

    iget v1, p0, Ls5/k;->l:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, p1, v0, v1}, Lt5/b;->s1(Ljava/lang/String;D)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p1, "Non-standard token \'Infinity\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget v3, p0, Ls5/k;->l:I

    sget v4, Ly5/c;->j0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    iget-object v3, p0, Lt5/b;->M:La6/o;

    invoke-virtual {v3}, La6/s;->i()[C

    move-result-object p1

    iget v4, v3, La6/s;->i:I

    :goto_1
    iget v5, p0, Lt5/b;->C:I

    iget v6, p0, Lt5/b;->D:I

    if-lt v5, v6, :cond_b

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    sget-object p1, Ls5/n;->t:Ls5/n;

    const-string p1, ": was expecting closing quote for a string value"

    invoke-virtual {p0, p1}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    iget-object v5, p0, Ly5/h;->q0:[C

    iget v6, p0, Lt5/b;->C:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lt5/b;->C:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-gt v5, v6, :cond_e

    if-ne v5, v6, :cond_c

    invoke-virtual {p0}, Ly5/h;->a1()C

    move-result v5

    goto :goto_3

    :cond_c
    if-gt v5, v2, :cond_e

    if-ne v5, v2, :cond_d

    iput v4, v3, La6/s;->i:I

    sget-object p0, Ls5/n;->A:Ls5/n;

    return-object p0

    :cond_d
    const/16 v6, 0x20

    if-ge v5, v6, :cond_e

    const-string v6, "string value"

    invoke-virtual {p0, v5, v6}, Lt5/b;->m1(ILjava/lang/String;)V

    :cond_e
    :goto_3
    array-length v6, p1

    if-lt v4, v6, :cond_f

    invoke-virtual {v3}, La6/s;->k()[C

    move-result-object p1

    move v4, v1

    :cond_f
    add-int/lit8 v6, v4, 0x1

    aput-char v5, p1, v4

    move v4, v6

    goto :goto_1

    :cond_10
    :goto_4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/b;->n1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ly5/h;->R1(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p0}, Lt5/b;->n1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expected a valid value "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v0
.end method

.method public final C1()Z
    .locals 6

    iget-object v0, p0, Ly5/h;->p0:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lt5/b;->D:I

    iget-wide v2, p0, Lt5/b;->E:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lt5/b;->E:J

    iget v2, p0, Lt5/b;->G:I

    sub-int/2addr v2, v0

    iput v2, p0, Lt5/b;->G:I

    iget-object v0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ly5/h;->p0:Ljava/io/Reader;

    iget-object v2, p0, Ly5/h;->q0:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Ly5/h;->v0:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ly5/h;->v0:J

    iput v1, p0, Lt5/b;->C:I

    iput v0, p0, Lt5/b;->D:I

    const/4 p0, 0x1

    return p0

    :cond_0
    iput v1, p0, Lt5/b;->D:I

    iput v1, p0, Lt5/b;->C:I

    invoke-virtual {p0}, Ly5/h;->W0()V

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lt5/b;->D:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final D1()V
    .locals 1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lt5/c;->K0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E1()V
    .locals 4

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lt5/b;->D:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Ly5/h;->q0:[C

    aget-char v2, v1, v0

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v1, v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x4

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lt5/b;->C:I

    return-void

    :cond_1
    const-string v0, "false"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ly5/h;->G1(ILjava/lang/String;)V

    return-void
.end method

.method public final F1()V
    .locals 4

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lt5/b;->D:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Ly5/h;->q0:[C

    aget-char v2, v1, v0

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x3

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lt5/b;->C:I

    return-void

    :cond_1
    const-string v0, "null"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ly5/h;->G1(ILjava/lang/String;)V

    return-void
.end method

.method public final G1(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lt5/b;->C:I

    add-int/2addr v1, v0

    iget v2, p0, Lt5/b;->D:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7d

    const/16 v6, 0x5d

    const/16 v7, 0x30

    if-lt v1, v2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget v1, p0, Lt5/b;->C:I

    iget v2, p0, Lt5/b;->D:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Ly5/h;->q0:[C

    iget v2, p0, Lt5/b;->C:I

    aget-char v1, v1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt5/b;->C:I

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lt5/b;->D:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    if-lt v0, v7, :cond_7

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_7

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/b;->n1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ly5/h;->R1(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/b;->n1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ly5/h;->R1(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_5
    iget-object v1, p0, Ly5/h;->q0:[C

    iget v2, p0, Lt5/b;->C:I

    aget-char v1, v1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_8

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt5/b;->C:I

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Ly5/h;->q0:[C

    aget-char v0, v0, v1

    if-lt v0, v7, :cond_7

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_7

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/b;->n1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ly5/h;->R1(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_0
    return-void

    :cond_8
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/b;->n1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ly5/h;->R1(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final H1()V
    .locals 4

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lt5/b;->D:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Ly5/h;->q0:[C

    aget-char v2, v1, v0

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x3

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lt5/b;->C:I

    return-void

    :cond_1
    const-string v0, "true"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ly5/h;->G1(ILjava/lang/String;)V

    return-void
.end method

.method public final I1()Ls5/n;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt5/b;->O:Z

    iget-object v0, p0, Lt5/b;->L:Ls5/n;

    const/4 v1, 0x0

    iput-object v1, p0, Lt5/b;->L:Ls5/n;

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lt5/b;->I:I

    iget v2, p0, Lt5/b;->J:I

    invoke-virtual {p0, v1, v2}, Lt5/b;->p1(II)V

    goto :goto_0

    :cond_0
    sget-object v1, Ls5/n;->u:Ls5/n;

    if-ne v0, v1, :cond_1

    iget v1, p0, Lt5/b;->I:I

    iget v2, p0, Lt5/b;->J:I

    invoke-virtual {p0, v1, v2}, Lt5/b;->q1(II)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v0
.end method

.method public final J(Ls5/a;)[B
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->z:Ls5/n;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lt5/b;->Q:[B

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Ly5/h;->x1(Ls5/a;)[B

    move-result-object v0

    iput-object v0, p0, Lt5/b;->Q:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly5/h;->u0:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ls5/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lt5/b;->Q:[B

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lt5/b;->d1()La6/d;

    move-result-object v0

    invoke-virtual {p0}, Ly5/h;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lt5/c;->E0(Ljava/lang/String;La6/d;Ls5/a;)V

    invoke-virtual {v0}, La6/d;->n()[B

    move-result-object p1

    iput-object p1, p0, Lt5/b;->Q:[B

    :cond_2
    :goto_0
    iget-object p0, p0, Lt5/b;->Q:[B

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current token ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J1(IIIIZ)Ls5/n;
    .locals 10

    iget v0, p0, Lt5/b;->D:I

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/16 v3, 0x39

    const/16 v4, 0x30

    const/4 v5, 0x0

    if-ne p1, v1, :cond_5

    move p1, v5

    :goto_0
    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p2, p5}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Ly5/h;->q0:[C

    add-int/lit8 v6, p3, 0x1

    aget-char p3, v1, p3

    if-lt p3, v4, :cond_2

    if-le p3, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p3, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    sget-object v1, Ly5/e;->p:Ly5/e;

    iget-object v1, v1, Ly5/e;->m:Ls5/j;

    iget v7, p0, Ls5/k;->l:I

    invoke-virtual {v1, v7}, Ls5/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, p1}, Lt5/c;->O0(ILjava/lang/String;)V

    throw v2

    :cond_4
    :goto_2
    move v9, p3

    move p3, p1

    move p1, v9

    goto :goto_3

    :cond_5
    move v6, p3

    move p3, v5

    :goto_3
    or-int/lit8 v1, p1, 0x20

    const/16 v7, 0x65

    if-ne v1, v7, :cond_d

    if-lt v6, v0, :cond_6

    iput p2, p0, Lt5/b;->C:I

    invoke-virtual {p0, p2, p5}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Ly5/h;->q0:[C

    add-int/lit8 v1, v6, 0x1

    aget-char v7, p1, v6

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_8

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_7

    goto :goto_4

    :cond_7
    move v6, v1

    move p1, v7

    goto :goto_5

    :cond_8
    :goto_4
    if-lt v1, v0, :cond_9

    iput p2, p0, Lt5/b;->C:I

    invoke-virtual {p0, p2, p5}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v6, v6, 0x2

    aget-char p1, p1, v1

    :goto_5
    if-gt p1, v3, :cond_b

    if-lt p1, v4, :cond_b

    add-int/lit8 v5, v5, 0x1

    if-lt v6, v0, :cond_a

    iput p2, p0, Lt5/b;->C:I

    invoke-virtual {p0, p2, p5}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object p1, p0, Ly5/h;->q0:[C

    add-int/lit8 v1, v6, 0x1

    aget-char p1, p1, v6

    move v6, v1

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    const-string p2, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, p2}, Lt5/c;->O0(ILjava/lang/String;)V

    throw v2

    :cond_d
    :goto_6
    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lt5/b;->C:I

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Ly5/h;->d2(I)V

    :cond_e
    sub-int/2addr v6, p2

    iget-object p1, p0, Lt5/b;->M:La6/o;

    iget-object v0, p0, Ly5/h;->q0:[C

    invoke-virtual {p1, v0, p2, v6}, La6/s;->o([CII)V

    invoke-virtual {p0, p4, p3, p5, v5}, Lt5/b;->t1(IIZI)Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final K1(Z)Ls5/n;
    .locals 6

    sget-object v0, Ly5/e;->o:Ly5/e;

    iget-object v0, v0, Ly5/e;->m:Ls5/j;

    iget v1, p0, Ls5/k;->l:I

    invoke-virtual {v0, v1}, Ls5/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ly5/h;->B1(I)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_0
    iget v3, p0, Lt5/b;->C:I

    add-int/lit8 v0, v3, -0x1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v3, -0x2

    :cond_1
    move v2, v0

    const/16 v1, 0x2e

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Ly5/h;->J1(IIIIZ)Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final L1()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Ly5/h;->t0:I

    :goto_0
    iget v2, p0, Lt5/b;->D:I

    const/16 v3, 0x22

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ly5/h;->q0:[C

    aget-char v4, v2, v0

    sget-object v5, Ly5/c;->n0:[I

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget v5, v5, v4

    if-eqz v5, :cond_0

    if-ne v4, v3, :cond_1

    iget v3, p0, Lt5/b;->C:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lt5/b;->C:I

    iget-object p0, p0, Ly5/h;->s0:Lz5/e;

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0, v1, v2}, Lz5/e;->b(III[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    mul-int/lit8 v1, v1, 0x21

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lt5/b;->C:I

    iput v0, p0, Lt5/b;->C:I

    invoke-virtual {p0, v2, v1, v3}, Ly5/h;->M1(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final M1(III)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lt5/b;->M:La6/o;

    invoke-virtual {v2, v0, p1, v1}, La6/s;->o([CII)V

    invoke-virtual {v2}, La6/s;->l()[C

    move-result-object p1

    iget v0, v2, La6/s;->i:I

    :goto_0
    iget v1, p0, Lt5/b;->C:I

    iget v3, p0, Lt5/b;->D:I

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Ls5/n;->t:Ls5/n;

    const-string p1, " in field name"

    invoke-virtual {p0, p1}, Lt5/c;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_1
    iget-object v1, p0, Ly5/h;->q0:[C

    iget v3, p0, Lt5/b;->C:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lt5/b;->C:I

    aget-char v1, v1, v3

    const/4 v3, 0x0

    const/16 v4, 0x5c

    if-gt v1, v4, :cond_5

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Ly5/h;->a1()C

    move-result v1

    goto :goto_2

    :cond_2
    if-gt v1, p3, :cond_5

    if-ne v1, p3, :cond_4

    iput v0, v2, La6/s;->i:I

    invoke-virtual {v2}, La6/s;->m()[C

    move-result-object p1

    iget p3, v2, La6/s;->c:I

    if-ltz p3, :cond_3

    move v3, p3

    :cond_3
    iget-object p0, p0, Ly5/h;->s0:Lz5/e;

    invoke-virtual {v2}, La6/s;->p()I

    move-result p3

    invoke-virtual {p0, v3, p3, p2, p1}, Lz5/e;->b(III[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v4, 0x20

    if-ge v1, v4, :cond_5

    const-string v4, "name"

    invoke-virtual {p0, v1, v4}, Lt5/b;->m1(ILjava/lang/String;)V

    :cond_5
    :goto_2
    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, v1

    add-int/lit8 v4, v0, 0x1

    aput-char v1, p1, v0

    array-length v0, p1

    if-lt v4, v0, :cond_6

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object p1

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method public final N1(IZ)Ls5/n;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz v1, :cond_0

    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    iput v2, v0, Lt5/b;->C:I

    iget-object v2, v0, Lt5/b;->M:La6/o;

    invoke-virtual {v2}, La6/s;->i()[C

    move-result-object v3

    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    aput-char v4, v3, v5

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    iget v8, v0, Lt5/b;->C:I

    iget v9, v0, Lt5/b;->D:I

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Ly5/h;->q0:[C

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lt5/b;->C:I

    aget-char v8, v9, v8

    goto :goto_2

    :cond_2
    sget-object v8, Ls5/n;->t:Ls5/n;

    const-string v8, "No digit following sign"

    invoke-virtual {v0, v8}, Ly5/h;->e2(Ljava/lang/String;)C

    move-result v8

    :goto_2
    const/16 v9, 0x39

    const/16 v10, 0x30

    if-ne v8, v10, :cond_b

    iget v8, v0, Lt5/b;->C:I

    iget v11, v0, Lt5/b;->D:I

    if-ge v8, v11, :cond_4

    iget-object v12, v0, Ly5/h;->q0:[C

    aget-char v12, v12, v8

    if-lt v12, v10, :cond_3

    if-le v12, v9, :cond_4

    :cond_3
    :goto_3
    move v8, v10

    goto :goto_4

    :cond_4
    if-lt v8, v11, :cond_5

    invoke-virtual {v0}, Ly5/h;->C1()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v8, v0, Ly5/h;->q0:[C

    iget v11, v0, Lt5/b;->C:I

    aget-char v8, v8, v11

    if-lt v8, v10, :cond_3

    if-le v8, v9, :cond_6

    goto :goto_3

    :cond_6
    iget v12, v0, Ls5/k;->l:I

    sget v13, Ly5/c;->f0:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_a

    add-int/2addr v11, v6

    iput v11, v0, Lt5/b;->C:I

    if-ne v8, v10, :cond_b

    :cond_7
    iget v11, v0, Lt5/b;->C:I

    iget v12, v0, Lt5/b;->D:I

    if-lt v11, v12, :cond_8

    invoke-virtual {v0}, Ly5/h;->C1()Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_8
    iget-object v8, v0, Ly5/h;->q0:[C

    iget v11, v0, Lt5/b;->C:I

    aget-char v8, v8, v11

    if-lt v8, v10, :cond_3

    if-le v8, v9, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lt5/b;->C:I

    if-eq v8, v10, :cond_7

    goto :goto_4

    :cond_a
    new-instance v1, Ls5/i;

    const-string v2, "Invalid numeric value: Leading zeroes not allowed"

    invoke-direct {v1, v0, v2, v5}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1

    :cond_b
    :goto_4
    move v11, v5

    :goto_5
    if-lt v8, v10, :cond_e

    if-gt v8, v9, :cond_e

    add-int/lit8 v11, v11, 0x1

    array-length v12, v3

    if-lt v7, v12, :cond_c

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object v3

    move v7, v5

    :cond_c
    add-int/lit8 v12, v7, 0x1

    aput-char v8, v3, v7

    iget v7, v0, Lt5/b;->C:I

    iget v8, v0, Lt5/b;->D:I

    if-lt v7, v8, :cond_d

    invoke-virtual {v0}, Ly5/h;->C1()Z

    move-result v7

    if-nez v7, :cond_d

    move v8, v5

    move v7, v12

    move v12, v6

    goto :goto_6

    :cond_d
    iget-object v7, v0, Ly5/h;->q0:[C

    iget v8, v0, Lt5/b;->C:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lt5/b;->C:I

    aget-char v8, v7, v8

    move v7, v12

    goto :goto_5

    :cond_e
    move v12, v5

    :goto_6
    const/16 v13, 0x2e

    if-nez v11, :cond_10

    if-ne v8, v13, :cond_f

    sget-object v14, Ly5/e;->o:Ly5/e;

    iget-object v14, v14, Ly5/e;->m:Ls5/j;

    iget v15, v0, Ls5/k;->l:I

    invoke-virtual {v14, v15}, Ls5/j;->a(I)Z

    move-result v14

    if-nez v14, :cond_10

    :cond_f
    invoke-virtual {v0, v8, v1, v5}, Ly5/h;->z1(IZZ)Ls5/n;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v14, 0x0

    const/4 v15, -0x1

    if-ne v8, v13, :cond_17

    array-length v13, v3

    if-lt v7, v13, :cond_11

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object v3

    move v7, v5

    :cond_11
    add-int/lit8 v13, v7, 0x1

    aput-char v8, v3, v7

    move v7, v13

    move v13, v5

    :goto_7
    iget v5, v0, Lt5/b;->C:I

    move/from16 v16, v6

    iget v6, v0, Lt5/b;->D:I

    if-lt v5, v6, :cond_12

    invoke-virtual {v0}, Ly5/h;->C1()Z

    move-result v5

    if-nez v5, :cond_12

    move/from16 v12, v16

    goto :goto_8

    :cond_12
    iget-object v5, v0, Ly5/h;->q0:[C

    iget v6, v0, Lt5/b;->C:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lt5/b;->C:I

    aget-char v8, v5, v6

    if-lt v8, v10, :cond_15

    if-le v8, v9, :cond_13

    goto :goto_8

    :cond_13
    add-int/lit8 v13, v13, 0x1

    array-length v5, v3

    if-lt v7, v5, :cond_14

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object v3

    const/4 v7, 0x0

    :cond_14
    add-int/lit8 v5, v7, 0x1

    aput-char v8, v3, v7

    move v7, v5

    move/from16 v6, v16

    goto :goto_7

    :cond_15
    :goto_8
    if-nez v13, :cond_18

    sget-object v5, Ly5/e;->p:Ly5/e;

    iget-object v5, v5, Ly5/e;->m:Ls5/j;

    iget v6, v0, Ls5/k;->l:I

    invoke-virtual {v5, v6}, Ls5/j;->a(I)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_9

    :cond_16
    const-string v1, "Decimal point not followed by a digit"

    invoke-virtual {v0, v8, v1}, Lt5/c;->O0(ILjava/lang/String;)V

    throw v14

    :cond_17
    move/from16 v16, v6

    move v13, v15

    :cond_18
    :goto_9
    or-int/lit8 v5, v8, 0x20

    const/16 v6, 0x65

    if-ne v5, v6, :cond_23

    array-length v5, v3

    if-lt v7, v5, :cond_19

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object v3

    const/4 v7, 0x0

    :cond_19
    add-int/lit8 v5, v7, 0x1

    aput-char v8, v3, v7

    iget v6, v0, Lt5/b;->C:I

    iget v7, v0, Lt5/b;->D:I

    const-string v8, "expected a digit for number exponent"

    if-ge v6, v7, :cond_1a

    iget-object v7, v0, Ly5/h;->q0:[C

    add-int/lit8 v15, v6, 0x1

    iput v15, v0, Lt5/b;->C:I

    aget-char v6, v7, v6

    goto :goto_a

    :cond_1a
    sget-object v6, Ls5/n;->t:Ls5/n;

    invoke-virtual {v0, v8}, Ly5/h;->e2(Ljava/lang/String;)C

    move-result v6

    :goto_a
    if-eq v6, v4, :cond_1c

    const/16 v4, 0x2b

    if-ne v6, v4, :cond_1b

    goto :goto_c

    :cond_1b
    move v8, v6

    :goto_b
    const/4 v4, 0x0

    goto :goto_e

    :cond_1c
    :goto_c
    array-length v4, v3

    if-lt v5, v4, :cond_1d

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object v3

    const/4 v5, 0x0

    :cond_1d
    add-int/lit8 v4, v5, 0x1

    aput-char v6, v3, v5

    iget v5, v0, Lt5/b;->C:I

    iget v6, v0, Lt5/b;->D:I

    if-ge v5, v6, :cond_1e

    iget-object v6, v0, Ly5/h;->q0:[C

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lt5/b;->C:I

    aget-char v5, v6, v5

    goto :goto_d

    :cond_1e
    sget-object v5, Ls5/n;->t:Ls5/n;

    invoke-virtual {v0, v8}, Ly5/h;->e2(Ljava/lang/String;)C

    move-result v5

    :goto_d
    move v8, v5

    move v5, v4

    goto :goto_b

    :goto_e
    if-gt v8, v9, :cond_21

    if-lt v8, v10, :cond_21

    add-int/lit8 v4, v4, 0x1

    array-length v6, v3

    if-lt v5, v6, :cond_1f

    invoke-virtual {v2}, La6/s;->k()[C

    move-result-object v3

    const/4 v5, 0x0

    :cond_1f
    add-int/lit8 v6, v5, 0x1

    aput-char v8, v3, v5

    iget v5, v0, Lt5/b;->C:I

    iget v7, v0, Lt5/b;->D:I

    if-lt v5, v7, :cond_20

    invoke-virtual {v0}, Ly5/h;->C1()Z

    move-result v5

    if-nez v5, :cond_20

    move v7, v6

    move/from16 v12, v16

    :goto_f
    move v15, v4

    goto :goto_10

    :cond_20
    iget-object v5, v0, Ly5/h;->q0:[C

    iget v7, v0, Lt5/b;->C:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lt5/b;->C:I

    aget-char v8, v5, v7

    move v5, v6

    goto :goto_e

    :cond_21
    move v7, v5

    goto :goto_f

    :goto_10
    if-eqz v15, :cond_22

    goto :goto_11

    :cond_22
    const-string v1, "Exponent indicator not followed by a digit"

    invoke-virtual {v0, v8, v1}, Lt5/c;->O0(ILjava/lang/String;)V

    throw v14

    :cond_23
    :goto_11
    if-nez v12, :cond_24

    iget v3, v0, Lt5/b;->C:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lt5/b;->C:I

    iget-object v3, v0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v3}, Ls5/m;->f()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0, v8}, Ly5/h;->d2(I)V

    :cond_24
    iput v7, v2, La6/s;->i:I

    if-gez v13, :cond_25

    if-gez v15, :cond_25

    invoke-virtual {v0, v11, v1}, Lt5/b;->u1(IZ)Ls5/n;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-virtual {v0, v11, v13, v1, v15}, Lt5/b;->t1(IIZI)Ls5/n;

    move-result-object v0

    return-object v0
.end method

.method public final O1(Z)Ls5/n;
    .locals 9

    iget v0, p0, Lt5/b;->C:I

    if-eqz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v4, p1}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Ly5/h;->q0:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    const/16 v2, 0x2e

    const/16 v5, 0x39

    const/4 v6, 0x1

    if-gt v0, v5, :cond_2

    const/16 v7, 0x30

    if-ge v0, v7, :cond_3

    :cond_2
    move v7, p1

    goto :goto_4

    :cond_3
    if-ne v0, v7, :cond_4

    invoke-virtual {p0, v4, p1}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    if-lt v3, v1, :cond_5

    invoke-virtual {p0, v4, p1}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Ly5/h;->q0:[C

    move v8, v5

    add-int/lit8 v5, v3, 0x1

    aget-char v0, v0, v3

    if-lt v0, v7, :cond_7

    if-le v0, v8, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v3, v5

    move v5, v8

    goto :goto_1

    :cond_7
    :goto_2
    if-eq v0, v2, :cond_a

    or-int/lit8 v1, v0, 0x20

    const/16 v2, 0x65

    if-ne v1, v2, :cond_8

    goto :goto_3

    :cond_8
    iput v3, p0, Lt5/b;->C:I

    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v1}, Ls5/m;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Ly5/h;->d2(I)V

    :cond_9
    sub-int/2addr v3, v4

    iget-object v0, p0, Lt5/b;->M:La6/o;

    iget-object v1, p0, Ly5/h;->q0:[C

    invoke-virtual {v0, v1, v4, v3}, La6/s;->o([CII)V

    invoke-virtual {p0, v6, p1}, Lt5/b;->u1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_3
    iput v5, p0, Lt5/b;->C:I

    move-object v2, p0

    move v7, p1

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Ly5/h;->J1(IIIIZ)Ls5/n;

    move-result-object p0

    return-object p0

    :goto_4
    iput v3, p0, Lt5/b;->C:I

    if-ne v0, v2, :cond_b

    invoke-virtual {p0, v7}, Ly5/h;->K1(Z)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0, v0, v7, v6}, Ly5/h;->z1(IZZ)Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final P1(I)Ls5/n;
    .locals 8

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v3, v0, -0x1

    iget v1, p0, Lt5/b;->D:I

    const/4 v2, 0x0

    const/16 v4, 0x30

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, v3, v2}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    move v5, p1

    :goto_0
    if-lt v0, v1, :cond_1

    iput v3, p0, Lt5/b;->C:I

    invoke-virtual {p0, v3, v2}, Ly5/h;->N1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Ly5/h;->q0:[C

    move v6, v4

    add-int/lit8 v4, v0, 0x1

    aget-char p1, p1, v0

    if-lt p1, v6, :cond_3

    const/16 v7, 0x39

    if-le p1, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v0, v4

    move v4, v6

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v1, 0x2e

    if-eq p1, v1, :cond_6

    or-int/lit8 v1, p1, 0x20

    const/16 v6, 0x65

    if-ne v1, v6, :cond_4

    goto :goto_2

    :cond_4
    iput v0, p0, Lt5/b;->C:I

    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v1}, Ls5/m;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Ly5/h;->d2(I)V

    :cond_5
    sub-int/2addr v0, v3

    iget-object p1, p0, Lt5/b;->M:La6/o;

    iget-object v1, p0, Ly5/h;->q0:[C

    invoke-virtual {p1, v1, v3, v0}, La6/s;->o([CII)V

    invoke-virtual {p0, v5, v2}, Lt5/b;->u1(IZ)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    iput v4, p0, Lt5/b;->C:I

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Ly5/h;->J1(IIIIZ)Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final Q1(Ls5/a;Lu6/e;[B)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :cond_0
    :goto_0
    iget v9, v0, Lt5/b;->C:I

    iget v10, v0, Lt5/b;->D:I

    if-lt v9, v10, :cond_1

    invoke-virtual {v0}, Ly5/h;->D1()V

    :cond_1
    iget-object v9, v0, Ly5/h;->q0:[C

    iget v10, v0, Lt5/b;->C:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lt5/b;->C:I

    aget-char v9, v9, v10

    const/16 v10, 0x20

    if-le v9, v10, :cond_0

    invoke-virtual {v1, v9}, Ls5/a;->c(C)I

    move-result v10

    iget-char v11, v1, Ls5/a;->p:C

    const/16 v12, 0x22

    if-gez v10, :cond_3

    if-ne v9, v12, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v1, v9, v6}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v10

    if-gez v10, :cond_3

    goto :goto_0

    :cond_3
    if-le v7, v4, :cond_4

    add-int/2addr v8, v7

    invoke-virtual {v2, v3, v6, v7}, Lu6/e;->write([BII)V

    move v7, v6

    :cond_4
    iget v9, v0, Lt5/b;->C:I

    iget v13, v0, Lt5/b;->D:I

    if-lt v9, v13, :cond_5

    invoke-virtual {v0}, Ly5/h;->D1()V

    :cond_5
    iget-object v9, v0, Ly5/h;->q0:[C

    iget v13, v0, Lt5/b;->C:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lt5/b;->C:I

    aget-char v9, v9, v13

    invoke-virtual {v1, v9}, Ls5/a;->c(C)I

    move-result v13

    const/4 v14, 0x1

    if-gez v13, :cond_6

    invoke-virtual {v0, v1, v9, v14}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v13

    :cond_6
    shl-int/lit8 v9, v10, 0x6

    or-int/2addr v9, v13

    iget v10, v0, Lt5/b;->C:I

    iget v13, v0, Lt5/b;->D:I

    if-lt v10, v13, :cond_7

    invoke-virtual {v0}, Ly5/h;->D1()V

    :cond_7
    iget-object v10, v0, Ly5/h;->q0:[C

    iget v13, v0, Lt5/b;->C:I

    add-int/lit8 v15, v13, 0x1

    iput v15, v0, Lt5/b;->C:I

    aget-char v10, v10, v13

    invoke-virtual {v1, v10}, Ls5/a;->c(C)I

    move-result v13

    move/from16 v16, v14

    const/4 v14, -0x2

    const/16 v17, 0x0

    const/4 v15, 0x2

    if-gez v13, :cond_e

    if-eq v13, v14, :cond_a

    if-ne v10, v12, :cond_9

    shr-int/lit8 v4, v9, 0x4

    add-int/lit8 v5, v7, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    invoke-virtual {v1}, Ls5/a;->l()Z

    move-result v4

    if-nez v4, :cond_8

    move v7, v5

    goto/16 :goto_2

    :cond_8
    iget v2, v0, Lt5/b;->C:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lt5/b;->C:I

    invoke-virtual {v1}, Ls5/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v17

    :cond_9
    invoke-virtual {v0, v1, v10, v15}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v13

    :cond_a
    if-ne v13, v14, :cond_e

    iget v10, v0, Lt5/b;->C:I

    iget v12, v0, Lt5/b;->D:I

    if-lt v10, v12, :cond_b

    invoke-virtual {v0}, Ly5/h;->D1()V

    :cond_b
    iget-object v10, v0, Ly5/h;->q0:[C

    iget v12, v0, Lt5/b;->C:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lt5/b;->C:I

    aget-char v10, v10, v12

    if-ne v10, v11, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v0, v1, v10, v5}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v12

    if-ne v12, v14, :cond_d

    :goto_1
    shr-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v7, 0x1

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    move v7, v10

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v10, v5, v0}, Lt5/b;->r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v13

    iget v10, v0, Lt5/b;->C:I

    iget v11, v0, Lt5/b;->D:I

    if-lt v10, v11, :cond_f

    invoke-virtual {v0}, Ly5/h;->D1()V

    :cond_f
    iget-object v10, v0, Ly5/h;->q0:[C

    iget v11, v0, Lt5/b;->C:I

    add-int/lit8 v13, v11, 0x1

    iput v13, v0, Lt5/b;->C:I

    aget-char v10, v10, v11

    invoke-virtual {v1, v10}, Ls5/a;->c(C)I

    move-result v11

    if-gez v11, :cond_14

    if-eq v11, v14, :cond_13

    if-ne v10, v12, :cond_12

    shr-int/lit8 v4, v9, 0x2

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v9, 0xa

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/2addr v7, v15

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    invoke-virtual {v1}, Ls5/a;->l()Z

    move-result v4

    if-nez v4, :cond_11

    :goto_2
    iput-boolean v6, v0, Ly5/h;->u0:Z

    if-lez v7, :cond_10

    add-int/2addr v8, v7

    invoke-virtual {v2, v3, v6, v7}, Lu6/e;->write([BII)V

    :cond_10
    return v8

    :cond_11
    iget v2, v0, Lt5/b;->C:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lt5/b;->C:I

    invoke-virtual {v1}, Ls5/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v17

    :cond_12
    invoke-virtual {v0, v1, v10, v5}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v11

    :cond_13
    if-ne v11, v14, :cond_14

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v7, 0x1

    shr-int/lit8 v9, v9, 0xa

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v7, 0x2

    int-to-byte v9, v10

    aput-byte v9, v3, v11

    goto/16 :goto_0

    :cond_14
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v11

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v9, 0x10

    int-to-byte v11, v11

    aput-byte v11, v3, v7

    add-int/lit8 v11, v7, 0x2

    shr-int/lit8 v12, v9, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    add-int/lit8 v7, v7, 0x3

    int-to-byte v9, v9

    aput-byte v9, v3, v11

    goto/16 :goto_0
.end method

.method public final R1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    aget-char p1, p1, v1

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt5/b;->C:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iget-object v1, p0, Lt5/b;->A:Lw5/d;

    iget-object v1, v1, Lw5/d;->t:Ls5/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized token \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\': was expecting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ls5/i;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw p2
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_0
    iget-object p0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {p0}, La6/s;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lt5/b;->S()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lt5/c;->S0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final S1()I
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v1}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ls5/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1

    :cond_2
    :goto_1
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ly5/h;->X1()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_5

    iget v1, p0, Ls5/k;->l:I

    sget v2, Ly5/c;->m0:I

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ly5/h;->Y1()V

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iput v2, p0, Lt5/b;->G:I

    goto :goto_0

    :cond_7
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T1()V
    .locals 3

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt5/b;->C:I

    :cond_1
    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iget v0, p0, Lt5/b;->C:I

    iput v0, p0, Lt5/b;->G:I

    return-void
.end method

.method public final U1()I
    .locals 10

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lt5/b;->D:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Ly5/h;->q0:[C

    aget-char v2, v1, v0

    const/16 v4, 0x3a

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v2, v4, :cond_8

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v2, v1, v2

    if-le v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lt5/b;->C:I

    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_3
    if-eq v2, v8, :cond_4

    if-ne v2, v5, :cond_7

    :cond_4
    add-int/lit8 v2, v0, 0x2

    iput v2, p0, Lt5/b;->C:I

    aget-char v1, v1, v2

    if-le v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lt5/b;->C:I

    return v1

    :cond_6
    :goto_1
    invoke-virtual {p0, v9}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0, v9}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_8
    if-eq v2, v8, :cond_9

    if-ne v2, v5, :cond_a

    :cond_9
    add-int/2addr v0, v9

    iput v0, p0, Lt5/b;->C:I

    aget-char v2, v1, v0

    :cond_a
    if-ne v2, v4, :cond_12

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v2, v1, v2

    if-le v2, v8, :cond_d

    if-eq v2, v7, :cond_c

    if-ne v2, v6, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lt5/b;->C:I

    return v2

    :cond_c
    :goto_2
    invoke-virtual {p0, v9}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_d
    if-eq v2, v8, :cond_e

    if-ne v2, v5, :cond_11

    :cond_e
    add-int/lit8 v2, v0, 0x2

    iput v2, p0, Lt5/b;->C:I

    aget-char v1, v1, v2

    if-le v1, v8, :cond_11

    if-eq v1, v7, :cond_10

    if-ne v1, v6, :cond_f

    goto :goto_3

    :cond_f
    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lt5/b;->C:I

    return v1

    :cond_10
    :goto_3
    invoke-virtual {p0, v9}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_11
    invoke-virtual {p0, v9}, Ly5/h;->V1(Z)I

    move-result p0

    return p0

    :cond_12
    invoke-virtual {p0, v3}, Ly5/h;->V1(Z)I

    move-result p0

    return p0
.end method

.method public final V1(Z)I
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " within/between "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    const/4 v4, 0x1

    if-le v0, v1, :cond_8

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ly5/h;->X1()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_5

    iget v1, p0, Ls5/k;->l:I

    sget v3, Ly5/c;->m0:I

    and-int/2addr v1, v3

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ly5/h;->Y1()V

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    return v0

    :cond_6
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_7

    move p1, v4

    goto :goto_0

    :cond_7
    const-string p1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, p1}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v2

    :cond_8
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget v0, p0, Lt5/b;->F:I

    add-int/2addr v0, v4

    iput v0, p0, Lt5/b;->F:I

    iput v3, p0, Lt5/b;->G:I

    goto :goto_0

    :cond_9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_0

    :cond_a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    throw v2
.end method

.method public final W0()V
    .locals 2

    iget-object v0, p0, Ly5/h;->p0:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt5/b;->A:Lw5/d;

    iget-boolean v0, v0, Lw5/d;->o:Z

    if-nez v0, :cond_0

    sget-object v0, Ls5/j;->n:Ls5/j;

    iget v1, p0, Ls5/k;->l:I

    invoke-virtual {v0, v1}, Ls5/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ly5/h;->p0:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ly5/h;->p0:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method public final W1(I)I
    .locals 4

    const/16 v0, 0x2c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    :cond_0
    :goto_0
    iget p1, p0, Lt5/b;->C:I

    iget v0, p0, Lt5/b;->D:I

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Ly5/h;->q0:[C

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v0, v0, p1

    const/16 v3, 0x20

    if-le v0, v3, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    iput p1, p0, Lt5/b;->C:I

    invoke-virtual {p0}, Ly5/h;->S1()I

    move-result p0

    return p0

    :cond_3
    if-ge v0, v3, :cond_0

    const/16 p1, 0xa

    if-ne v0, p1, :cond_4

    iget p1, p0, Lt5/b;->F:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt5/b;->F:I

    iput v2, p0, Lt5/b;->G:I

    goto :goto_0

    :cond_4
    const/16 p1, 0xd

    if-ne v0, p1, :cond_5

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_0

    :cond_5
    const/16 p1, 0x9

    if-ne v0, p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    throw v1

    :cond_7
    invoke-virtual {p0}, Ly5/h;->S1()I

    move-result p0

    return p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v2}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v1
.end method

.method public final X1()V
    .locals 7

    iget v0, p0, Ls5/k;->l:I

    sget v1, Ly5/c;->l0:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x2f

    if-eqz v0, :cond_c

    iget v0, p0, Lt5/b;->C:I

    iget v3, p0, Lt5/b;->D:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v3, p0, Lt5/b;->C:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lt5/b;->C:I

    aget-char v0, v0, v3

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ly5/h;->Y1()V

    return-void

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_b

    :cond_3
    :goto_1
    iget v0, p0, Lt5/b;->C:I

    iget v5, p0, Lt5/b;->D:I

    if-lt v0, v5, :cond_4

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v5, p0, Lt5/b;->C:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lt5/b;->C:I

    aget-char v0, v0, v5

    if-gt v0, v3, :cond_3

    if-ne v0, v3, :cond_7

    iget v0, p0, Lt5/b;->D:I

    if-lt v6, v0, :cond_6

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v5, p0, Lt5/b;->C:I

    aget-char v0, v0, v5

    if-ne v0, v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lt5/b;->C:I

    return-void

    :cond_7
    const/16 v5, 0x20

    if-ge v0, v5, :cond_3

    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iput v6, p0, Lt5/b;->G:I

    goto :goto_1

    :cond_8
    const/16 v5, 0xd

    if-ne v0, v5, :cond_9

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_1

    :cond_9
    const/16 v5, 0x9

    if-ne v0, v5, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    throw v1

    :cond_b
    const-string v2, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v2}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v1

    :cond_c
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v2, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v1
.end method

.method public final Y1()V
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iput v2, p0, Lt5/b;->G:I

    return-void

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Ly5/h;->T1()V

    return-void

    :cond_4
    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Z1()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly5/h;->u0:Z

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    iget-object v2, p0, Ly5/h;->q0:[C

    :goto_0
    if-lt v0, v1, :cond_1

    iput v0, p0, Lt5/b;->C:I

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    goto :goto_1

    :cond_0
    sget-object v0, Ls5/n;->t:Ls5/n;

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lt5/c;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    const/16 v4, 0x5c

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_2

    iput v3, p0, Lt5/b;->C:I

    invoke-virtual {p0}, Ly5/h;->a1()C

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    goto :goto_0

    :cond_2
    const/16 v4, 0x22

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_3

    iput v3, p0, Lt5/b;->C:I

    return-void

    :cond_3
    const/16 v4, 0x20

    if-ge v0, v4, :cond_4

    iput v3, p0, Lt5/b;->C:I

    const-string v4, "string value"

    invoke-virtual {p0, v0, v4}, Lt5/b;->m1(ILjava/lang/String;)V

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public final a1()C
    .locals 7

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    const/4 v2, 0x0

    const-string v3, " in character escape sequence"

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls5/n;->t:Ls5/n;

    invoke-virtual {p0, v3}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x62

    if-eq v0, v1, :cond_b

    const/16 v1, 0x66

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x72

    if-eq v0, v1, :cond_8

    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lt5/b;->h1(C)V

    return v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_6

    iget v4, p0, Lt5/b;->C:I

    iget v5, p0, Lt5/b;->D:I

    if-lt v4, v5, :cond_4

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Ls5/n;->t:Ls5/n;

    invoke-virtual {p0, v3}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_2
    iget-object v4, p0, Ly5/h;->q0:[C

    iget v5, p0, Lt5/b;->C:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lt5/b;->C:I

    aget-char v4, v4, v5

    sget-object v5, Lw5/b;->l:[I

    and-int/lit16 v6, v4, 0xff

    aget v5, v5, v6

    if-ltz v5, :cond_5

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v4, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v2

    :cond_6
    int-to-char p0, v1

    return p0

    :cond_7
    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xd

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0

    :cond_a
    const/16 p0, 0xc

    return p0

    :cond_b
    const/16 p0, 0x8

    return p0

    :cond_c
    return v0
.end method

.method public final a2()I
    .locals 10

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt5/b;->G0()V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v3, 0x23

    const/16 v4, 0x2f

    const/16 v5, 0x20

    if-le v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    iput v1, p0, Lt5/b;->C:I

    invoke-virtual {p0}, Ly5/h;->b2()I

    move-result p0

    return p0

    :cond_3
    const/4 v1, 0x0

    const/16 v6, 0x9

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-eq v0, v5, :cond_7

    if-ne v0, v8, :cond_4

    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iput v2, p0, Lt5/b;->G:I

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_5

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_1

    :cond_5
    if-eq v0, v6, :cond_7

    invoke-virtual {p0, v0}, Ly5/c;->v1(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    throw v1

    :cond_7
    :goto_1
    iget v0, p0, Lt5/b;->C:I

    iget v2, p0, Lt5/b;->D:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Ly5/h;->q0:[C

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lt5/b;->C:I

    aget-char v2, v2, v0

    if-le v2, v5, :cond_a

    if-eq v2, v4, :cond_9

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    return v2

    :cond_9
    :goto_2
    iput v0, p0, Lt5/b;->C:I

    invoke-virtual {p0}, Ly5/h;->b2()I

    move-result p0

    return p0

    :cond_a
    if-eq v2, v5, :cond_7

    if-ne v2, v8, :cond_b

    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iput v9, p0, Lt5/b;->G:I

    goto :goto_1

    :cond_b
    if-ne v2, v7, :cond_c

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_1

    :cond_c
    if-eq v2, v6, :cond_7

    invoke-virtual {p0, v2}, Ly5/c;->v1(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v2}, Lt5/c;->P0(I)V

    throw v1

    :cond_e
    invoke-virtual {p0}, Ly5/h;->b2()I

    move-result p0

    return p0
.end method

.method public final b2()I
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lt5/b;->G0()V

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v0, p0, Ly5/h;->q0:[C

    iget v1, p0, Lt5/b;->C:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ly5/h;->X1()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    iget v1, p0, Ls5/k;->l:I

    sget v2, Ly5/c;->m0:I

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Ly5/h;->Y1()V

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    iget v0, p0, Lt5/b;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->F:I

    iput v2, p0, Lt5/b;->G:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Ly5/h;->T1()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lt5/c;->P0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()Ls5/h;
    .locals 10

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lt5/b;->G:I

    sub-int v1, v0, v1

    add-int/lit8 v9, v1, 0x1

    new-instance v2, Ls5/h;

    invoke-virtual {p0}, Lt5/b;->X0()Lw5/c;

    move-result-object v3

    iget-wide v4, p0, Lt5/b;->E:J

    int-to-long v0, v0

    add-long v6, v4, v0

    iget v8, p0, Lt5/b;->F:I

    const-wide/16 v4, -0x1

    invoke-direct/range {v2 .. v9}, Ls5/h;-><init>(Lw5/c;JJII)V

    return-object v2
.end method

.method public final c2()V
    .locals 5

    iget v0, p0, Lt5/b;->C:I

    iget-wide v1, p0, Lt5/b;->E:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lt5/b;->H:J

    iget v1, p0, Lt5/b;->F:I

    iput v1, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->G:I

    sub-int/2addr v0, v1

    iput v0, p0, Lt5/b;->J:I

    return-void
.end method

.method public final d2(I)V
    .locals 3

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lt5/b;->C:I

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected space separating root-level values"

    invoke-virtual {p0, p1, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iput v0, p0, Lt5/b;->C:I

    return-void

    :cond_2
    iget p1, p0, Lt5/b;->F:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt5/b;->F:I

    iput v1, p0, Lt5/b;->G:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final e2(Ljava/lang/String;)C
    .locals 2

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lt5/c;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Ly5/h;->q0:[C

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lt5/b;->C:I

    aget-char p0, p1, v0

    return p0
.end method

.method public final h0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    iget-object v2, p0, Lt5/b;->M:La6/o;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_0
    invoke-virtual {v2}, La6/s;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, v0, Ls5/n;->o:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 p0, 0x6

    if-eq v1, p0, :cond_3

    const/4 p0, 0x7

    if-eq v1, p0, :cond_3

    const/16 p0, 0x8

    if-eq v1, p0, :cond_3

    iget-object p0, v0, Ls5/n;->l:Ljava/lang/String;

    return-object p0

    :cond_3
    invoke-virtual {v2}, La6/s;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lt5/b;->K:Ly5/d;

    iget-object p0, p0, Ly5/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final i0()[C
    .locals 6

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    if-eqz v0, :cond_6

    iget v1, v0, Ls5/n;->o:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-object p0, v0, Ls5/n;->m:[C

    return-object p0

    :cond_0
    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_1
    iget-object p0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {p0}, La6/s;->m()[C

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lt5/b;->O:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    iget-object v0, v0, Ly5/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lt5/b;->N:[C

    if-nez v2, :cond_3

    iget-object v2, p0, Lt5/b;->A:Lw5/d;

    iget-object v4, v2, Lw5/d;->z:[C

    invoke-static {v4}, Lw5/d;->b(Ljava/lang/Object;)V

    iget-object v4, v2, Lw5/d;->p:La6/b;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, La6/b;->b(II)[C

    move-result-object v4

    iput-object v4, v2, Lw5/d;->z:[C

    iput-object v4, p0, Lt5/b;->N:[C

    goto :goto_0

    :cond_3
    array-length v2, v2

    if-ge v2, v1, :cond_4

    new-array v2, v1, [C

    iput-object v2, p0, Lt5/b;->N:[C

    :cond_4
    :goto_0
    iget-object v2, p0, Lt5/b;->N:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt5/b;->O:Z

    :cond_5
    iget-object p0, p0, Lt5/b;->N:[C

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j0()I
    .locals 4

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Ls5/n;->o:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v1, 0x7

    if-eq v2, v1, :cond_1

    const/16 v1, 0x8

    if-eq v2, v1, :cond_1

    iget-object p0, v0, Ls5/n;->m:[C

    array-length p0, p0

    return p0

    :cond_0
    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_1
    iget-object p0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {p0}, La6/s;->p()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lt5/b;->K:Ly5/d;

    iget-object p0, p0, Ly5/d;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final k0()I
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Ls5/n;->o:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_1
    iget-object p0, p0, Lt5/b;->M:La6/o;

    iget p0, p0, La6/s;->c:I

    if-ltz p0, :cond_2

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final k1()V
    .locals 9

    iget-object v0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {v0}, La6/s;->n()V

    iget-object v0, p0, Lt5/b;->N:[C

    const-string v1, "Trying to release buffer smaller than original"

    iget-object v2, p0, Lt5/b;->A:Lw5/d;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lt5/b;->N:[C

    iget-object v4, v2, Lw5/d;->z:[C

    if-eq v0, v4, :cond_1

    array-length v5, v0

    array-length v4, v4

    if-lt v5, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object v3, v2, Lw5/d;->z:[C

    iget-object v4, v2, Lw5/d;->p:La6/b;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, La6/b;->d(I[C)V

    :cond_2
    iget-object v0, p0, Ly5/h;->s0:Lz5/e;

    iget-boolean v4, v0, Lz5/e;->m:Z

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lz5/e;->a:Lz5/e;

    if-eqz v4, :cond_7

    iget-boolean v5, v0, Lz5/e;->f:Z

    if-eqz v5, :cond_7

    new-instance v5, Lz5/d;

    invoke-direct {v5, v0}, Lz5/d;-><init>(Lz5/e;)V

    iget-object v4, v4, Lz5/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz5/d;

    iget v7, v6, Lz5/d;->a:I

    iget v8, v5, Lz5/d;->a:I

    if-ne v8, v7, :cond_4

    goto :goto_1

    :cond_4
    const/16 v7, 0x2ee0

    if-le v8, v7, :cond_5

    new-instance v5, Lz5/d;

    const/16 v7, 0x40

    new-array v7, v7, [Ljava/lang/String;

    const/16 v8, 0x20

    new-array v8, v8, [Lz5/c;

    invoke-direct {v5, v7, v8}, Lz5/d;-><init>([Ljava/lang/String;[Lz5/c;)V

    :cond_5
    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v6, :cond_5

    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v0, Lz5/e;->m:Z

    :cond_7
    :goto_2
    iget-boolean v0, p0, Ly5/h;->r0:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Ly5/h;->q0:[C

    if-eqz v0, :cond_a

    iput-object v3, p0, Ly5/h;->q0:[C

    iget-object p0, v2, Lw5/d;->x:[C

    if-eq v0, p0, :cond_9

    array-length v4, v0

    array-length p0, p0

    if-lt v4, p0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    iput-object v3, v2, Lw5/d;->x:[C

    iget-object p0, v2, Lw5/d;->p:La6/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, La6/b;->d(I[C)V

    :cond_a
    return-void
.end method

.method public final n()Ls5/h;
    .locals 9

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->G:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    new-instance v1, Ls5/h;

    invoke-virtual {p0}, Lt5/b;->X0()Lw5/c;

    move-result-object v2

    iget-wide v3, p0, Lt5/b;->E:J

    iget v0, p0, Lt5/b;->C:I

    int-to-long v5, v0

    add-long/2addr v5, v3

    iget v7, p0, Lt5/b;->F:I

    const-wide/16 v3, -0x1

    invoke-direct/range {v1 .. v8}, Ls5/h;-><init>(Lw5/c;JJII)V

    return-object v1
.end method

.method public final o0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ly5/h;->u0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_0
    iget-object p0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {p0}, La6/s;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lt5/b;->S()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lt5/c;->S0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w1(I)V
    .locals 4

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Ly5/h;->c2()V

    iget-object v3, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v3}, Ls5/m;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lt5/b;->K:Ly5/d;

    iput-object v1, v3, Ly5/d;->h:Ljava/lang/Object;

    iget-object v3, v3, Ly5/d;->d:Ly5/d;

    iput-object v3, p0, Lt5/b;->K:Ly5/d;

    sget-object v3, Ls5/n;->x:Ls5/n;

    invoke-virtual {p0, v3}, Lt5/c;->Q0(Ls5/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lt5/b;->l1(CI)V

    throw v1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ly5/h;->c2()V

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lt5/b;->K:Ly5/d;

    iput-object v1, p1, Ly5/d;->h:Ljava/lang/Object;

    iget-object p1, p1, Ly5/d;->d:Ly5/d;

    iput-object p1, p0, Lt5/b;->K:Ly5/d;

    sget-object p1, Ls5/n;->v:Ls5/n;

    invoke-virtual {p0, p1}, Lt5/c;->Q0(Ls5/n;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, p1}, Lt5/b;->l1(CI)V

    throw v1

    :cond_3
    return-void
.end method

.method public final x0()Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    iput v0, p0, Lt5/b;->R:I

    iget-object v1, p0, Lt5/c;->o:Ls5/n;

    sget-object v2, Ls5/n;->y:Ls5/n;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ly5/h;->I1()Ls5/n;

    return-object v3

    :cond_0
    iget-boolean v1, p0, Ly5/h;->u0:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ly5/h;->Z1()V

    :cond_1
    invoke-virtual {p0}, Ly5/h;->a2()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lt5/b;->close()V

    iput-object v3, p0, Lt5/c;->o:Ls5/n;

    return-object v3

    :cond_2
    iput-object v3, p0, Lt5/b;->Q:[B

    or-int/lit8 v4, v1, 0x20

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v1}, Ly5/h;->w1(I)V

    return-object v3

    :cond_3
    iget-object v4, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v4}, Ly5/d;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1}, Ly5/h;->W1(I)I

    move-result v1

    iget v4, p0, Ls5/k;->l:I

    sget v6, Ly5/c;->e0:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    or-int/lit8 v4, v1, 0x20

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v1}, Ly5/h;->w1(I)V

    return-object v3

    :cond_4
    iget-object v4, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v4}, Ls5/m;->e()Z

    move-result v4

    const/16 v5, 0x7b

    const/16 v6, 0x74

    const/16 v7, 0x6e

    const/16 v8, 0x66

    const/16 v9, 0x5b

    const/16 v10, 0x22

    const/4 v11, 0x1

    if-nez v4, :cond_c

    invoke-virtual {p0}, Ly5/h;->c2()V

    if-ne v1, v10, :cond_5

    iput-boolean v11, p0, Ly5/h;->u0:Z

    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_5
    if-eq v1, v9, :cond_b

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Ly5/h;->P1(I)Ls5/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :pswitch_1
    invoke-virtual {p0, v0}, Ly5/h;->K1(Z)Ls5/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :pswitch_2
    invoke-virtual {p0, v11}, Ly5/h;->O1(Z)Ls5/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :pswitch_3
    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->f()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Ls5/k;->l:I

    sget v2, Ly5/c;->h0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    iget v0, p0, Lt5/b;->C:I

    sub-int/2addr v0, v11

    iput v0, p0, Lt5/b;->C:I

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_6
    :goto_0
    invoke-virtual {p0, v1}, Ly5/h;->B1(I)Ls5/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_7
    iget v0, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->J:I

    invoke-virtual {p0, v0, v1}, Lt5/b;->q1(II)V

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_8
    const-string v0, "true"

    invoke-virtual {p0, v11, v0}, Ly5/h;->G1(ILjava/lang/String;)V

    sget-object v0, Ls5/n;->D:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_9
    const-string v0, "null"

    invoke-virtual {p0, v11, v0}, Ly5/h;->G1(ILjava/lang/String;)V

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_a
    const-string v0, "false"

    invoke-virtual {p0, v11, v0}, Ly5/h;->G1(ILjava/lang/String;)V

    sget-object v0, Ls5/n;->E:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_b
    iget v0, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->J:I

    invoke-virtual {p0, v0, v1}, Lt5/b;->p1(II)V

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v3

    :cond_c
    iget v3, p0, Lt5/b;->C:I

    int-to-long v12, v3

    iput-wide v12, p0, Ly5/h;->v0:J

    iget v4, p0, Lt5/b;->F:I

    iput v4, p0, Ly5/h;->w0:I

    iget v4, p0, Lt5/b;->G:I

    sub-int/2addr v3, v4

    iput v3, p0, Ly5/h;->x0:I

    if-ne v1, v10, :cond_d

    invoke-virtual {p0}, Ly5/h;->L1()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v1}, Ly5/h;->A1(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v3, v1}, Ly5/d;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lt5/c;->Q0(Ls5/n;)V

    invoke-virtual {p0}, Ly5/h;->U1()I

    move-result v2

    invoke-virtual {p0}, Ly5/h;->c2()V

    if-ne v2, v10, :cond_e

    iput-boolean v11, p0, Ly5/h;->u0:Z

    sget-object v0, Ls5/n;->A:Ls5/n;

    iput-object v0, p0, Lt5/b;->L:Ls5/n;

    return-object v1

    :cond_e
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_16

    if-eq v2, v9, :cond_15

    if-eq v2, v8, :cond_14

    if-eq v2, v7, :cond_13

    if-eq v2, v6, :cond_12

    if-eq v2, v5, :cond_11

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_10

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_f

    packed-switch v2, :pswitch_data_2

    invoke-virtual {p0, v2}, Ly5/h;->B1(I)Ls5/n;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2}, Ly5/h;->P1(I)Ls5/n;

    move-result-object v0

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v0}, Ly5/h;->K1(Z)Ls5/n;

    move-result-object v0

    goto :goto_2

    :cond_10
    invoke-virtual {p0, v11}, Ly5/h;->O1(Z)Ls5/n;

    move-result-object v0

    goto :goto_2

    :cond_11
    sget-object v0, Ls5/n;->u:Ls5/n;

    goto :goto_2

    :cond_12
    invoke-virtual {p0}, Ly5/h;->H1()V

    sget-object v0, Ls5/n;->D:Ls5/n;

    goto :goto_2

    :cond_13
    invoke-virtual {p0}, Ly5/h;->F1()V

    sget-object v0, Ls5/n;->F:Ls5/n;

    goto :goto_2

    :cond_14
    invoke-virtual {p0}, Ly5/h;->E1()V

    sget-object v0, Ls5/n;->E:Ls5/n;

    goto :goto_2

    :cond_15
    sget-object v0, Ls5/n;->w:Ls5/n;

    goto :goto_2

    :cond_16
    sget-object v3, Ly5/e;->n:Ly5/e;

    iget-object v3, v3, Ly5/e;->m:Ls5/j;

    iget v4, p0, Ls5/k;->l:I

    invoke-virtual {v3, v4}, Ls5/j;->a(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0, v0}, Ly5/h;->O1(Z)Ls5/n;

    move-result-object v0

    goto :goto_2

    :cond_17
    invoke-virtual {p0, v2}, Ly5/h;->B1(I)Ls5/n;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lt5/b;->L:Ls5/n;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final x1(Ls5/a;)[B
    .locals 11

    invoke-virtual {p0}, Lt5/b;->d1()La6/d;

    move-result-object v0

    :cond_0
    :goto_0
    iget v1, p0, Lt5/b;->C:I

    iget v2, p0, Lt5/b;->D:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Ly5/h;->D1()V

    :cond_1
    iget-object v1, p0, Ly5/h;->q0:[C

    iget v2, p0, Lt5/b;->C:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lt5/b;->C:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ls5/a;->c(C)I

    move-result v2

    iget-char v3, p1, Ls5/a;->p:C

    const/16 v4, 0x22

    if-gez v2, :cond_3

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, La6/d;->n()[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lt5/b;->C:I

    iget v5, p0, Lt5/b;->D:I

    if-lt v1, v5, :cond_4

    invoke-virtual {p0}, Ly5/h;->D1()V

    :cond_4
    iget-object v1, p0, Ly5/h;->q0:[C

    iget v5, p0, Lt5/b;->C:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lt5/b;->C:I

    aget-char v1, v1, v5

    invoke-virtual {p1, v1}, Ls5/a;->c(C)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_5

    invoke-virtual {p0, p1, v1, v6}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v5

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v5

    iget v2, p0, Lt5/b;->C:I

    iget v5, p0, Lt5/b;->D:I

    if-lt v2, v5, :cond_6

    invoke-virtual {p0}, Ly5/h;->D1()V

    :cond_6
    iget-object v2, p0, Ly5/h;->q0:[C

    iget v5, p0, Lt5/b;->C:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lt5/b;->C:I

    aget-char v2, v2, v5

    invoke-virtual {p1, v2}, Ls5/a;->c(C)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x2

    if-gez v5, :cond_d

    if-eq v5, v10, :cond_9

    if-ne v2, v4, :cond_8

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, La6/d;->d(I)V

    invoke-virtual {p1}, Ls5/a;->l()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, La6/d;->n()[B

    move-result-object p0

    return-object p0

    :cond_7
    iget v0, p0, Lt5/b;->C:I

    sub-int/2addr v0, v6

    iput v0, p0, Lt5/b;->C:I

    invoke-virtual {p1}, Ls5/a;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-virtual {p0, p1, v2, v9}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v5

    :cond_9
    if-ne v5, v10, :cond_d

    iget v2, p0, Lt5/b;->C:I

    iget v4, p0, Lt5/b;->D:I

    if-lt v2, v4, :cond_a

    invoke-virtual {p0}, Ly5/h;->D1()V

    :cond_a
    iget-object v2, p0, Ly5/h;->q0:[C

    iget v4, p0, Lt5/b;->C:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lt5/b;->C:I

    aget-char v2, v2, v4

    if-ne v2, v3, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p0, p1, v2, v8}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v4

    if-ne v4, v10, :cond_c

    :goto_1
    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, La6/d;->d(I)V

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "expected padding character \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, v8, p0}, Lt5/b;->r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v5

    iget v2, p0, Lt5/b;->C:I

    iget v3, p0, Lt5/b;->D:I

    if-lt v2, v3, :cond_e

    invoke-virtual {p0}, Ly5/h;->D1()V

    :cond_e
    iget-object v2, p0, Ly5/h;->q0:[C

    iget v3, p0, Lt5/b;->C:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lt5/b;->C:I

    aget-char v2, v2, v3

    invoke-virtual {p1, v2}, Ls5/a;->c(C)I

    move-result v3

    if-gez v3, :cond_12

    if-eq v3, v10, :cond_11

    if-ne v2, v4, :cond_10

    shr-int/2addr v1, v9

    invoke-virtual {v0, v1}, La6/d;->k(I)V

    invoke-virtual {p1}, Ls5/a;->l()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, La6/d;->n()[B

    move-result-object p0

    return-object p0

    :cond_f
    iget v0, p0, Lt5/b;->C:I

    sub-int/2addr v0, v6

    iput v0, p0, Lt5/b;->C:I

    invoke-virtual {p1}, Ls5/a;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v7

    :cond_10
    invoke-virtual {p0, p1, v2, v8}, Lt5/b;->Y0(Ls5/a;CI)I

    move-result v3

    :cond_11
    if-ne v3, v10, :cond_12

    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, La6/d;->k(I)V

    goto/16 :goto_0

    :cond_12
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, La6/d;->e(I)V

    goto/16 :goto_0
.end method

.method public final y()Ls5/h;
    .locals 15

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->y:Ls5/n;

    const-wide/16 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lt5/b;->E:J

    iget-wide v4, p0, Ly5/h;->v0:J

    sub-long/2addr v4, v2

    add-long v10, v4, v0

    new-instance v6, Ls5/h;

    invoke-virtual {p0}, Lt5/b;->X0()Lw5/c;

    move-result-object v7

    iget v12, p0, Ly5/h;->w0:I

    iget v13, p0, Ly5/h;->x0:I

    const-wide/16 v8, -0x1

    invoke-direct/range {v6 .. v13}, Ls5/h;-><init>(Lw5/c;JJII)V

    return-object v6

    :cond_0
    new-instance v7, Ls5/h;

    invoke-virtual {p0}, Lt5/b;->X0()Lw5/c;

    move-result-object v8

    iget-wide v0, p0, Lt5/b;->H:J

    sub-long v11, v0, v2

    iget v13, p0, Lt5/b;->I:I

    iget v14, p0, Lt5/b;->J:I

    const-wide/16 v9, -0x1

    invoke-direct/range {v7 .. v14}, Ls5/h;-><init>(Lw5/c;JJII)V

    return-object v7
.end method

.method public final y0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->y:Ls5/n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt5/b;->O:Z

    iget-object v1, p0, Lt5/b;->L:Ls5/n;

    iput-object v2, p0, Lt5/b;->L:Ls5/n;

    invoke-virtual {p0, v1}, Lt5/c;->Q0(Ls5/n;)V

    sget-object v3, Ls5/n;->A:Ls5/n;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Ly5/h;->u0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Ly5/h;->u0:Z

    invoke-virtual {p0}, Ly5/h;->y1()V

    :cond_0
    iget-object p0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {p0}, La6/s;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ls5/n;->w:Ls5/n;

    if-ne v1, v0, :cond_2

    iget v0, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->J:I

    invoke-virtual {p0, v0, v1}, Lt5/b;->p1(II)V

    return-object v2

    :cond_2
    sget-object v0, Ls5/n;->u:Ls5/n;

    if-ne v1, v0, :cond_4

    iget v0, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->J:I

    invoke-virtual {p0, v0, v1}, Lt5/b;->q1(II)V

    return-object v2

    :cond_3
    invoke-virtual {p0}, Ly5/h;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Ly5/h;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method public final y1()V
    .locals 11

    iget v0, p0, Lt5/b;->C:I

    iget v1, p0, Lt5/b;->D:I

    const/16 v2, 0x22

    sget-object v3, Ly5/c;->n0:[I

    iget-object v4, p0, Lt5/b;->M:La6/o;

    if-ge v0, v1, :cond_2

    array-length v5, v3

    :cond_0
    iget-object v6, p0, Ly5/h;->q0:[C

    aget-char v7, v6, v0

    if-ge v7, v5, :cond_1

    aget v8, v3, v7

    if-eqz v8, :cond_1

    if-ne v7, v2, :cond_2

    iget v1, p0, Lt5/b;->C:I

    sub-int v2, v0, v1

    invoke-virtual {v4, v6, v1, v2}, La6/s;->o([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->C:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Ly5/h;->q0:[C

    iget v5, p0, Lt5/b;->C:I

    sub-int v6, v0, v5

    const/4 v7, 0x0

    iput-object v7, v4, La6/s;->b:[C

    const/4 v8, -0x1

    iput v8, v4, La6/s;->c:I

    const/4 v8, 0x0

    iput v8, v4, La6/s;->d:I

    iput-object v7, v4, La6/s;->j:Ljava/lang/String;

    iput-object v7, v4, La6/s;->k:[C

    iget-boolean v9, v4, La6/s;->f:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, La6/s;->e()V

    goto :goto_0

    :cond_3
    iget-object v9, v4, La6/s;->h:[C

    if-nez v9, :cond_4

    invoke-virtual {v4, v6}, La6/s;->d(I)[C

    move-result-object v9

    iput-object v9, v4, La6/s;->h:[C

    :cond_4
    :goto_0
    iput v8, v4, La6/s;->g:I

    iput v8, v4, La6/s;->i:I

    invoke-virtual {v4, v1, v5, v6}, La6/s;->c([CII)V

    iput v0, p0, Lt5/b;->C:I

    invoke-virtual {v4}, La6/s;->l()[C

    move-result-object v0

    iget v1, v4, La6/s;->i:I

    array-length v5, v3

    :goto_1
    iget v6, p0, Lt5/b;->C:I

    iget v9, p0, Lt5/b;->D:I

    if-lt v6, v9, :cond_6

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Ls5/n;->t:Ls5/n;

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lt5/c;->L0(Ljava/lang/String;)V

    throw v7

    :cond_6
    :goto_2
    iget-object v6, p0, Ly5/h;->q0:[C

    iget v9, p0, Lt5/b;->C:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lt5/b;->C:I

    aget-char v6, v6, v9

    if-ge v6, v5, :cond_9

    aget v9, v3, v6

    if-eqz v9, :cond_9

    if-ne v6, v2, :cond_7

    iput v1, v4, La6/s;->i:I

    return-void

    :cond_7
    const/16 v9, 0x5c

    if-ne v6, v9, :cond_8

    invoke-virtual {p0}, Ly5/h;->a1()C

    move-result v6

    goto :goto_3

    :cond_8
    const/16 v9, 0x20

    if-ge v6, v9, :cond_9

    const-string v9, "string value"

    invoke-virtual {p0, v6, v9}, Lt5/b;->m1(ILjava/lang/String;)V

    :cond_9
    :goto_3
    array-length v9, v0

    if-lt v1, v9, :cond_a

    invoke-virtual {v4}, La6/s;->k()[C

    move-result-object v0

    move v1, v8

    :cond_a
    add-int/lit8 v9, v1, 0x1

    aput-char v6, v0, v1

    move v1, v9

    goto :goto_1
.end method

.method public final z0()Ls5/n;
    .locals 10

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ly5/h;->I1()Ls5/n;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lt5/b;->R:I

    iget-boolean v2, p0, Ly5/h;->u0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ly5/h;->Z1()V

    :cond_1
    invoke-virtual {p0}, Ly5/h;->a2()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lt5/b;->close()V

    iput-object v3, p0, Lt5/c;->o:Ls5/n;

    return-object v3

    :cond_2
    iput-object v3, p0, Lt5/b;->Q:[B

    or-int/lit8 v4, v2, 0x20

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v2}, Ly5/h;->w1(I)V

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    return-object p0

    :cond_3
    iget-object v4, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v4}, Ly5/d;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Ly5/h;->W1(I)I

    move-result v2

    iget v4, p0, Ls5/k;->l:I

    sget v6, Ly5/c;->e0:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    or-int/lit8 v4, v2, 0x20

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v2}, Ly5/h;->w1(I)V

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    return-object p0

    :cond_4
    iget-object v4, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v4}, Ls5/m;->e()Z

    move-result v4

    const/16 v6, 0x22

    if-eqz v4, :cond_6

    iget v7, p0, Lt5/b;->C:I

    int-to-long v8, v7

    iput-wide v8, p0, Ly5/h;->v0:J

    iget v8, p0, Lt5/b;->F:I

    iput v8, p0, Ly5/h;->w0:I

    iget v8, p0, Lt5/b;->G:I

    sub-int/2addr v7, v8

    iput v7, p0, Ly5/h;->x0:I

    if-ne v2, v6, :cond_5

    invoke-virtual {p0}, Ly5/h;->L1()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Ly5/h;->A1(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v7, v2}, Ly5/d;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lt5/c;->Q0(Ls5/n;)V

    invoke-virtual {p0}, Ly5/h;->U1()I

    move-result v2

    :cond_6
    invoke-virtual {p0}, Ly5/h;->c2()V

    const/4 v1, 0x1

    if-eq v2, v6, :cond_13

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_11

    const/16 v6, 0x5b

    if-eq v2, v6, :cond_f

    const/16 v6, 0x66

    if-eq v2, v6, :cond_e

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_d

    const/16 v6, 0x74

    if-eq v2, v6, :cond_c

    const/16 v6, 0x7b

    if-eq v2, v6, :cond_a

    if-eq v2, v5, :cond_9

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_8

    const/16 v1, 0x2e

    if-eq v2, v1, :cond_7

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v2}, Ly5/h;->B1(I)Ls5/n;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v2}, Ly5/h;->P1(I)Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v0}, Ly5/h;->K1(Z)Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v1}, Ly5/h;->O1(Z)Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v0, "expected a value"

    invoke-virtual {p0, v2, v0}, Lt5/c;->N0(ILjava/lang/String;)V

    throw v3

    :cond_a
    if-nez v4, :cond_b

    iget v0, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->J:I

    invoke-virtual {p0, v0, v1}, Lt5/b;->q1(II)V

    :cond_b
    sget-object v0, Ls5/n;->u:Ls5/n;

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Ly5/h;->H1()V

    sget-object v0, Ls5/n;->D:Ls5/n;

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Ly5/h;->F1()V

    sget-object v0, Ls5/n;->F:Ls5/n;

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Ly5/h;->E1()V

    sget-object v0, Ls5/n;->E:Ls5/n;

    goto :goto_1

    :cond_f
    if-nez v4, :cond_10

    iget v0, p0, Lt5/b;->I:I

    iget v1, p0, Lt5/b;->J:I

    invoke-virtual {p0, v0, v1}, Lt5/b;->p1(II)V

    :cond_10
    sget-object v0, Ls5/n;->w:Ls5/n;

    goto :goto_1

    :cond_11
    sget-object v1, Ly5/e;->n:Ly5/e;

    iget-object v1, v1, Ly5/e;->m:Ls5/j;

    iget v3, p0, Ls5/k;->l:I

    invoke-virtual {v1, v3}, Ls5/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v0}, Ly5/h;->O1(Z)Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_12
    invoke-virtual {p0, v2}, Ly5/h;->B1(I)Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_13
    iput-boolean v1, p0, Ly5/h;->u0:Z

    sget-object v0, Ls5/n;->A:Ls5/n;

    :goto_1
    if-eqz v4, :cond_14

    iput-object v0, p0, Lt5/b;->L:Ls5/n;

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    return-object p0

    :cond_14
    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final z1(IZZ)Ls5/n;
    .locals 10

    const/16 v0, 0x49

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    iget p1, p0, Lt5/b;->C:I

    iget v0, p0, Lt5/b;->D:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ly5/h;->C1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls5/n;->B:Ls5/n;

    invoke-virtual {p0, p1}, Lt5/c;->M0(Ls5/n;)V

    throw v1

    :cond_1
    :goto_0
    iget-object p1, p0, Ly5/h;->q0:[C

    iget v0, p0, Lt5/b;->C:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lt5/b;->C:I

    aget-char p1, p1, v0

    const/16 v0, 0x4e

    const-string v2, "\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    const-string v3, "Non-standard token \'"

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    sget v8, Ly5/c;->g0:I

    const/4 v9, 0x3

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    :goto_1
    invoke-virtual {p0, v9, p1}, Ly5/h;->G1(ILjava/lang/String;)V

    iget p3, p0, Ls5/k;->l:I

    and-int/2addr p3, v8

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    move-wide v4, v6

    :cond_3
    invoke-virtual {p0, p1, v4, v5}, Lt5/b;->s1(Ljava/lang/String;D)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_6

    const-string p1, "-Infinity"

    goto :goto_2

    :cond_6
    const-string p1, "+Infinity"

    :goto_2
    invoke-virtual {p0, v9, p1}, Ly5/h;->G1(ILjava/lang/String;)V

    iget p3, p0, Ls5/k;->l:I

    and-int/2addr p3, v8

    if-eqz p3, :cond_8

    if-eqz p2, :cond_7

    move-wide v4, v6

    :cond_7
    invoke-virtual {p0, p1, v4, v5}, Lt5/b;->s1(Ljava/lang/String;D)Ls5/n;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v1

    :cond_9
    sget-object v0, Ly5/e;->n:Ly5/e;

    iget-object v0, v0, Ly5/e;->m:Ls5/j;

    iget v2, p0, Ls5/k;->l:I

    invoke-virtual {v0, v2}, Ls5/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p3, :cond_b

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    const/16 p1, 0x2b

    const-string p2, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    invoke-virtual {p0, p1, p2}, Lt5/c;->O0(ILjava/lang/String;)V

    throw v1

    :cond_b
    :goto_3
    if-eqz p2, :cond_c

    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    goto :goto_4

    :cond_c
    const-string p2, "expected digit (0-9) for valid numeric value"

    :goto_4
    invoke-virtual {p0, p1, p2}, Lt5/c;->O0(ILjava/lang/String;)V

    throw v1
.end method
