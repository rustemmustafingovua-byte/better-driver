.class public final Lmc/m;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final u:Lmc/m;

.field public static final v:Lmc/k;


# instance fields
.field public n:Lf8/c4;

.field public o:Lf8/e4;

.field public p:Lf8/e4;

.field public q:Lf8/c4;

.field public r:Lf8/c4;

.field public s:Lf8/a4;

.field public t:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/m;

    invoke-direct {v0}, Lmc/m;-><init>()V

    sput-object v0, Lmc/m;->u:Lmc/m;

    new-instance v0, Lmc/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/m;->v:Lmc/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/m;->t:B

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lmc/m;->n:Lf8/c4;

    sget-object v1, Lf8/l4;->o:Lf8/l4;

    iput-object v1, p0, Lmc/m;->o:Lf8/e4;

    iput-object v1, p0, Lmc/m;->p:Lf8/e4;

    iput-object v0, p0, Lmc/m;->q:Lf8/c4;

    iput-object v0, p0, Lmc/m;->r:Lf8/c4;

    sget-object v0, Lf8/g;->o:Lf8/g;

    iput-object v0, p0, Lmc/m;->s:Lf8/a4;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/m;->u:Lmc/m;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/m;->u:Lmc/m;

    invoke-virtual {p0}, Lmc/m;->v()Lmc/l;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc/m;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/m;

    iget-object v1, p0, Lmc/m;->n:Lf8/c4;

    iget-object v2, p1, Lmc/m;->n:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1, v2}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lmc/m;->o:Lf8/e4;

    iget-object v3, p1, Lmc/m;->o:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1, v3}, Lf8/l4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lmc/m;->p:Lf8/e4;

    iget-object v3, p1, Lmc/m;->p:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1, v3}, Lf8/l4;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lmc/m;->q:Lf8/c4;

    iget-object v3, p1, Lmc/m;->q:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1, v3}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lmc/m;->r:Lf8/c4;

    iget-object v3, p1, Lmc/m;->r:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1, v3}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lmc/m;->s:Lf8/a4;

    iget-object v3, p1, Lmc/m;->s:Lf8/a4;

    check-cast v1, Lf8/g;

    invoke-virtual {v1, v3}, Lf8/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/m;->v()Lmc/l;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->m:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lmc/m;->n:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->size()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/m;->n:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lmc/m;->o:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/m;->o:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lmc/m;->p:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/m;->p:Lf8/e4;

    check-cast v1, Lf8/l4;

    invoke-virtual {v1}, Lf8/l4;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lmc/m;->q:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/m;->q:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lmc/m;->r:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/m;->r:Lf8/c4;

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lmc/m;->s:Lf8/a4;

    check-cast v1, Lf8/g;

    invoke-virtual {v1}, Lf8/g;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x6

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/m;->s:Lf8/a4;

    check-cast v1, Lf8/g;

    invoke-virtual {v1}, Lf8/g;->hashCode()I

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

    iget-byte v0, p0, Lmc/m;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lmc/m;->t:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->n:Lf8/x3;

    const-class v0, Lmc/m;

    const-class v1, Lmc/l;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Lmc/l;
    .locals 1

    sget-object v0, Lmc/m;->u:Lmc/m;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/l;

    invoke-direct {p0}, Lmc/l;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/l;

    invoke-direct {v0}, Lmc/l;-><init>()V

    invoke-virtual {v0, p0}, Lmc/l;->S(Lmc/m;)V

    return-object v0
.end method
