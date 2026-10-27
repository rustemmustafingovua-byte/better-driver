.class public final Lf8/t;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final A:Lf8/l;

.field public static final z:Lf8/t;


# instance fields
.field public n:I

.field public volatile o:Ljava/io/Serializable;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:Lf8/f1;

.field public w:Ljava/util/List;

.field public x:Lf8/k4;

.field public y:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/t;

    invoke-direct {v0}, Lf8/t;-><init>()V

    sput-object v0, Lf8/t;->z:Lf8/t;

    new-instance v0, Lf8/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/t;->A:Lf8/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/t;->y:B

    const-string v0, ""

    iput-object v0, p0, Lf8/t;->o:Ljava/io/Serializable;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->p:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->q:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->r:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->s:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->t:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->u:Ljava/util/List;

    iput-object v0, p0, Lf8/t;->w:Ljava/util/List;

    sget-object v0, Lf8/j4;->n:Lf8/j4;

    iput-object v0, p0, Lf8/t;->x:Lf8/k4;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/t;->z:Lf8/t;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/t;->z:Lf8/t;

    invoke-virtual {p0}, Lf8/t;->y()Lf8/m;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/t;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/t;

    iget v1, p0, Lf8/t;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lf8/t;->n:I

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

    invoke-virtual {p0}, Lf8/t;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/t;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lf8/t;->p:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lf8/t;->q:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lf8/t;->r:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lf8/t;->s:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lf8/t;->t:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lf8/t;->u:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lf8/t;->x()Z

    move-result v1

    invoke-virtual {p1}, Lf8/t;->x()Z

    move-result v2

    if-eq v1, v2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lf8/t;->x()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lf8/t;->w()Lf8/f1;

    move-result-object v1

    invoke-virtual {p1}, Lf8/t;->w()Lf8/f1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf8/f1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lf8/t;->w:Ljava/util/List;

    iget-object v2, p1, Lf8/t;->w:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lf8/t;->x:Lf8/k4;

    iget-object v2, p1, Lf8/t;->x:Lf8/k4;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    :goto_2
    return v3

    :cond_10
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/t;->y()Lf8/m;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->c:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lf8/t;->n:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/t;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x6

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x4

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x5

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x8

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lf8/t;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/t;->w()Lf8/f1;

    move-result-object v1

    invoke-virtual {v1}, Lf8/f1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lf8/t;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/16 v1, 0x9

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lf8/t;->x:Lf8/k4;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v1, 0xa

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/t;->x:Lf8/k4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
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

    iget-byte v0, p0, Lf8/t;->y:B

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
    iget-object v3, p0, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/q0;

    invoke-virtual {v3}, Lf8/q0;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/q0;

    invoke-virtual {v3}, Lf8/q0;->p()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/t;

    invoke-virtual {v3}, Lf8/t;->p()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/z;

    invoke-virtual {v3}, Lf8/z;->p()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    iget-object v3, p0, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/p;

    invoke-virtual {v3}, Lf8/p;->p()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    iget-object v3, p0, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/p1;

    invoke-virtual {v3}, Lf8/p1;->p()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lf8/t;->x()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lf8/t;->w()Lf8/f1;

    move-result-object v0

    invoke-virtual {v0}, Lf8/f1;->p()Z

    move-result v0

    if-nez v0, :cond_e

    iput-byte v2, p0, Lf8/t;->y:B

    return v2

    :cond_e
    iput-byte v1, p0, Lf8/t;->y:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->d:Lf8/x3;

    const-class v0, Lf8/t;

    const-class v1, Lf8/m;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/t;->o:Ljava/io/Serializable;

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

    iput-object v1, p0, Lf8/t;->o:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final w()Lf8/f1;
    .locals 0

    iget-object p0, p0, Lf8/t;->v:Lf8/f1;

    if-nez p0, :cond_0

    sget-object p0, Lf8/f1;->v:Lf8/f1;

    :cond_0
    return-object p0
.end method

.method public final x()Z
    .locals 0

    iget p0, p0, Lf8/t;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Lf8/m;
    .locals 1

    sget-object v0, Lf8/t;->z:Lf8/t;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/m;

    invoke-direct {p0}, Lf8/m;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/m;

    invoke-direct {v0}, Lf8/m;-><init>()V

    invoke-virtual {v0, p0}, Lf8/m;->U(Lf8/t;)V

    return-object v0
.end method
