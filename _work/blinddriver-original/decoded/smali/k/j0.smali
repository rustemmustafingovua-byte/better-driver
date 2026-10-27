.class public final Lk/j0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:Lk/k0;

.field public n:Lk/l0;

.field public o:[J

.field public p:I

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lk/l0;

.field public final synthetic t:Lk/k0;


# direct methods
.method public constructor <init>(Lk/l0;Lk/k0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lk/j0;->s:Lk/l0;

    iput-object p2, p0, Lk/j0;->t:Lk/k0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Lk/j0;

    iget-object v1, p0, Lk/j0;->s:Lk/l0;

    iget-object p0, p0, Lk/j0;->t:Lk/k0;

    invoke-direct {v0, v1, p0, p2}, Lk/j0;-><init>(Lk/l0;Lk/k0;Ly8/c;)V

    iput-object p1, v0, Lk/j0;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lk/j0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lk/j0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lk/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lk/j0;->q:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lk/j0;->p:I

    iget-object v3, p0, Lk/j0;->o:[J

    iget-object v4, p0, Lk/j0;->n:Lk/l0;

    iget-object v5, p0, Lk/j0;->m:Lk/k0;

    iget-object v6, p0, Lk/j0;->r:Ljava/lang/Object;

    check-cast v6, Lq9/i;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lk/j0;->r:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lq9/i;

    iget-object v4, p0, Lk/j0;->s:Lk/l0;

    iget-object p1, v4, Lk/l0;->m:Lk/i0;

    iget-object v3, p1, Lk/i0;->c:[J

    iget v1, p1, Lk/i0;->e:I

    iget-object v5, p0, Lk/j0;->t:Lk/k0;

    :goto_0
    const p1, 0x7fffffff

    if-eq v1, p1, :cond_2

    aget-wide v7, v3, v1

    const/16 p1, 0x1f

    shr-long/2addr v7, p1

    const-wide/32 v9, 0x7fffffff

    and-long/2addr v7, v9

    long-to-int p1, v7

    iput v1, v5, Lk/k0;->m:I

    iget-object v7, v4, Lk/l0;->m:Lk/i0;

    iget-object v7, v7, Lk/i0;->b:[Ljava/lang/Object;

    aget-object v1, v7, v1

    iput-object v6, p0, Lk/j0;->r:Ljava/lang/Object;

    iput-object v5, p0, Lk/j0;->m:Lk/k0;

    iput-object v4, p0, Lk/j0;->n:Lk/l0;

    iput-object v3, p0, Lk/j0;->o:[J

    iput p1, p0, Lk/j0;->p:I

    iput v2, p0, Lk/j0;->q:I

    invoke-virtual {v6, v1, p0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    return-object v0

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
