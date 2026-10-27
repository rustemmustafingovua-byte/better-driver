.class public final Lmc/c;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final u:Lmc/c;

.field public static final v:Lmc/a;


# instance fields
.field public n:I

.field public o:Lf8/j;

.field public p:I

.field public q:Lf8/j;

.field public r:Lf8/j;

.field public s:Lf8/j;

.field public t:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/c;

    invoke-direct {v0}, Lmc/c;-><init>()V

    sput-object v0, Lmc/c;->u:Lmc/c;

    new-instance v0, Lmc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/c;->v:Lmc/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/c;->t:B

    sget-object v0, Lf8/j;->n:Lf8/j;

    iput-object v0, p0, Lmc/c;->o:Lf8/j;

    iput-object v0, p0, Lmc/c;->q:Lf8/j;

    iput-object v0, p0, Lmc/c;->r:Lf8/j;

    iput-object v0, p0, Lmc/c;->s:Lf8/j;

    return-void
.end method


# virtual methods
.method public final A()Lmc/b;
    .locals 1

    sget-object v0, Lmc/c;->u:Lmc/c;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/b;

    invoke-direct {p0}, Lmc/b;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/b;

    invoke-direct {v0}, Lmc/b;-><init>()V

    invoke-virtual {v0, p0}, Lmc/b;->S(Lmc/c;)V

    return-object v0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/c;->u:Lmc/c;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/c;->u:Lmc/c;

    invoke-virtual {p0}, Lmc/c;->A()Lmc/b;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc/c;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/c;

    invoke-virtual {p0}, Lmc/c;->x()Z

    move-result v1

    invoke-virtual {p1}, Lmc/c;->x()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lmc/c;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmc/c;->o:Lf8/j;

    iget-object v2, p1, Lmc/c;->o:Lf8/j;

    invoke-virtual {v1, v2}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lmc/c;->y()Z

    move-result v1

    invoke-virtual {p1}, Lmc/c;->y()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lmc/c;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lmc/c;->p:I

    iget v2, p1, Lmc/c;->p:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lmc/c;->z()Z

    move-result v1

    invoke-virtual {p1}, Lmc/c;->z()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lmc/c;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmc/c;->q:Lf8/j;

    iget-object v2, p1, Lmc/c;->q:Lf8/j;

    invoke-virtual {v1, v2}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lmc/c;->v()Z

    move-result v1

    invoke-virtual {p1}, Lmc/c;->v()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lmc/c;->v()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmc/c;->r:Lf8/j;

    iget-object v2, p1, Lmc/c;->r:Lf8/j;

    invoke-virtual {v1, v2}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lmc/c;->w()Z

    move-result v1

    invoke-virtual {p1}, Lmc/c;->w()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lmc/c;->w()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmc/c;->s:Lf8/j;

    iget-object v2, p1, Lmc/c;->s:Lf8/j;

    invoke-virtual {v1, v2}, Lf8/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/c;->A()Lmc/b;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/g;->a:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lmc/c;->x()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/c;->o:Lf8/j;

    invoke-virtual {v1}, Lf8/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lmc/c;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lmc/c;->p:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lmc/c;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/c;->q:Lf8/j;

    invoke-virtual {v1}, Lf8/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lmc/c;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/c;->r:Lf8/j;

    invoke-virtual {v1}, Lf8/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lmc/c;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/c;->s:Lf8/j;

    invoke-virtual {v1}, Lf8/j;->hashCode()I

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

    iget-byte v0, p0, Lmc/c;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lmc/c;->t:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/g;->b:Lf8/x3;

    const-class v0, Lmc/c;

    const-class v1, Lmc/b;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Lmc/c;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget p0, p0, Lmc/c;->n:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Z
    .locals 1

    iget p0, p0, Lmc/c;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget p0, p0, Lmc/c;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget p0, p0, Lmc/c;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
