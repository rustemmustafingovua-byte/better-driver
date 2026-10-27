.class public final Lmc/e0;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final v:Lmc/e0;

.field public static final w:Lmc/c0;


# instance fields
.field public n:I

.field public o:Lmc/o0;

.field public p:Ljava/util/List;

.field public q:I

.field public r:J

.field public s:J

.field public t:I

.field public u:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/e0;

    invoke-direct {v0}, Lmc/e0;-><init>()V

    sput-object v0, Lmc/e0;->v:Lmc/e0;

    new-instance v0, Lmc/c0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/e0;->w:Lmc/c0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/e0;->u:B

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lmc/e0;->p:Ljava/util/List;

    const/16 v0, 0x64

    iput v0, p0, Lmc/e0;->q:I

    const/16 v0, 0x3e8

    iput v0, p0, Lmc/e0;->t:I

    return-void
.end method


# virtual methods
.method public final A()Lmc/d0;
    .locals 1

    sget-object v0, Lmc/e0;->v:Lmc/e0;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/d0;

    invoke-direct {p0}, Lmc/d0;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/d0;

    invoke-direct {v0}, Lmc/d0;-><init>()V

    invoke-virtual {v0, p0}, Lmc/d0;->S(Lmc/e0;)V

    return-object v0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/e0;->v:Lmc/e0;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/e0;->v:Lmc/e0;

    invoke-virtual {p0}, Lmc/e0;->A()Lmc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lmc/e0;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/e0;

    invoke-virtual {p0}, Lmc/e0;->z()Z

    move-result v0

    invoke-virtual {p1}, Lmc/e0;->z()Z

    move-result v1

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lmc/e0;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmc/e0;->o:Lmc/o0;

    if-nez v0, :cond_3

    sget-object v0, Lmc/o0;->p:Lmc/o0;

    :cond_3
    iget-object v1, p1, Lmc/e0;->o:Lmc/o0;

    if-nez v1, :cond_4

    sget-object v1, Lmc/o0;->p:Lmc/o0;

    :cond_4
    invoke-virtual {v0, v1}, Lmc/o0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lmc/e0;->p:Ljava/util/List;

    iget-object v1, p1, Lmc/e0;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lmc/e0;->w()Z

    move-result v0

    invoke-virtual {p1}, Lmc/e0;->w()Z

    move-result v1

    if-eq v0, v1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lmc/e0;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lmc/e0;->q:I

    iget v1, p1, Lmc/e0;->q:I

    if-eq v0, v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lmc/e0;->x()Z

    move-result v0

    invoke-virtual {p1}, Lmc/e0;->x()Z

    move-result v1

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lmc/e0;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lmc/e0;->r:J

    iget-wide v2, p1, Lmc/e0;->r:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lmc/e0;->y()Z

    move-result v0

    invoke-virtual {p1}, Lmc/e0;->y()Z

    move-result v1

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lmc/e0;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lmc/e0;->s:J

    iget-wide v2, p1, Lmc/e0;->s:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lmc/e0;->v()Z

    move-result v0

    invoke-virtual {p1}, Lmc/e0;->v()Z

    move-result v1

    if-eq v0, v1, :cond_d

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lmc/e0;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lmc/e0;->t:I

    iget v1, p1, Lmc/e0;->t:I

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/e0;->A()Lmc/d0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->e:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lmc/e0;->z()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/e0;->o:Lmc/o0;

    if-nez v1, :cond_1

    sget-object v1, Lmc/o0;->p:Lmc/o0;

    :cond_1
    invoke-virtual {v1}, Lmc/o0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lmc/e0;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/e0;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lmc/e0;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lmc/e0;->q:I

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lmc/e0;->x()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x13

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/e0;->r:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lmc/e0;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x14

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/e0;->s:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lmc/e0;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x12

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lmc/e0;->t:I

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

    iget-byte v0, p0, Lmc/e0;->u:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lmc/e0;->z()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lmc/e0;->u:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lmc/e0;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lmc/e0;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc/h0;

    invoke-virtual {v3}, Lmc/h0;->p()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lmc/e0;->u:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-byte v1, p0, Lmc/e0;->u:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->f:Lf8/x3;

    const-class v0, Lmc/e0;

    const-class v1, Lmc/d0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Lmc/e0;->n:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget p0, p0, Lmc/e0;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Z
    .locals 0

    iget p0, p0, Lmc/e0;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget p0, p0, Lmc/e0;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 1

    iget p0, p0, Lmc/e0;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
