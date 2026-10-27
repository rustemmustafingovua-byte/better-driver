.class public final Lmc/v;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final x:Lmc/v;

.field public static final y:Lmc/t;


# instance fields
.field public n:I

.field public o:Lmc/s;

.field public p:Lf8/k4;

.field public q:Lf8/k4;

.field public volatile r:Ljava/io/Serializable;

.field public volatile s:Ljava/io/Serializable;

.field public t:J

.field public u:J

.field public volatile v:Ljava/io/Serializable;

.field public w:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/v;

    invoke-direct {v0}, Lmc/v;-><init>()V

    sput-object v0, Lmc/v;->x:Lmc/v;

    new-instance v0, Lmc/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/v;->y:Lmc/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/v;->w:B

    sget-object v0, Lf8/j4;->n:Lf8/j4;

    iput-object v0, p0, Lmc/v;->p:Lf8/k4;

    iput-object v0, p0, Lmc/v;->q:Lf8/k4;

    const-string v0, ""

    iput-object v0, p0, Lmc/v;->r:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/v;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/v;->v:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget p0, p0, Lmc/v;->n:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Z
    .locals 0

    iget p0, p0, Lmc/v;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 0

    iget p0, p0, Lmc/v;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D()Z
    .locals 0

    iget p0, p0, Lmc/v;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final E()Lmc/u;
    .locals 1

    sget-object v0, Lmc/v;->x:Lmc/v;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/u;

    invoke-direct {p0}, Lmc/u;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/u;

    invoke-direct {v0}, Lmc/u;-><init>()V

    invoke-virtual {v0, p0}, Lmc/u;->S(Lmc/v;)V

    return-object v0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/v;->x:Lmc/v;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/v;->x:Lmc/v;

    invoke-virtual {p0}, Lmc/v;->E()Lmc/u;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lmc/v;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/v;

    invoke-virtual {p0}, Lmc/v;->y()Z

    move-result v0

    invoke-virtual {p1}, Lmc/v;->y()Z

    move-result v1

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lmc/v;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmc/v;->o:Lmc/s;

    if-nez v0, :cond_3

    sget-object v0, Lmc/s;->t:Lmc/s;

    :cond_3
    iget-object v1, p1, Lmc/v;->o:Lmc/s;

    if-nez v1, :cond_4

    sget-object v1, Lmc/s;->t:Lmc/s;

    :cond_4
    invoke-virtual {v0, v1}, Lmc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lmc/v;->p:Lf8/k4;

    iget-object v1, p1, Lmc/v;->p:Lf8/k4;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lmc/v;->q:Lf8/k4;

    iget-object v1, p1, Lmc/v;->q:Lf8/k4;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lmc/v;->D()Z

    move-result v0

    invoke-virtual {p1}, Lmc/v;->D()Z

    move-result v1

    if-eq v0, v1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lmc/v;->D()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmc/v;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmc/v;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lmc/v;->C()Z

    move-result v0

    invoke-virtual {p1}, Lmc/v;->C()Z

    move-result v1

    if-eq v0, v1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lmc/v;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lmc/v;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmc/v;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lmc/v;->B()Z

    move-result v0

    invoke-virtual {p1}, Lmc/v;->B()Z

    move-result v1

    if-eq v0, v1, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lmc/v;->B()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lmc/v;->t:J

    iget-wide v2, p1, Lmc/v;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lmc/v;->A()Z

    move-result v0

    invoke-virtual {p1}, Lmc/v;->A()Z

    move-result v1

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    invoke-virtual {p0}, Lmc/v;->A()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lmc/v;->u:J

    iget-wide v2, p1, Lmc/v;->u:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    invoke-virtual {p0}, Lmc/v;->z()Z

    move-result v0

    invoke-virtual {p1}, Lmc/v;->z()Z

    move-result v1

    if-eq v0, v1, :cond_10

    goto :goto_0

    :cond_10
    invoke-virtual {p0}, Lmc/v;->z()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmc/v;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmc/v;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/v;->E()Lmc/u;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->a:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lmc/v;->y()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/v;->o:Lmc/s;

    if-nez v1, :cond_1

    sget-object v1, Lmc/s;->t:Lmc/s;

    :cond_1
    invoke-virtual {v1}, Lmc/s;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lmc/v;->p:Lf8/k4;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/v;->p:Lf8/k4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lmc/v;->q:Lf8/k4;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/v;->q:Lf8/k4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lmc/v;->D()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lmc/v;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lmc/v;->C()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lmc/v;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lmc/v;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x20

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/v;->t:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lmc/v;->A()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x21

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/v;->u:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lmc/v;->z()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x22

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lmc/v;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
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

    iget-byte v0, p0, Lmc/v;->w:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lmc/v;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmc/v;->o:Lmc/s;

    if-nez v0, :cond_2

    sget-object v0, Lmc/s;->t:Lmc/s;

    :cond_2
    invoke-virtual {v0}, Lmc/s;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lmc/v;->w:B

    return v2

    :cond_3
    iput-byte v1, p0, Lmc/v;->w:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->b:Lf8/x3;

    const-class v0, Lmc/v;

    const-class v1, Lmc/u;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmc/v;->v:Ljava/io/Serializable;

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

    iput-object v1, p0, Lmc/v;->v:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmc/v;->s:Ljava/io/Serializable;

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

    iput-object v1, p0, Lmc/v;->s:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmc/v;->r:Ljava/io/Serializable;

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

    iput-object v1, p0, Lmc/v;->r:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final y()Z
    .locals 1

    iget p0, p0, Lmc/v;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget p0, p0, Lmc/v;->n:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
