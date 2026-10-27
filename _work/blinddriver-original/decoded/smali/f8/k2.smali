.class public final Lf8/k2;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final w:Lf8/k2;

.field public static final x:Lf8/f2;


# instance fields
.field public n:I

.field public o:Ljava/util/List;

.field public volatile p:Ljava/io/Serializable;

.field public q:J

.field public r:J

.field public s:D

.field public t:Lf8/j;

.field public volatile u:Ljava/io/Serializable;

.field public v:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/k2;

    invoke-direct {v0}, Lf8/k2;-><init>()V

    sput-object v0, Lf8/k2;->w:Lf8/k2;

    new-instance v0, Lf8/f2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/k2;->x:Lf8/f2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/k2;->v:B

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/k2;->o:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lf8/k2;->p:Ljava/io/Serializable;

    sget-object v1, Lf8/j;->n:Lf8/j;

    iput-object v1, p0, Lf8/k2;->t:Lf8/j;

    iput-object v0, p0, Lf8/k2;->u:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget p0, p0, Lf8/k2;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Z
    .locals 0

    iget p0, p0, Lf8/k2;->n:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Lf8/g2;
    .locals 1

    sget-object v0, Lf8/k2;->w:Lf8/k2;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/g2;

    invoke-direct {p0}, Lf8/g2;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/g2;

    invoke-direct {v0}, Lf8/g2;-><init>()V

    invoke-virtual {v0, p0}, Lf8/g2;->S(Lf8/k2;)V

    return-object v0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/k2;->w:Lf8/k2;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/k2;->w:Lf8/k2;

    invoke-virtual {p0}, Lf8/k2;->C()Lf8/g2;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/k2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/k2;

    iget-object v1, p0, Lf8/k2;->o:Ljava/util/List;

    iget-object v2, p1, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lf8/k2;->n:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget v4, p1, Lf8/k2;->n:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_5

    goto/16 :goto_2

    :cond_5
    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lf8/k2;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/k2;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lf8/k2;->A()Z

    move-result v1

    invoke-virtual {p1}, Lf8/k2;->A()Z

    move-result v3

    if-eq v1, v3, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lf8/k2;->A()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v3, p0, Lf8/k2;->q:J

    iget-wide v5, p1, Lf8/k2;->q:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lf8/k2;->z()Z

    move-result v1

    invoke-virtual {p1}, Lf8/k2;->z()Z

    move-result v3

    if-eq v1, v3, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lf8/k2;->z()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v3, p0, Lf8/k2;->r:J

    iget-wide v5, p1, Lf8/k2;->r:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lf8/k2;->y()Z

    move-result v1

    invoke-virtual {p1}, Lf8/k2;->y()Z

    move-result v3

    if-eq v1, v3, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lf8/k2;->y()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-wide v3, p0, Lf8/k2;->s:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lf8/k2;->s:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lf8/k2;->B()Z

    move-result v1

    invoke-virtual {p1}, Lf8/k2;->B()Z

    move-result v3

    if-eq v1, v3, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lf8/k2;->B()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lf8/k2;->t:Lf8/j;

    iget-object v3, p1, Lf8/k2;->t:Lf8/j;

    invoke-virtual {v1, v3}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lf8/k2;->x()Z

    move-result v1

    invoke-virtual {p1}, Lf8/k2;->x()Z

    move-result v3

    if-eq v1, v3, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lf8/k2;->x()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lf8/k2;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/k2;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    :goto_2
    return v2

    :cond_11
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/k2;->C()Lf8/g2;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->O:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lf8/k2;->n:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/k2;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lf8/k2;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lf8/k2;->q:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lf8/k2;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lf8/k2;->r:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lf8/k2;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lf8/k2;->s:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lf8/k2;->B()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/k2;->t:Lf8/j;

    invoke-virtual {v1}, Lf8/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lf8/k2;->x()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/k2;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
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
    .locals 4

    iget-byte v0, p0, Lf8/k2;->v:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/j2;

    invoke-virtual {v3}, Lf8/j2;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lf8/k2;->v:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lf8/k2;->v:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->P:Lf8/x3;

    const-class v0, Lf8/k2;

    const-class v1, Lf8/g2;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/k2;->u:Ljava/io/Serializable;

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

    iput-object v1, p0, Lf8/k2;->u:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/k2;->p:Ljava/io/Serializable;

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

    iput-object v1, p0, Lf8/k2;->p:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final x()Z
    .locals 0

    iget p0, p0, Lf8/k2;->n:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget p0, p0, Lf8/k2;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget p0, p0, Lf8/k2;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
