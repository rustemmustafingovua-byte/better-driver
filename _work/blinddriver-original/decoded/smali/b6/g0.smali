.class public Lb6/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a;


# instance fields
.field public l:Z

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf7/c0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb6/g0;->m:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lb6/g0;->l:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb6/g0;->m:Ljava/lang/Object;

    iput-boolean p2, p0, Lb6/g0;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpb/i;)V
    .locals 12

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Le/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le/a;-><init>(I)V

    iput-object v0, p0, Lb6/g0;->m:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    iput-boolean v1, p0, Lb6/g0;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lb6/g0;->l:Z

    .line 9
    invoke-static {p1}, Lc5/o;->l(Lpb/i;)Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1
    :goto_0
    if-ge v0, v2, :cond_4

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lpb/q;

    .line 12
    invoke-virtual {v3}, Lpb/q;->P()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v3, v3, Lpb/q;->o:Lpb/d;

    invoke-interface {v3}, Lpb/d;->t()[Lpb/a;

    move-result-object v3

    move v4, v1

    .line 14
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 15
    new-instance v5, Lpb/p;

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v3, v6

    aget-object v7, v3, v4

    invoke-direct {v5, v6, v7}, Lpb/p;-><init>(Lpb/a;Lpb/a;)V

    .line 16
    iget-wide v8, v6, Lpb/a;->m:D

    iget-wide v10, v7, Lpb/a;->m:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 17
    iget-wide v10, v6, Lpb/a;->m:D

    iget-wide v6, v7, Lpb/a;->m:D

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 18
    iget-object v10, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast v10, Le/a;

    .line 19
    iget-object v11, v10, Le/a;->m:Ljava/lang/Object;

    check-cast v11, Lyb/c;

    if-nez v11, :cond_3

    .line 20
    iget-object v10, v10, Le/a;->l:Ljava/io/Serializable;

    check-cast v10, Ljava/util/ArrayList;

    new-instance v11, Lyb/b;

    .line 21
    invoke-direct {v11}, Lyb/c;-><init>()V

    .line 22
    iput-wide v8, v11, Lyb/c;->a:D

    .line 23
    iput-wide v6, v11, Lyb/c;->b:D

    .line 24
    iput-object v5, v11, Lyb/b;->c:Lpb/p;

    .line 25
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Index cannot be added to once it has been queried"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb6/g0;->l:Z

    return-void
.end method

.method public b(B)V
    .locals 2

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/c0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public c(C)V
    .locals 3

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    const/4 v0, 0x1

    iget v1, p0, Lf7/c0;->b:I

    invoke-virtual {p0, v1, v0}, Lf7/c0;->h(II)V

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lf7/c0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lf7/c0;->b:I

    aput-char p1, v0, v1

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/c0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public e(J)V
    .locals 0

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/c0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    invoke-virtual {p0, p1}, Lf7/c0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public f0(IJJ)J
    .locals 0

    iget-boolean p1, p0, Lb6/g0;->l:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lr/n2;

    iget-object p1, p0, Lr/n2;->a:Lr/h2;

    invoke-interface {p1}, Lr/h2;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr/n2;->a:Lr/h2;

    invoke-virtual {p0, p4, p5}, Lr/n2;->g(J)F

    move-result p2

    invoke-virtual {p0, p2}, Lr/n2;->d(F)F

    move-result p2

    invoke-interface {p1, p2}, Lr/h2;->e(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lr/n2;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lr/n2;->h(F)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public g(S)V
    .locals 2

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/c0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iget v2, p0, Lf7/c0;->b:I

    invoke-virtual {p0, v2, v0}, Lf7/c0;->h(II)V

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, [C

    iget v2, p0, Lf7/c0;->b:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x22

    aput-char v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v2, v3

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_5

    aget-char v7, v0, v6

    sget-object v8, Lja/t;->b:[B

    array-length v9, v8

    if-ge v7, v9, :cond_4

    aget-byte v7, v8, v7

    if-eqz v7, :cond_4

    sub-int v0, v6, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v6, v1}, Lf7/c0;->h(II)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sget-object v8, Lja/t;->b:[B

    array-length v9, v8

    if-ge v7, v9, :cond_2

    aget-byte v8, v8, v7

    if-nez v8, :cond_0

    iget-object v3, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, [C

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v6

    :goto_2
    move v6, v8

    goto :goto_3

    :cond_0
    if-ne v8, v3, :cond_1

    sget-object v3, Lja/t;->a:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lf7/c0;->h(II)V

    iget-object v7, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v7, [C

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v5, v8, v7, v6}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    iput v3, p0, Lf7/c0;->b:I

    move v6, v3

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, [C

    const/16 v7, 0x5c

    aput-char v7, v3, v6

    add-int/lit8 v7, v6, 0x1

    int-to-char v8, v8

    aput-char v8, v3, v7

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lf7/c0;->b:I

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, [C

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v6

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6, v3}, Lf7/c0;->h(II)V

    iget-object p1, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p1, [C

    add-int/lit8 v0, v6, 0x1

    aput-char v4, p1, v6

    iput v0, p0, Lf7/c0;->b:I

    return-void

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 p1, v2, 0x1

    aput-char v4, v0, v2

    iput p1, p0, Lf7/c0;->b:I

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(JJLy8/c;)Ljava/lang/Object;
    .locals 4

    instance-of p1, p5, Lr/a2;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Lr/a2;

    iget p2, p1, Lr/a2;->o:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, Lr/a2;->o:I

    goto :goto_0

    :cond_0
    new-instance p1, Lr/a2;

    check-cast p5, La9/c;

    invoke-direct {p1, p0, p5}, Lr/a2;-><init>(Lb6/g0;La9/c;)V

    :goto_0
    iget-object p2, p1, Lr/a2;->m:Ljava/lang/Object;

    sget-object p5, Lz8/a;->l:Lz8/a;

    iget v0, p1, Lr/a2;->o:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-wide p3, p1, Lr/a2;->l:J

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lb6/g0;->l:Z

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_5

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lr/n2;

    iget-boolean p2, p0, Lr/n2;->i:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iput-wide p3, p1, Lr/a2;->l:J

    iput v1, p1, Lr/a2;->o:I

    invoke-virtual {p0, p3, p4, p1}, Lr/n2;->a(JLa9/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p5, :cond_4

    return-object p5

    :cond_4
    :goto_1
    check-cast p2, Lb3/q;

    iget-wide v2, p2, Lb3/q;->a:J

    :goto_2
    invoke-static {p3, p4, v2, v3}, Lb3/q;->d(JJ)J

    move-result-wide v2

    :cond_5
    new-instance p0, Lb3/q;

    invoke-direct {p0, v2, v3}, Lb3/q;-><init>(J)V

    return-object p0
.end method

.method public k()V
    .locals 0

    return-void
.end method
