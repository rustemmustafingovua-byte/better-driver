.class public final Lmc/h0;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final u:Lmc/h0;

.field public static final v:Lmc/f0;


# instance fields
.field public n:I

.field public o:Ljava/util/List;

.field public p:Lmc/p;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/h0;

    invoke-direct {v0}, Lmc/h0;-><init>()V

    sput-object v0, Lmc/h0;->u:Lmc/h0;

    new-instance v0, Lmc/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/h0;->v:Lmc/f0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/h0;->t:B

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lmc/h0;->o:Ljava/util/List;

    iput-object v0, p0, Lmc/h0;->q:Ljava/util/List;

    iput-object v0, p0, Lmc/h0;->r:Ljava/util/List;

    iput-object v0, p0, Lmc/h0;->s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/h0;->u:Lmc/h0;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/h0;->u:Lmc/h0;

    invoke-virtual {p0}, Lmc/h0;->v()Lmc/g0;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lmc/h0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/h0;

    iget-object v1, p0, Lmc/h0;->o:Ljava/util/List;

    iget-object v2, p1, Lmc/h0;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lmc/h0;->n:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget v4, p1, Lmc/h0;->n:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_5

    goto :goto_2

    :cond_5
    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmc/h0;->p:Lmc/p;

    if-nez v1, :cond_6

    sget-object v1, Lmc/p;->u:Lmc/p;

    :cond_6
    iget-object v3, p1, Lmc/h0;->p:Lmc/p;

    if-nez v3, :cond_7

    sget-object v3, Lmc/p;->u:Lmc/p;

    :cond_7
    invoke-virtual {v1, v3}, Lmc/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lmc/h0;->q:Ljava/util/List;

    iget-object v3, p1, Lmc/h0;->q:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lmc/h0;->r:Ljava/util/List;

    iget-object v3, p1, Lmc/h0;->r:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lmc/h0;->s:Ljava/util/List;

    iget-object v3, p1, Lmc/h0;->s:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_2
    return v2

    :cond_c
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/h0;->v()Lmc/g0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->g:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lmc/h0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-lez v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/h0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lmc/h0;->n:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/h0;->p:Lmc/p;

    if-nez v1, :cond_2

    sget-object v1, Lmc/p;->u:Lmc/p;

    :cond_2
    invoke-virtual {v1}, Lmc/p;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lmc/h0;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/h0;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lmc/h0;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x4

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/h0;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lmc/h0;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x5

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/h0;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
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

    iget-byte v0, p0, Lmc/h0;->t:B

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
    iget-object v3, p0, Lmc/h0;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lmc/h0;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc/b0;

    invoke-virtual {v3}, Lmc/b0;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lmc/h0;->t:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lmc/h0;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lmc/h0;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc/r0;

    invoke-virtual {v3}, Lmc/r0;->p()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lmc/h0;->t:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lmc/h0;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lmc/h0;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc/l0;

    invoke-virtual {v3}, Lmc/l0;->p()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lmc/h0;->t:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lmc/h0;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lmc/h0;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc/j;

    invoke-virtual {v3}, Lmc/j;->p()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lmc/h0;->t:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iput-byte v1, p0, Lmc/h0;->t:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->h:Lf8/x3;

    const-class v0, Lmc/h0;

    const-class v1, Lmc/g0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Lmc/g0;
    .locals 1

    sget-object v0, Lmc/h0;->u:Lmc/h0;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/g0;

    invoke-direct {p0}, Lmc/g0;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/g0;

    invoke-direct {v0}, Lmc/g0;-><init>()V

    invoke-virtual {v0, p0}, Lmc/g0;->S(Lmc/h0;)V

    return-object v0
.end method
