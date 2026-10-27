.class public abstract Lu8/l;
.super Lc6/o;
.source "SourceFile"


# direct methods
.method public static A0([F)Ljava/lang/Float;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static B0([D)D
    .locals 6

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v3, v2, :cond_0

    :goto_0
    aget-wide v4, p0, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    if-eq v3, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static C0([D)D
    .locals 6

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v3, v2, :cond_0

    :goto_0
    aget-wide v4, p0, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    if-eq v3, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static D0([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method public static E0(I[Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    if-ltz p0, :cond_3

    if-nez p0, :cond_0

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_0
    array-length v0, p1

    if-lt p0, v0, :cond_1

    invoke-static {p1}, Lu8/l;->H0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    aget-object p0, p1, v1

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v1, p0, p1}, Lu8/l;->o0(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lu8/l;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {p0, p1, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static F0([B)Ljava/util/List;
    .locals 7

    array-length v0, p0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v0, :cond_3

    array-length v0, p0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v2, p0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    aget-byte p0, p0, v3

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p0

    move v5, v3

    :goto_1
    if-ge v3, v4, :cond_5

    aget-byte v6, p0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v2

    if-ne v5, v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static final G0([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static H0([Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "copyOf(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lu8/l;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public static b0([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "asList(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c0([Ljava/lang/Object;)Lq9/h;
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lq9/e;->a:Lq9/e;

    return-object p0

    :cond_0
    new-instance v0, Lf9/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lf9/l;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static d0([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static e0([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lu8/l;->x0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f0([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v0, p0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_13

    aget-object v3, p0, v1

    aget-object v4, p1, v1

    if-ne v3, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v3, :cond_12

    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_3
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    check-cast v3, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lu8/l;->f0([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_4
    instance-of v5, v3, [B

    if-eqz v5, :cond_5

    instance-of v5, v4, [B

    if-eqz v5, :cond_5

    check-cast v3, [B

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_5
    instance-of v5, v3, [S

    if-eqz v5, :cond_6

    instance-of v5, v4, [S

    if-eqz v5, :cond_6

    check-cast v3, [S

    check-cast v4, [S

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_6
    instance-of v5, v3, [I

    if-eqz v5, :cond_7

    instance-of v5, v4, [I

    if-eqz v5, :cond_7

    check-cast v3, [I

    check-cast v4, [I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_7
    instance-of v5, v3, [J

    if-eqz v5, :cond_8

    instance-of v5, v4, [J

    if-eqz v5, :cond_8

    check-cast v3, [J

    check-cast v4, [J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_8
    instance-of v5, v3, [F

    if-eqz v5, :cond_9

    instance-of v5, v4, [F

    if-eqz v5, :cond_9

    check-cast v3, [F

    check-cast v4, [F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_9
    instance-of v5, v3, [D

    if-eqz v5, :cond_a

    instance-of v5, v4, [D

    if-eqz v5, :cond_a

    check-cast v3, [D

    check-cast v4, [D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_a
    instance-of v5, v3, [C

    if-eqz v5, :cond_b

    instance-of v5, v4, [C

    if-eqz v5, :cond_b

    check-cast v3, [C

    check-cast v4, [C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_b
    instance-of v5, v3, [Z

    if-eqz v5, :cond_c

    instance-of v5, v4, [Z

    if-eqz v5, :cond_c

    check-cast v3, [Z

    check-cast v4, [Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_c
    instance-of v5, v3, Lt8/r;

    if-eqz v5, :cond_d

    instance-of v5, v4, Lt8/r;

    if-eqz v5, :cond_d

    check-cast v3, Lt8/r;

    iget-object v3, v3, Lt8/r;->l:[B

    check-cast v4, Lt8/r;

    iget-object v4, v4, Lt8/r;->l:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :cond_d
    instance-of v5, v3, Lt8/y;

    if-eqz v5, :cond_e

    instance-of v5, v4, Lt8/y;

    if-eqz v5, :cond_e

    check-cast v3, Lt8/y;

    iget-object v3, v3, Lt8/y;->l:[S

    check-cast v4, Lt8/y;

    iget-object v4, v4, Lt8/y;->l:[S

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :cond_e
    instance-of v5, v3, Lt8/t;

    if-eqz v5, :cond_f

    instance-of v5, v4, Lt8/t;

    if-eqz v5, :cond_f

    check-cast v3, Lt8/t;

    iget-object v3, v3, Lt8/t;->l:[I

    check-cast v4, Lt8/t;

    iget-object v4, v4, Lt8/t;->l:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :cond_f
    instance-of v5, v3, Lt8/v;

    if-eqz v5, :cond_10

    instance-of v5, v4, Lt8/v;

    if-eqz v5, :cond_10

    check-cast v3, Lt8/v;

    iget-object v3, v3, Lt8/v;->l:[J

    check-cast v4, Lt8/v;

    iget-object v4, v4, Lt8/v;->l:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :cond_10
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_2

    :cond_11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_2
    return v2

    :cond_13
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static g0(III[B[B)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p2, p1

    invoke-static {p3, p1, p4, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static h0([C[CIII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static i0([I[IIII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static j0([J[JIII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static k0([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic l0([I[IIII)V
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    array-length p3, p0

    :cond_1
    invoke-static {p0, p1, p2, v1, p3}, Lu8/l;->i0([I[IIII)V

    return-void
.end method

.method public static synthetic m0([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 2

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    array-length p3, p0

    :cond_1
    invoke-static {p0, p1, v1, p2, p3}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-void
.end method

.method public static n0([BII)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    invoke-static {p2, v0}, Lc6/o;->L(II)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static o0(II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p1, v0}, Lc6/o;->L(II)V

    invoke-static {p2, p0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static p0(IILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public static q0([JJ)V
    .locals 2

    array-length v0, p0

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public static synthetic r0([Ljava/lang/Object;Lmb/s2;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p1, p0}, Lu8/l;->p0(IILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static s0([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static t0([F)Ljava/lang/Float;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static u0([D)Lo9/d;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo9/d;

    array-length p0, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lo9/b;-><init>(III)V

    return-object v0
.end method

.method public static v0([J)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static w0(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x0([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    array-length p1, p0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static y0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string p1, ", "

    :cond_0
    and-int/lit8 v0, p0, 0x2

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "innermostOf("

    :goto_0
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ")"

    :goto_1
    const-string p0, "<this>"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v4, p2, v2

    const/4 v5, 0x1

    add-int/2addr v3, v5

    if-le v3, v5, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_3
    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, La/a;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Li9/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z0([D)D
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
