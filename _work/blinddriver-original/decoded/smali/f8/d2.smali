.class public final Lf8/d2;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final u:Lf8/d2;

.field public static final v:Lf8/b2;


# instance fields
.field public n:I

.field public o:Lf8/c4;

.field public p:Lf8/c4;

.field public volatile q:Ljava/io/Serializable;

.field public volatile r:Ljava/io/Serializable;

.field public s:Lf8/k4;

.field public t:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/d2;

    invoke-direct {v0}, Lf8/d2;-><init>()V

    sput-object v0, Lf8/d2;->u:Lf8/d2;

    new-instance v0, Lf8/b2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/d2;->v:Lf8/b2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/d2;->t:B

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lf8/d2;->o:Lf8/c4;

    iput-object v0, p0, Lf8/d2;->p:Lf8/c4;

    const-string v0, ""

    iput-object v0, p0, Lf8/d2;->q:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/d2;->r:Ljava/io/Serializable;

    sget-object v0, Lf8/j4;->n:Lf8/j4;

    iput-object v0, p0, Lf8/d2;->s:Lf8/k4;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/d2;->u:Lf8/d2;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/d2;->u:Lf8/d2;

    invoke-virtual {p0}, Lf8/d2;->y()Lf8/c2;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/d2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/d2;

    iget-object v1, p0, Lf8/d2;->o:Lf8/c4;

    iget-object v2, p1, Lf8/d2;->o:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1, v2}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lf8/d2;->p:Lf8/c4;

    iget-object v3, p1, Lf8/d2;->p:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1, v3}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, p0, Lf8/d2;->n:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    iget v4, p1, Lf8/d2;->n:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_6

    goto :goto_2

    :cond_6
    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lf8/d2;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/d2;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lf8/d2;->x()Z

    move-result v1

    invoke-virtual {p1}, Lf8/d2;->x()Z

    move-result v3

    if-eq v1, v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lf8/d2;->x()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lf8/d2;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/d2;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lf8/d2;->s:Lf8/k4;

    iget-object v3, p1, Lf8/d2;->s:Lf8/k4;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    :goto_2
    return v2

    :cond_b
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/d2;->y()Lf8/c2;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->U:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lf8/d2;->o:Lf8/c4;

    move-object v2, v1

    check-cast v2, Lf8/z3;

    iget v2, v2, Lf8/z3;->n:I

    const/4 v3, 0x1

    const/16 v4, 0x35

    const/16 v5, 0x25

    if-lez v2, :cond_1

    invoke-static {v0, v5, v3, v4}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lf8/d2;->p:Lf8/c4;

    move-object v2, v1

    check-cast v2, Lf8/z3;

    iget v2, v2, Lf8/z3;->n:I

    if-lez v2, :cond_2

    const/4 v2, 0x2

    invoke-static {v0, v5, v2, v4}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lf8/d2;->n:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v5, v1, v4}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/d2;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lf8/d2;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v0, v5, v1, v4}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/d2;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lf8/d2;->s:Lf8/k4;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v0, v5, v1, v4}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/d2;->s:Lf8/k4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
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
    .locals 2

    iget-byte v0, p0, Lf8/d2;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lf8/d2;->t:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->V:Lf8/x3;

    const-class v0, Lf8/d2;

    const-class v1, Lf8/c2;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/d2;->q:Ljava/io/Serializable;

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

    iput-object v1, p0, Lf8/d2;->q:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/d2;->r:Ljava/io/Serializable;

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

    iput-object v1, p0, Lf8/d2;->r:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final x()Z
    .locals 0

    iget p0, p0, Lf8/d2;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Lf8/c2;
    .locals 1

    sget-object v0, Lf8/d2;->u:Lf8/d2;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/c2;

    invoke-direct {p0}, Lf8/c2;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/c2;

    invoke-direct {v0}, Lf8/c2;-><init>()V

    invoke-virtual {v0, p0}, Lf8/c2;->S(Lf8/d2;)V

    return-object v0
.end method
