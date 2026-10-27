.class public final Ltc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oblast"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/j;->a:Ljava/lang/String;

    iput-object p2, p0, Ltc/j;->b:Ljava/lang/String;

    iput-object p3, p0, Ltc/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    invoke-static {p2}, Lu8/l;->u0([D)Lo9/d;

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v1, p3, Lo9/c;->n:Z

    if-eqz v1, :cond_16

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v1

    aget-wide v1, p2, v1

    :goto_0
    iget-boolean v3, p3, Lo9/c;->n:Z

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v3

    aget-wide v3, p2, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    invoke-static {p2}, Lu8/l;->u0([D)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v3, p3, Lo9/c;->n:Z

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v3

    aget-wide v3, p2, v3

    :goto_2
    iget-boolean v5, p3, Lo9/c;->n:Z

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v5

    aget-wide v5, p2, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_2

    :cond_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    iput-wide v1, p0, Ltc/j;->d:D

    iget-object p1, p0, Ltc/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    invoke-static {p2}, Lu8/l;->u0([D)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v1, p3, Lo9/c;->n:Z

    if-eqz v1, :cond_14

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v1

    aget-wide v1, p2, v1

    :goto_3
    iget-boolean v3, p3, Lo9/c;->n:Z

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v3

    aget-wide v3, p2, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    invoke-static {p2}, Lu8/l;->u0([D)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v3, p3, Lo9/c;->n:Z

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v3

    aget-wide v3, p2, v3

    :goto_5
    iget-boolean v5, p3, Lo9/c;->n:Z

    if-eqz v5, :cond_5

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v5

    aget-wide v5, p2, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_5

    :cond_5
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_7
    iput-wide v1, p0, Ltc/j;->e:D

    iget-object p1, p0, Ltc/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    array-length p3, p2

    const/4 v1, 0x1

    invoke-static {v1, p3}, Lg6/c1;->G(II)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v2, p3, Lo9/c;->n:Z

    if-eqz v2, :cond_12

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v2

    aget-wide v2, p2, v2

    :goto_6
    iget-boolean v4, p3, Lo9/c;->n:Z

    if-eqz v4, :cond_8

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v4

    aget-wide v4, p2, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_6

    :cond_8
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    array-length p3, p2

    invoke-static {v1, p3}, Lg6/c1;->G(II)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v4, p3, Lo9/c;->n:Z

    if-eqz v4, :cond_a

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v4

    aget-wide v4, p2, v4

    :goto_8
    iget-boolean v6, p3, Lo9/c;->n:Z

    if-eqz v6, :cond_9

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v6

    aget-wide v6, p2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_8

    :cond_9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_b
    iput-wide v2, p0, Ltc/j;->f:D

    iget-object p1, p0, Ltc/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    array-length p3, p2

    invoke-static {v1, p3}, Lg6/c1;->G(II)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v2, p3, Lo9/c;->n:Z

    if-eqz v2, :cond_10

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v2

    aget-wide v2, p2, v2

    :goto_9
    iget-boolean v4, p3, Lo9/c;->n:Z

    if-eqz v4, :cond_c

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v4

    aget-wide v4, p2, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_9

    :cond_c
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    array-length p3, p2

    invoke-static {v1, p3}, Lg6/c1;->G(II)Lo9/d;

    move-result-object p3

    invoke-static {p3, v0}, Lg6/c1;->C(Lo9/d;I)Lo9/b;

    move-result-object p3

    invoke-virtual {p3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object p3

    check-cast p3, Lo9/c;

    iget-boolean v4, p3, Lo9/c;->n:Z

    if-eqz v4, :cond_e

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v4

    aget-wide v4, p2, v4

    :goto_b
    iget-boolean v6, p3, Lo9/c;->n:Z

    if-eqz v6, :cond_d

    invoke-virtual {p3}, Lo9/c;->nextInt()I

    move-result v6

    aget-wide v6, p2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_b

    :cond_d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_a

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_f
    iput-wide v2, p0, Ltc/j;->g:D

    return-void

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_12
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_13
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_14
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_15
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_16
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
