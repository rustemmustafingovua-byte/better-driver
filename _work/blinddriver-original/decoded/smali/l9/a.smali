.class public abstract Ll9/a;
.super Ljava/lang/Object;


# direct methods
.method public static A(D)J
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final B(Landroid/view/View;Ln4/g;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f080092

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static final C(Lu2/x;)Landroid/view/inputmethod/ExtractedText;
    .locals 4

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iget-object v1, p0, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iget-wide v1, p0, Lu2/x;->b:J

    invoke-static {v1, v2}, Lp2/l0;->f(J)I

    move-result v3

    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v1, v2}, Lp2/l0;->e(J)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object p0, p0, Lu2/x;->a:Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    return-object v0
.end method

.method public static final D(I)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    shr-int/lit8 v0, p0, 0x1c

    and-int/lit8 v0, v0, 0xf

    sget-object v1, Lcb/b;->a:[C

    aget-char v0, v1, v0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    shr-int/lit8 v3, p0, 0x14

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    shr-int/lit8 v4, p0, 0x10

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v1, v4

    shr-int/lit8 v5, p0, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    shr-int/lit8 v6, p0, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    shr-int/lit8 v7, p0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v1, v7

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v1, p0

    const/16 v1, 0x8

    new-array v8, v1, [C

    const/4 v9, 0x0

    aput-char v0, v8, v9

    const/4 v0, 0x1

    aput-char v2, v8, v0

    const/4 v0, 0x2

    aput-char v3, v8, v0

    const/4 v0, 0x3

    aput-char v4, v8, v0

    const/4 v0, 0x4

    aput-char v5, v8, v0

    const/4 v0, 0x5

    aput-char v6, v8, v0

    const/4 v0, 0x6

    aput-char v7, v8, v0

    const/4 v0, 0x7

    aput-char p0, v8, v0

    :goto_0
    if-ge v9, v1, :cond_1

    aget-char p0, v8, v9

    const/16 v0, 0x30

    if-ne p0, v0, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "startIndex: "

    if-ltz v9, :cond_3

    if-gt v9, v1, :cond_2

    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 v0, v9, 0x8

    invoke-direct {p0, v8, v9, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " > endIndex: 8"

    invoke-static {v9, p0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, ", endIndex: 8, size: 8"

    invoke-static {v9, p0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static E(J)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p1, v1, p1

    const/16 v1, 0x29

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "CornerRadius.circular("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Lpc/h;->z(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "CornerRadius.elliptical("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Lpc/h;->z(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Lpc/h;->z(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final F(Ljava/lang/Throwable;Li9/a;)Z
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/a;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lc9/a;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, [Ljava/lang/Throwable;

    invoke-static {v0}, Lu8/l;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lu8/r;->l:Lu8/r;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "getSuppressed(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu8/l;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    instance-of v5, v5, Le1/g;

    if-eqz v5, :cond_3

    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/a;

    if-eqz p1, :cond_5

    iget-object v0, p1, Le1/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    new-instance v1, Le1/g;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v1, p1}, Le1/g;-><init>(Le1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    move-object v1, p1

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    invoke-static {p0, v1}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    return v3
.end method

.method public static final a(III[B[B)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, v1, p0

    aget-byte v2, p3, v2

    add-int v3, v1, p1

    aget-byte v3, p4, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Ly4/q;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    const-string v1, "workManagerImpl.workDatabase"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Lg5/c;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v2}, Lu8/m;->s0(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lg5/q;->g(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget-object v5, v1, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v6, v1, Lg5/q;->e:Lg5/h;

    invoke-virtual {v6}, Lk4/p;->a()Lr4/i;

    move-result-object v7

    invoke-interface {v7, v4, v3}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Lr4/i;->b()I

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6, v7}, Lk4/p;->f(Lr4/i;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v6, v7}, Lk4/p;->f(Lr4/i;)V

    throw p0

    :cond_0
    :goto_2
    invoke-virtual {v0, v3}, Lg5/c;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ly4/q;->q:Ly4/e;

    const-string v1, "workManagerImpl.processor"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Processor cancelling "

    iget-object v2, v0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v3

    sget-object v5, Ly4/e;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Ly4/e;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ly4/e;->b(Ljava/lang/String;)Ly4/c0;

    move-result-object v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p1, v0, v4}, Ly4/e;->d(Ljava/lang/String;Ly4/c0;I)Z

    iget-object p0, p0, Ly4/q;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/g;

    invoke-interface {v0, p1}, Ly4/g;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static final c(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size="

    const-string v2, " offset="

    invoke-static {v1, p0, p1, v2}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " byteCount="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs d([Li9/c;)Lm0/h1;
    .locals 2

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Lm0/h1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lm0/h1;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static f(Lua/nav/routing/Route;DDLjava/lang/Double;)Z
    .locals 8

    const-string v0, "route"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {p0}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/GeoPoint;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double p5, v0, v2

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->b:D

    sub-double v4, v0, p1

    const-wide v6, 0x40fafcc000000000L    # 110540.0

    mul-double/2addr v4, v6

    sub-double/2addr v2, p3

    const-wide p3, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v2, p3

    add-double/2addr p1, v0

    const/4 p0, 0x2

    int-to-double p3, p0

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Lsc/c;->c(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    const-wide p2, 0x4072c00000000000L    # 300.0

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/io/FileInputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final h(Lo1/d;Lp1/b;)V
    .locals 21

    move-object/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Lo1/d;->Y()Lg5/m;

    move-result-object v0

    invoke-virtual {v0}, Lg5/m;->h()Lm1/o;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lo1/d;->Y()Lg5/m;

    move-result-object v0

    iget-object v0, v0, Lg5/m;->n:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lp1/b;

    iget-object v4, v1, Lp1/b;->a:Lp1/c;

    iget-object v5, v4, Lp1/c;->c:Landroid/graphics/RenderNode;

    iget-boolean v0, v1, Lp1/b;->s:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v1}, Lp1/b;->a()V

    invoke-virtual {v5}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lp1/b;->a:Lp1/c;

    iget-object v6, v1, Lp1/b;->b:Lb3/c;

    iget-object v7, v1, Lp1/b;->c:Lb3/m;

    iget-object v8, v1, Lp1/b;->e:Landroidx/fragment/app/t;

    iget-object v9, v0, Lp1/c;->b:Lo1/b;

    iget-object v10, v0, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v10}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v12, v0, Lp1/c;->a:Lb0/l1;

    iget-object v13, v12, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v13, Lm1/a;

    iget-object v14, v13, Lm1/a;->a:Landroid/graphics/Canvas;

    iput-object v11, v13, Lm1/a;->a:Landroid/graphics/Canvas;

    iget-object v11, v9, Lo1/b;->m:Lg5/m;

    invoke-virtual {v11, v6}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v11, v7}, Lg5/m;->v(Lb3/m;)V

    iput-object v1, v11, Lg5/m;->n:Ljava/lang/Object;

    iget-wide v6, v0, Lp1/c;->d:J

    invoke-virtual {v11, v6, v7}, Lg5/m;->w(J)V

    invoke-virtual {v11, v13}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v8, v9}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v12, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lm1/a;

    iput-object v14, v0, Lm1/a;->a:Landroid/graphics/Canvas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/RenderNode;->endRecording()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    :goto_0
    iget v0, v4, Lp1/c;->m:F

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v2}, Lm1/o;->t()V

    :cond_3
    invoke-static {v2}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v14

    if-nez v14, :cond_8

    iget-wide v9, v1, Lp1/b;->t:J

    const/16 v11, 0x20

    shr-long v12, v9, v11

    long-to-int v12, v12

    int-to-float v12, v12

    const-wide v16, 0xffffffffL

    and-long v9, v9, v16

    long-to-int v9, v9

    int-to-float v10, v9

    move-object v9, v8

    iget-wide v7, v1, Lp1/b;->u:J

    move-wide/from16 v19, v7

    shr-long v6, v19, v11

    long-to-int v6, v6

    int-to-float v6, v6

    add-float v11, v12, v6

    and-long v6, v19, v16

    long-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    iget v7, v4, Lp1/c;->h:F

    iget v8, v4, Lp1/c;->i:I

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v7, v13

    if-ltz v13, :cond_5

    const/4 v13, 0x3

    if-ne v8, v13, :cond_5

    iget v13, v4, Lp1/c;->u:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-object v8, v9

    move v9, v12

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v13, v1, Lp1/b;->p:Lf6/v;

    if-nez v13, :cond_6

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object v13

    iput-object v13, v1, Lp1/b;->p:Lf6/v;

    :cond_6
    invoke-virtual {v13, v7}, Lf6/v;->n(F)V

    invoke-virtual {v13, v8}, Lf6/v;->o(I)V

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Lf6/v;->q(Lm1/j;)V

    iget-object v7, v13, Lf6/v;->b:Ljava/lang/Object;

    move-object v13, v7

    check-cast v13, Landroid/graphics/Paint;

    move-object v8, v9

    move v9, v12

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    :goto_3
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v4, Lp1/c;->f:Landroid/graphics/Matrix;

    if-nez v6, :cond_7

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v4, Lp1/c;->f:Landroid/graphics/Matrix;

    :cond_7
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_8
    if-nez v14, :cond_9

    iget-boolean v4, v1, Lp1/b;->w:Z

    if-eqz v4, :cond_9

    const/4 v15, 0x1

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_e

    invoke-interface {v2}, Lm1/o;->h()V

    invoke-virtual {v1}, Lp1/b;->d()Lm1/v;

    move-result-object v4

    instance-of v6, v4, Lm1/b0;

    if-eqz v6, :cond_a

    check-cast v4, Lm1/b0;

    iget-object v4, v4, Lm1/b0;->c:Ll1/c;

    invoke-static {v2, v4}, Lm1/o;->r(Lm1/o;Ll1/c;)V

    goto :goto_6

    :cond_a
    instance-of v6, v4, Lm1/c0;

    if-eqz v6, :cond_c

    iget-object v6, v1, Lp1/b;->m:Lm1/g;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lm1/g;->h()V

    goto :goto_5

    :cond_b
    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v6

    iput-object v6, v1, Lp1/b;->m:Lm1/g;

    :goto_5
    check-cast v4, Lm1/c0;

    iget-object v4, v4, Lm1/c0;->c:Ll1/d;

    invoke-static {v6, v4}, Lm1/g;->b(Lm1/g;Ll1/d;)V

    invoke-interface {v2, v6}, Lm1/o;->c(Lm1/g;)V

    goto :goto_6

    :cond_c
    instance-of v6, v4, Lm1/a0;

    if-eqz v6, :cond_d

    check-cast v4, Lm1/a0;

    iget-object v4, v4, Lm1/a0;->c:Lm1/g;

    invoke-interface {v2, v4}, Lm1/o;->c(Lm1/g;)V

    goto :goto_6

    :cond_d
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    :goto_6
    if-eqz v3, :cond_14

    iget-object v3, v3, Lp1/b;->r:Lf8/p2;

    iget-boolean v4, v3, Lf8/p2;->a:Z

    if-nez v4, :cond_f

    const-string v4, "Only add dependencies during a tracking"

    invoke-static {v4}, Lm1/y;->a(Ljava/lang/String;)V

    :cond_f
    iget-object v4, v3, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v4, Lk/n0;

    if-eqz v4, :cond_10

    invoke-virtual {v4, v1}, Lk/n0;->a(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    iget-object v4, v3, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v4, Lp1/b;

    if-eqz v4, :cond_11

    sget-object v4, Lk/u0;->a:Lk/n0;

    new-instance v4, Lk/n0;

    invoke-direct {v4}, Lk/n0;-><init>()V

    iget-object v6, v3, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v6, Lp1/b;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Lk/n0;->a(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Lk/n0;->a(Ljava/lang/Object;)Z

    iput-object v4, v3, Lf8/p2;->d:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v3, Lf8/p2;->b:Ljava/lang/Object;

    goto :goto_7

    :cond_11
    iput-object v1, v3, Lf8/p2;->b:Ljava/lang/Object;

    :goto_7
    iget-object v4, v3, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v4, Lk/n0;

    if-eqz v4, :cond_12

    invoke-virtual {v4, v1}, Lk/n0;->l(Ljava/lang/Object;)Z

    move-result v3

    const/16 v18, 0x1

    xor-int/lit8 v7, v3, 0x1

    goto :goto_8

    :cond_12
    const/16 v18, 0x1

    iget-object v4, v3, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v4, Lp1/b;

    if-eq v4, v1, :cond_13

    move/from16 v7, v18

    goto :goto_8

    :cond_13
    const/4 v7, 0x0

    iput-object v7, v3, Lf8/p2;->c:Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_14

    iget v3, v1, Lp1/b;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lp1/b;->q:I

    :cond_14
    invoke-static {v2}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v1, Lp1/b;->o:Lo1/b;

    if-nez v3, :cond_15

    new-instance v3, Lo1/b;

    invoke-direct {v3}, Lo1/b;-><init>()V

    iput-object v3, v1, Lp1/b;->o:Lo1/b;

    :cond_15
    iget-object v4, v3, Lo1/b;->m:Lg5/m;

    iget-object v5, v1, Lp1/b;->b:Lb3/c;

    iget-object v6, v1, Lp1/b;->c:Lb3/m;

    iget-wide v9, v1, Lp1/b;->u:J

    invoke-static {v9, v10}, Ly4/s;->E(J)J

    move-result-wide v9

    invoke-virtual {v4}, Lg5/m;->j()Lb3/c;

    move-result-object v7

    invoke-virtual {v4}, Lg5/m;->k()Lb3/m;

    move-result-object v11

    invoke-virtual {v4}, Lg5/m;->h()Lm1/o;

    move-result-object v12

    move/from16 p0, v14

    invoke-virtual {v4}, Lg5/m;->m()J

    move-result-wide v13

    move/from16 v16, v0

    iget-object v0, v4, Lg5/m;->n:Ljava/lang/Object;

    move-object/from16 v17, v8

    move-object v8, v0

    check-cast v8, Lp1/b;

    invoke-virtual {v4, v5}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v4, v6}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v4, v2}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v4, v9, v10}, Lg5/m;->w(J)V

    iput-object v1, v4, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {v2}, Lm1/o;->h()V

    :try_start_3
    invoke-virtual {v1, v3}, Lp1/b;->c(Lo1/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-interface {v2}, Lm1/o;->q()V

    invoke-virtual {v4, v7}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v4, v11}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v4, v12}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v4, v13, v14}, Lg5/m;->w(J)V

    iput-object v8, v4, Lg5/m;->n:Ljava/lang/Object;

    goto :goto_9

    :catchall_2
    move-exception v0

    invoke-interface {v2}, Lm1/o;->q()V

    invoke-virtual {v4, v7}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v4, v11}, Lg5/m;->v(Lb3/m;)V

    invoke-virtual {v4, v12}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {v4, v13, v14}, Lg5/m;->w(J)V

    iput-object v8, v4, Lg5/m;->n:Ljava/lang/Object;

    throw v0

    :cond_16
    move/from16 v16, v0

    move-object/from16 v17, v8

    move/from16 p0, v14

    invoke-static {v2}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :goto_9
    if-eqz v15, :cond_17

    invoke-interface {v2}, Lm1/o;->q()V

    :cond_17
    if-eqz v16, :cond_18

    invoke-interface {v2}, Lm1/o;->i()V

    :cond_18
    if-nez p0, :cond_19

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    :goto_a
    return-void
.end method

.method public static final i(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Lua/nav/routing/Route;D)Lld/a;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "route"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lua/nav/routing/Route;->b()[D

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    add-int/lit8 v16, v5, 0x1

    aget-wide v17, v1, v16

    const-wide/16 v19, 0x0

    aget-wide v3, v1, v5

    move-object/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v1, p1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sub-double v17, v17, v3

    cmpg-double v3, v17, v19

    if-lez v3, :cond_2

    invoke-virtual {v0, v5}, Lua/nav/routing/Route;->d(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    add-double v10, v10, v17

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    const-wide v23, 0x400ccccccccccccdL    # 3.6

    div-double v4, v4, v23

    div-double v4, v17, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v0, 0x46

    if-gt v3, v0, :cond_1

    add-double/2addr v14, v4

    add-double v6, v6, v17

    goto :goto_1

    :cond_1
    add-double/2addr v12, v4

    add-double v8, v8, v17

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    goto :goto_0

    :cond_3
    const-wide/16 v19, 0x0

    add-double v0, v6, v8

    cmpl-double v2, v10, v19

    if-lez v2, :cond_4

    cmpl-double v2, v0, v19

    if-lez v2, :cond_4

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_5

    const-wide v2, 0x402bc71c71c71c72L    # 13.88888888888889

    div-double v2, v10, v2

    add-double/2addr v14, v2

    :cond_4
    :goto_2
    move-wide v5, v12

    move-wide v3, v14

    goto :goto_3

    :cond_5
    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    div-double v2, v10, v2

    add-double/2addr v12, v2

    goto :goto_2

    :goto_3
    add-double/2addr v10, v0

    new-instance v2, Lld/a;

    cmpl-double v7, v10, v19

    if-lez v7, :cond_6

    div-double/2addr v0, v10

    move-wide v7, v0

    goto :goto_4

    :cond_6
    move-wide/from16 v7, v19

    :goto_4
    invoke-direct/range {v2 .. v8}, Lld/a;-><init>(DDD)V

    return-object v2
.end method

.method public static final k(Le1/a;)Ljava/util/ArrayList;
    .locals 8

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object p0, p0, Le1/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le1/c;

    iget v6, v5, Le1/c;->a:I

    invoke-static {v0, v6}, Lu8/l;->d0([II)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, v5, Le1/c;->a:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x2

    if-ge v3, v1, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/c;

    iget v3, v3, Le1/c;->a:I

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lg5/f;->A(Ljava/util/List;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_4
    :goto_2
    return-object v2

    nop

    :array_0
    .array-data 4
        0xc9
        0xca
        0xcc
        0xce
        0xcf
        0x7d
        -0x7f
        0x78cc281
        0xc8
    .end array-data
.end method

.method public static l(IIII)J
    .locals 4

    const v0, 0x3fffe

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const v1, 0x7fffffff

    if-ne p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ne p3, v1, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    const/16 v3, 0x1fff

    if-ge v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x7fff

    if-ge v2, v0, :cond_3

    const v0, 0xfffe

    goto :goto_2

    :cond_3
    const v0, 0xffff

    if-ge v2, v0, :cond_4

    const/16 v0, 0x7ffe

    goto :goto_2

    :cond_4
    const v0, 0x3ffff

    if-ge v2, v0, :cond_6

    const/16 v0, 0x1ffe

    :goto_2
    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v1, p2, p3}, Lb3/b;->a(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_6
    invoke-static {v2}, Lb3/b;->l(I)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static m(IIII)J
    .locals 4

    const v0, 0x3fffe

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ne p1, v1, :cond_1

    move v2, p0

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    const/16 v3, 0x1fff

    if-ge v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x7fff

    if-ge v2, v0, :cond_3

    const v0, 0xfffe

    goto :goto_2

    :cond_3
    const v0, 0xffff

    if-ge v2, v0, :cond_4

    const/16 v0, 0x7ffe

    goto :goto_2

    :cond_4
    const v0, 0x3ffff

    if-ge v2, v0, :cond_6

    const/16 v0, 0x1ffe

    :goto_2
    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, p1, p2, v1}, Lb3/b;->a(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_6
    invoke-static {v2}, Lb3/b;->l(I)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final n(Landroid/view/View;)Ln4/g;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ln4/g;

    if-eqz v2, :cond_0

    check-cast v1, Ln4/g;

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lr5/u0;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final o(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    sget-object v1, Lq2/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    sub-float/2addr v1, v0

    const-string v2, "\u2026"

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr p2, v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ls2/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    if-ne p1, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    :goto_1
    add-float/2addr p0, p1

    return p0

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static final p(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 3

    sget-object v0, Lq2/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-float/2addr v2, v0

    const-string v0, "\u2026"

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr p2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ls2/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v1, v1, v0

    :goto_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    :goto_1
    sub-float/2addr v0, p0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Lg3/j;)Lg3/l;
    .locals 3

    new-instance v0, Lg3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg3/n;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg3/i;->c:Lg3/n;

    new-instance v1, Lg3/l;

    invoke-direct {v1, v0}, Lg3/l;-><init>(Lg3/i;)V

    iput-object v1, v0, Lg3/i;->b:Lg3/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lg3/i;->a:Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, v0}, Lg3/j;->c(Lg3/i;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-object p0, v0, Lg3/i;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v1

    :goto_0
    iget-object v0, v1, Lg3/l;->m:Lg3/k;

    invoke-virtual {v0, p0}, Lg3/h;->i(Ljava/lang/Throwable;)Z

    return-object v1
.end method

.method public static r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;
    .locals 2

    const-string v0, "refHolder"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lr4/c;->a:Lr4/b;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lr4/b;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lr4/b;

    invoke-direct {v0, p1}, Lr4/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lr4/c;->a:Lr4/b;

    return-object v0
.end method

.method public static final s(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final t(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "method"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lia/m;->a:Lha/x;

    new-instance v0, Lia/s;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lia/s;-><init>(Ljava/io/Serializable;Z)V

    invoke-virtual {p0, v0, p1}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    return-void
.end method

.method public static final v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    sget-object v0, Lia/m;->a:Lha/x;

    new-instance v0, Lia/s;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lia/s;-><init>(Ljava/io/Serializable;Z)V

    invoke-virtual {p0, v0, p1}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    return-void
.end method

.method public static final w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    return-void
.end method

.method public static final x(I)I
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static y(D)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
