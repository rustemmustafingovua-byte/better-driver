.class public final Lm1/l;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/z1;


# instance fields
.field public z:Li9/c;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lm1/l;->z:Li9/c;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v0

    iget-boolean v1, v0, Le2/h1;->Q:Z

    if-nez v1, :cond_2

    sget-object v1, Lm1/v;->a:Lm1/f0;

    if-nez v1, :cond_0

    new-instance v1, Lm1/f0;

    invoke-direct {v1}, Lm1/f0;-><init>()V

    sput-object v1, Lm1/v;->a:Lm1/f0;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lm1/f0;->b()V

    :goto_0
    sget-object v1, Lm1/v;->a:Lm1/f0;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v2, v0, Le2/h1;->z:Le2/g0;

    iget-object v2, v2, Le2/g0;->K:Lb3/c;

    iput-object v2, v1, Lm1/f0;->A:Lb3/c;

    iget-wide v2, v0, Lc2/f1;->n:J

    invoke-static {v2, v3}, Ly4/s;->E(J)J

    move-result-wide v2

    iput-wide v2, v1, Lm1/f0;->z:J

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld1/g;->e()Li9/c;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v3

    :try_start_0
    iget-object p0, p0, Lm1/l;->z:Li9/c;

    invoke-interface {p0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iget-object p0, v1, Lm1/f0;->w:Lm1/h0;

    iget-boolean v0, v1, Lm1/f0;->x:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v0, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0

    :cond_2
    iget-object p0, v0, Le2/h1;->O:Lm1/h0;

    iget-boolean v0, v0, Le2/h1;->P:Z

    :goto_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p0}, Lm2/v;->d(Lm2/x;Lm1/h0;)V

    return-void
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 2

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget p3, p2, Lc2/f1;->l:I

    iget p4, p2, Lc2/f1;->m:I

    new-instance v0, Lc5/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p2, p0}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p3, p4, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlockGraphicsLayerModifier(block="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lm1/l;->z:Li9/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
