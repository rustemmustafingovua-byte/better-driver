.class public final Lc2/i0;
.super Le2/d0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lc2/n0;

.field public final synthetic c:Li9/e;


# direct methods
.method public constructor <init>(Lc2/n0;Li9/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc2/i0;->b:Lc2/n0;

    iput-object p2, p0, Lc2/i0;->c:Li9/e;

    invoke-direct {p0, p3}, Le2/d0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 6

    iget-object v2, p0, Lc2/i0;->b:Lc2/n0;

    iget-object p2, v2, Lc2/n0;->s:Lc2/g0;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v0

    iput-object v0, p2, Lc2/g0;->l:Lb3/m;

    invoke-interface {p1}, Lb3/c;->a()F

    move-result v0

    iput v0, p2, Lc2/g0;->m:F

    invoke-interface {p1}, Lb3/c;->S()F

    move-result v0

    iput v0, p2, Lc2/g0;->n:F

    invoke-interface {p1}, Lc2/p;->T()Z

    move-result p1

    iget-object p0, p0, Lc2/i0;->c:Li9/e;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, v2, Lc2/n0;->l:Le2/g0;

    iget-object p1, p1, Le2/g0;->t:Le2/g0;

    if-eqz p1, :cond_0

    iput v0, v2, Lc2/n0;->p:I

    iget-object p1, v2, Lc2/n0;->t:Lc2/d0;

    new-instance p2, Lb3/a;

    invoke-direct {p2, p3, p4}, Lb3/a;-><init>(J)V

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lc2/s0;

    iget v3, v2, Lc2/n0;->p:I

    new-instance v0, Lc2/h0;

    const/4 v5, 0x0

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lc2/h0;-><init>(Lc2/s0;Lc2/n0;ILc2/s0;I)V

    return-object v0

    :cond_0
    iput v0, v2, Lc2/n0;->o:I

    new-instance p1, Lb3/a;

    invoke-direct {p1, p3, p4}, Lb3/a;-><init>(J)V

    invoke-interface {p0, p2, p1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lc2/s0;

    iget v3, v2, Lc2/n0;->o:I

    new-instance v0, Lc2/h0;

    const/4 v5, 0x1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lc2/h0;-><init>(Lc2/s0;Lc2/n0;ILc2/s0;I)V

    return-object v0
.end method
