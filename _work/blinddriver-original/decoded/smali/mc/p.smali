.class public final Lmc/p;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final u:Lmc/p;

.field public static final v:Lmc/n;


# instance fields
.field public n:I

.field public o:Lf8/e4;

.field public p:Lmc/m;

.field public q:Lf8/e4;

.field public r:Lf8/e4;

.field public s:Lf8/c4;

.field public t:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/p;

    invoke-direct {v0}, Lmc/p;-><init>()V

    sput-object v0, Lmc/p;->u:Lmc/p;

    new-instance v0, Lmc/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/p;->v:Lmc/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/p;->t:B

    sget-object v0, Lf8/l4;->o:Lf8/l4;

    iput-object v0, p0, Lmc/p;->o:Lf8/e4;

    iput-object v0, p0, Lmc/p;->q:Lf8/e4;

    iput-object v0, p0, Lmc/p;->r:Lf8/e4;

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lmc/p;->s:Lf8/c4;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/p;->u:Lmc/p;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/p;->u:Lmc/p;

    invoke-virtual {p0}, Lmc/p;->v()Lmc/o;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lmc/p;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/p;

    iget-object v1, p0, Lmc/p;->o:Lf8/e4;

    iget-object v2, p1, Lmc/p;->o:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1, v2}, Lf8/l4;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lmc/p;->n:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget v4, p1, Lmc/p;->n:I

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

    iget-object v1, p0, Lmc/p;->p:Lmc/m;

    if-nez v1, :cond_6

    sget-object v1, Lmc/m;->u:Lmc/m;

    :cond_6
    iget-object v3, p1, Lmc/p;->p:Lmc/m;

    if-nez v3, :cond_7

    sget-object v3, Lmc/m;->u:Lmc/m;

    :cond_7
    invoke-virtual {v1, v3}, Lmc/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lmc/p;->q:Lf8/e4;

    iget-object v3, p1, Lmc/p;->q:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1, v3}, Lf8/l4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lmc/p;->r:Lf8/e4;

    iget-object v3, p1, Lmc/p;->r:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1, v3}, Lf8/l4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lmc/p;->s:Lf8/c4;

    iget-object v3, p1, Lmc/p;->s:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1, v3}, Lf8/z3;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lmc/p;->v()Lmc/o;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->s:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lmc/p;->o:Lf8/e4;

    move-object v2, v1

    check-cast v2, Lf8/l4;

    iget v2, v2, Lf8/l4;->n:I

    const/4 v3, 0x1

    const/16 v4, 0x35

    const/16 v5, 0x25

    if-lez v2, :cond_1

    invoke-static {v0, v5, v3, v4}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lmc/p;->n:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    invoke-static {v0, v5, v1, v4}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/p;->p:Lmc/m;

    if-nez v1, :cond_2

    sget-object v1, Lmc/m;->u:Lmc/m;

    :cond_2
    invoke-virtual {v1}, Lmc/m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lmc/p;->q:Lf8/e4;

    move-object v2, v1

    check-cast v2, Lf8/l4;

    iget v2, v2, Lf8/l4;->n:I

    if-lez v2, :cond_4

    const/16 v2, 0x8

    invoke-static {v0, v5, v2, v4}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lmc/p;->r:Lf8/e4;

    move-object v2, v1

    check-cast v2, Lf8/l4;

    iget v2, v2, Lf8/l4;->n:I

    if-lez v2, :cond_5

    const/16 v2, 0x9

    invoke-static {v0, v5, v2, v4}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lmc/p;->s:Lf8/c4;

    move-object v2, v1

    check-cast v2, Lf8/z3;

    iget v2, v2, Lf8/z3;->n:I

    if-lez v2, :cond_6

    const/16 v2, 0xa

    invoke-static {v0, v5, v2, v4}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

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
    .locals 2

    iget-byte v0, p0, Lmc/p;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lmc/p;->t:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->t:Lf8/x3;

    const-class v0, Lmc/p;

    const-class v1, Lmc/o;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Lmc/o;
    .locals 1

    sget-object v0, Lmc/p;->u:Lmc/p;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/o;

    invoke-direct {p0}, Lmc/o;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/o;

    invoke-direct {v0}, Lmc/o;-><init>()V

    invoke-virtual {v0, p0}, Lmc/o;->S(Lmc/p;)V

    return-object v0
.end method
