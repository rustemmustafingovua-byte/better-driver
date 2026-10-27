.class public final Lmc/b0;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final v:Lmc/b0;

.field public static final w:Lmc/z;


# instance fields
.field public n:I

.field public o:J

.field public p:Lf8/c4;

.field public q:Lf8/c4;

.field public r:Lmc/y;

.field public s:J

.field public t:J

.field public u:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/b0;

    invoke-direct {v0}, Lmc/b0;-><init>()V

    sput-object v0, Lmc/b0;->v:Lmc/b0;

    new-instance v0, Lmc/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/b0;->w:Lmc/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/b0;->u:B

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lmc/b0;->p:Lf8/c4;

    iput-object v0, p0, Lmc/b0;->q:Lf8/c4;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/b0;->v:Lmc/b0;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/b0;->v:Lmc/b0;

    invoke-virtual {p0}, Lmc/b0;->z()Lmc/a0;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lmc/b0;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/b0;

    invoke-virtual {p0}, Lmc/b0;->v()Z

    move-result v0

    invoke-virtual {p1}, Lmc/b0;->v()Z

    move-result v1

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lmc/b0;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lmc/b0;->o:J

    iget-wide v2, p1, Lmc/b0;->o:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lmc/b0;->p:Lf8/c4;

    iget-object v1, p1, Lmc/b0;->p:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lmc/b0;->q:Lf8/c4;

    iget-object v1, p1, Lmc/b0;->q:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lmc/b0;->w()Z

    move-result v0

    invoke-virtual {p1}, Lmc/b0;->w()Z

    move-result v1

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lmc/b0;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmc/b0;->r:Lmc/y;

    if-nez v0, :cond_7

    sget-object v0, Lmc/y;->v:Lmc/y;

    :cond_7
    iget-object v1, p1, Lmc/b0;->r:Lmc/y;

    if-nez v1, :cond_8

    sget-object v1, Lmc/y;->v:Lmc/y;

    :cond_8
    invoke-virtual {v0, v1}, Lmc/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lmc/b0;->x()Z

    move-result v0

    invoke-virtual {p1}, Lmc/b0;->x()Z

    move-result v1

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lmc/b0;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lmc/b0;->s:J

    iget-wide v2, p1, Lmc/b0;->s:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lmc/b0;->y()Z

    move-result v0

    invoke-virtual {p1}, Lmc/b0;->y()Z

    move-result v1

    if-eq v0, v1, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lmc/b0;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lmc/b0;->t:J

    iget-wide v2, p1, Lmc/b0;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/b0;->z()Lmc/a0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->q:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lmc/b0;->v()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/b0;->o:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lmc/b0;->p:Lf8/c4;

    move-object v4, v1

    check-cast v4, Lf8/z3;

    iget v4, v4, Lf8/z3;->n:I

    if-lez v4, :cond_2

    const/4 v4, 0x2

    invoke-static {v0, v3, v4, v2}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lmc/b0;->q:Lf8/c4;

    move-object v4, v1

    check-cast v4, Lf8/z3;

    iget v4, v4, Lf8/z3;->n:I

    if-lez v4, :cond_3

    const/4 v4, 0x3

    invoke-static {v0, v3, v4, v2}, La6/q;->b(IIII)I

    move-result v0

    check-cast v1, Lf8/z3;

    invoke-virtual {v1}, Lf8/z3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lmc/b0;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lmc/b0;->r:Lmc/y;

    if-nez v1, :cond_4

    sget-object v1, Lmc/y;->v:Lmc/y;

    :cond_4
    invoke-virtual {v1}, Lmc/y;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lmc/b0;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/b0;->s:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lmc/b0;->y()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v1, p0, Lmc/b0;->t:J

    invoke-static {v1, v2}, Lf8/f4;->b(J)I

    move-result v1

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
    .locals 3

    iget-byte v0, p0, Lmc/b0;->u:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lmc/b0;->v()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lmc/b0;->u:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lmc/b0;->x()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lmc/b0;->u:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lmc/b0;->y()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lmc/b0;->u:B

    return v2

    :cond_4
    iput-byte v1, p0, Lmc/b0;->u:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->r:Lf8/x3;

    const-class v0, Lmc/b0;

    const-class v1, Lmc/a0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 1

    iget p0, p0, Lmc/b0;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget p0, p0, Lmc/b0;->n:I

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

    iget p0, p0, Lmc/b0;->n:I

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

    iget p0, p0, Lmc/b0;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Lmc/a0;
    .locals 1

    sget-object v0, Lmc/b0;->v:Lmc/b0;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/a0;

    invoke-direct {p0}, Lmc/a0;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/a0;

    invoke-direct {v0}, Lmc/a0;-><init>()V

    invoke-virtual {v0, p0}, Lmc/a0;->S(Lmc/b0;)V

    return-object v0
.end method
