.class public final Lf8/f1;
.super Lf8/o3;
.source "SourceFile"


# static fields
.field public static final v:Lf8/f1;

.field public static final w:Lf8/d1;


# instance fields
.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/util/List;

.field public u:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/f1;

    invoke-direct {v0}, Lf8/f1;-><init>()V

    sput-object v0, Lf8/f1;->v:Lf8/f1;

    new-instance v0, Lf8/d1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/f1;->w:Lf8/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/o3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/f1;->u:B

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/f1;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget p0, p0, Lf8/f1;->o:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Lf8/e1;
    .locals 1

    sget-object v0, Lf8/f1;->v:Lf8/f1;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/e1;

    invoke-direct {p0}, Lf8/e1;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/e1;

    invoke-direct {v0}, Lf8/e1;-><init>()V

    invoke-virtual {v0, p0}, Lf8/e1;->X(Lf8/f1;)V

    return-object v0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/f1;->v:Lf8/f1;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/f1;->v:Lf8/f1;

    invoke-virtual {p0}, Lf8/f1;->B()Lf8/e1;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/f1;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/f1;

    iget v1, p0, Lf8/f1;->o:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lf8/f1;->o:I

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

    iget-boolean v1, p0, Lf8/f1;->p:Z

    iget-boolean v2, p1, Lf8/f1;->p:Z

    if-eq v1, v2, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lf8/f1;->A()Z

    move-result v1

    invoke-virtual {p1}, Lf8/f1;->A()Z

    move-result v2

    if-eq v1, v2, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lf8/f1;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lf8/f1;->q:Z

    iget-boolean v2, p1, Lf8/f1;->q:Z

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lf8/f1;->y()Z

    move-result v1

    invoke-virtual {p1}, Lf8/f1;->y()Z

    move-result v2

    if-eq v1, v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lf8/f1;->y()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lf8/f1;->r:Z

    iget-boolean v2, p1, Lf8/f1;->r:Z

    if-eq v1, v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lf8/f1;->z()Z

    move-result v1

    invoke-virtual {p1}, Lf8/f1;->z()Z

    move-result v2

    if-eq v1, v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lf8/f1;->z()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lf8/f1;->s:Z

    iget-boolean v2, p1, Lf8/f1;->s:Z

    if-eq v1, v2, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lf8/f1;->t:Ljava/util/List;

    iget-object v2, p1, Lf8/f1;->t:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lf8/y3;->m:Lf8/i5;

    iget-object v2, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {v1, v2}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p0

    iget-object p1, p1, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p1}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_2
    return v3

    :cond_e
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/f1;->B()Lf8/e1;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->A:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lf8/f1;->o:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/f1;->p:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lf8/f1;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/f1;->q:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lf8/f1;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/f1;->r:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lf8/f1;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/f1;->s:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lf8/f1;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x3e7

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/f1;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {v1}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lf8/c;->c(ILjava/util/Map;)I

    move-result v0

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

    iget-byte v0, p0, Lf8/f1;->u:B

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
    iget-object v3, p0, Lf8/f1;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lf8/f1;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/k2;

    invoke-virtual {v3}, Lf8/k2;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lf8/f1;->u:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lf8/o3;->v()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lf8/f1;->u:B

    return v2

    :cond_4
    iput-byte v1, p0, Lf8/f1;->u:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->B:Lf8/x3;

    const-class v0, Lf8/f1;

    const-class v1, Lf8/e1;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final y()Z
    .locals 0

    iget p0, p0, Lf8/f1;->o:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget p0, p0, Lf8/f1;->o:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
