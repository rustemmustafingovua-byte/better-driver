.class public final Lj1/b;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/l1;
.implements Lj1/a;
.implements Le2/n;


# instance fields
.field public A:Z

.field public B:Li9/c;

.field public final z:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lj1/b;->z:Lj1/c;

    iput-object p2, p0, Lj1/b;->B:Li9/c;

    iput-object p0, p1, Lj1/c;->l:Lj1/a;

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 0

    return-void
.end method

.method public final G0()V
    .locals 0

    invoke-virtual {p0}, Lj1/b;->M0()V

    return-void
.end method

.method public final K()V
    .locals 0

    invoke-virtual {p0}, Lj1/b;->M0()V

    return-void
.end method

.method public final M0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj1/b;->A:Z

    iget-object v0, p0, Lj1/b;->z:Lj1/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lj1/c;->m:Lb0/l1;

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    return-void
.end method

.method public final O()V
    .locals 0

    invoke-virtual {p0}, Lj1/b;->M0()V

    return-void
.end method

.method public final a()Lb3/c;
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    return-object p0
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lj1/b;->M0()V

    return-void
.end method

.method public final d()J
    .locals 2

    const/4 v0, 0x4

    invoke-static {p0, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    iget-wide v0, p0, Lc2/f1;->n:J

    invoke-static {v0, v1}, Ly4/s;->E(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d0()V
    .locals 0

    invoke-virtual {p0}, Lj1/b;->M0()V

    return-void
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->L:Lb3/m;

    return-object p0
.end method

.method public final z(Le2/j0;)V
    .locals 3

    iget-boolean v0, p0, Lj1/b;->A:Z

    iget-object v1, p0, Lj1/b;->z:Lj1/c;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v1, Lj1/c;->m:Lb0/l1;

    new-instance v0, Ld5/a;

    const/16 v2, 0x8

    invoke-direct {v0, v2, p0, v1}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object v0, v1, Lj1/c;->m:Lb0/l1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj1/b;->A:Z

    goto :goto_0

    :cond_0
    const-string p0, "DrawResult not defined, did you forget to call onDraw?"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, v1, Lj1/c;->m:Lb0/l1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
