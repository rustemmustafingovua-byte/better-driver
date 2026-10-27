.class public final Lf8/q0;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final A:Lf8/q0;

.field public static final B:Lf8/m0;


# instance fields
.field public n:I

.field public volatile o:Ljava/io/Serializable;

.field public p:I

.field public q:I

.field public r:I

.field public volatile s:Ljava/io/Serializable;

.field public volatile t:Ljava/io/Serializable;

.field public volatile u:Ljava/io/Serializable;

.field public v:I

.field public volatile w:Ljava/io/Serializable;

.field public x:Lf8/v0;

.field public y:Z

.field public z:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/q0;

    invoke-direct {v0}, Lf8/q0;-><init>()V

    sput-object v0, Lf8/q0;->A:Lf8/q0;

    new-instance v0, Lf8/m0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/q0;->B:Lf8/m0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/q0;->z:B

    const-string v0, ""

    iput-object v0, p0, Lf8/q0;->o:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, p0, Lf8/q0;->q:I

    iput v1, p0, Lf8/q0;->r:I

    iput-object v0, p0, Lf8/q0;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/q0;->t:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/q0;->u:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/q0;->w:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/q0;->s:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/q0;->s:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final B()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final E()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final H()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final K()Z
    .locals 0

    iget p0, p0, Lf8/q0;->n:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L()Lf8/n0;
    .locals 1

    sget-object v0, Lf8/q0;->A:Lf8/q0;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/n0;

    invoke-direct {p0}, Lf8/n0;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/n0;

    invoke-direct {v0}, Lf8/n0;-><init>()V

    invoke-virtual {v0, p0}, Lf8/n0;->S(Lf8/q0;)V

    return-object v0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/q0;->A:Lf8/q0;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/q0;->A:Lf8/q0;

    invoke-virtual {p0}, Lf8/q0;->L()Lf8/n0;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/q0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/q0;

    iget v1, p0, Lf8/q0;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lf8/q0;->n:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v2, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lf8/q0;->F()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->F()Z

    move-result v2

    if-eq v1, v2, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lf8/q0;->F()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lf8/q0;->p:I

    iget v2, p1, Lf8/q0;->p:I

    if-eq v1, v2, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lf8/q0;->E()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->E()Z

    move-result v2

    if-eq v1, v2, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lf8/q0;->E()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lf8/q0;->q:I

    iget v2, p1, Lf8/q0;->q:I

    if-eq v1, v2, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lf8/q0;->J()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->J()Z

    move-result v2

    if-eq v1, v2, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lf8/q0;->J()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lf8/q0;->r:I

    iget v2, p1, Lf8/q0;->r:I

    if-eq v1, v2, :cond_b

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lf8/q0;->K()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->K()Z

    move-result v2

    if-eq v1, v2, :cond_c

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lf8/q0;->K()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0}, Lf8/q0;->C()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->C()Z

    move-result v2

    if-eq v1, v2, :cond_e

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lf8/q0;->C()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lf8/q0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/q0;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0}, Lf8/q0;->B()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->B()Z

    move-result v2

    if-eq v1, v2, :cond_10

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Lf8/q0;->B()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0}, Lf8/q0;->G()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->G()Z

    move-result v2

    if-eq v1, v2, :cond_12

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0}, Lf8/q0;->G()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lf8/q0;->v:I

    iget v2, p1, Lf8/q0;->v:I

    if-eq v1, v2, :cond_13

    goto :goto_2

    :cond_13
    invoke-virtual {p0}, Lf8/q0;->D()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->D()Z

    move-result v2

    if-eq v1, v2, :cond_14

    goto :goto_2

    :cond_14
    invoke-virtual {p0}, Lf8/q0;->D()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lf8/q0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/q0;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2

    :cond_15
    invoke-virtual {p0}, Lf8/q0;->H()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->H()Z

    move-result v2

    if-eq v1, v2, :cond_16

    goto :goto_2

    :cond_16
    invoke-virtual {p0}, Lf8/q0;->H()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lf8/q0;->z()Lf8/v0;

    move-result-object v1

    invoke-virtual {p1}, Lf8/q0;->z()Lf8/v0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf8/v0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_2

    :cond_17
    invoke-virtual {p0}, Lf8/q0;->I()Z

    move-result v1

    invoke-virtual {p1}, Lf8/q0;->I()Z

    move-result v2

    if-eq v1, v2, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {p0}, Lf8/q0;->I()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lf8/q0;->y:Z

    iget-boolean v2, p1, Lf8/q0;->y:Z

    if-eq v1, v2, :cond_19

    goto :goto_2

    :cond_19
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    :goto_2
    return v3

    :cond_1a
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/q0;->L()Lf8/n0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->k:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lf8/q0;->n:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lf8/q0;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/q0;->p:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lf8/q0;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/q0;->q:I

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lf8/q0;->J()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/q0;->r:I

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lf8/q0;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lf8/q0;->C()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/q0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lf8/q0;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lf8/q0;->G()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/q0;->v:I

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lf8/q0;->D()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/q0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lf8/q0;->H()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/q0;->z()Lf8/v0;

    move-result-object v1

    invoke-virtual {v1}, Lf8/v0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lf8/q0;->I()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x11

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/q0;->y:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lf8/y3;->m:Lf8/i5;

    iget-object v1, v1, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf8/c;->l:I

    return v1
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method

.method public final p()Z
    .locals 3

    iget-byte v0, p0, Lf8/q0;->z:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lf8/q0;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lf8/q0;->z()Lf8/v0;

    move-result-object v0

    invoke-virtual {v0}, Lf8/v0;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lf8/q0;->z:B

    return v2

    :cond_2
    iput-byte v1, p0, Lf8/q0;->z:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->l:Lf8/x3;

    const-class v0, Lf8/q0;

    const-class v1, Lf8/n0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/q0;->u:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/q0;->u:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/q0;->t:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/q0;->t:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/q0;->w:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/q0;->w:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/q0;->o:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/q0;->o:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final z()Lf8/v0;
    .locals 0

    iget-object p0, p0, Lf8/q0;->x:Lf8/v0;

    if-nez p0, :cond_0

    sget-object p0, Lf8/v0;->x:Lf8/v0;

    :cond_0
    return-object p0
.end method
