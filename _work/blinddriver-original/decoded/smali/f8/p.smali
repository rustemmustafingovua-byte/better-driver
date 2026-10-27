.class public final Lf8/p;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final s:Lf8/p;

.field public static final t:Lf8/n;


# instance fields
.field public n:I

.field public o:I

.field public p:I

.field public q:Lf8/l0;

.field public r:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/p;

    invoke-direct {v0}, Lf8/p;-><init>()V

    sput-object v0, Lf8/p;->s:Lf8/p;

    new-instance v0, Lf8/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/p;->t:Lf8/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/p;->r:B

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/p;->s:Lf8/p;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/p;->s:Lf8/p;

    invoke-virtual {p0}, Lf8/p;->x()Lf8/o;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/p;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/p;

    iget v1, p0, Lf8/p;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lf8/p;->n:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v2, v4, :cond_4

    goto :goto_2

    :cond_4
    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    iget v1, p0, Lf8/p;->o:I

    iget v2, p1, Lf8/p;->o:I

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lf8/p;->v()Z

    move-result v1

    invoke-virtual {p1}, Lf8/p;->v()Z

    move-result v2

    if-eq v1, v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lf8/p;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lf8/p;->p:I

    iget v2, p1, Lf8/p;->p:I

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lf8/p;->w()Z

    move-result v1

    invoke-virtual {p1}, Lf8/p;->w()Z

    move-result v2

    if-eq v1, v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lf8/p;->w()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lf8/p;->q:Lf8/l0;

    if-nez v1, :cond_9

    sget-object v1, Lf8/l0;->q:Lf8/l0;

    :cond_9
    iget-object v2, p1, Lf8/p;->q:Lf8/l0;

    if-nez v2, :cond_a

    sget-object v2, Lf8/l0;->q:Lf8/l0;

    :cond_a
    invoke-virtual {v1, v2}, Lf8/l0;->equals(Ljava/lang/Object;)Z

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
    return v3

    :cond_c
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/p;->x()Lf8/o;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->e:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lf8/p;->n:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/p;->o:I

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lf8/p;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/p;->p:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lf8/p;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/p;->q:Lf8/l0;

    if-nez v1, :cond_3

    sget-object v1, Lf8/l0;->q:Lf8/l0;

    :cond_3
    invoke-virtual {v1}, Lf8/l0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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

    iget-byte v0, p0, Lf8/p;->r:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lf8/p;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf8/p;->q:Lf8/l0;

    if-nez v0, :cond_2

    sget-object v0, Lf8/l0;->q:Lf8/l0;

    :cond_2
    invoke-virtual {v0}, Lf8/l0;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lf8/p;->r:B

    return v2

    :cond_3
    iput-byte v1, p0, Lf8/p;->r:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->f:Lf8/x3;

    const-class v0, Lf8/p;

    const-class v1, Lf8/o;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Lf8/p;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget p0, p0, Lf8/p;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Lf8/o;
    .locals 2

    sget-object v0, Lf8/p;->s:Lf8/p;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/o;

    invoke-direct {p0, v1}, Lf8/l3;-><init>(Lf8/m3;)V

    return-object p0

    :cond_0
    new-instance v0, Lf8/o;

    invoke-direct {v0, v1}, Lf8/l3;-><init>(Lf8/m3;)V

    invoke-virtual {v0, p0}, Lf8/o;->T(Lf8/p;)Lf8/o;

    return-object v0
.end method
