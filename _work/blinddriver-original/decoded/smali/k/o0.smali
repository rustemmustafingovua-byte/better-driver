.class public final Lk/o0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:Lk/k0;

.field public n:Lk/p0;

.field public o:[J

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lk/p0;

.field public final synthetic x:Lk/k0;


# direct methods
.method public constructor <init>(Lk/p0;Lk/k0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lk/o0;->w:Lk/p0;

    iput-object p2, p0, Lk/o0;->x:Lk/k0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Lk/o0;

    iget-object v1, p0, Lk/o0;->w:Lk/p0;

    iget-object p0, p0, Lk/o0;->x:Lk/k0;

    invoke-direct {v0, v1, p0, p2}, Lk/o0;-><init>(Lk/p0;Lk/k0;Ly8/c;)V

    iput-object p1, v0, Lk/o0;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lk/o0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lk/o0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lk/o0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lk/o0;->u:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v0, Lk/o0;->s:I

    iget v6, v0, Lk/o0;->r:I

    iget-wide v7, v0, Lk/o0;->t:J

    iget v9, v0, Lk/o0;->q:I

    iget v10, v0, Lk/o0;->p:I

    iget-object v11, v0, Lk/o0;->o:[J

    iget-object v12, v0, Lk/o0;->n:Lk/p0;

    iget-object v13, v0, Lk/o0;->m:Lk/k0;

    iget-object v14, v0, Lk/o0;->v:Ljava/lang/Object;

    check-cast v14, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lk/o0;->v:Ljava/lang/Object;

    check-cast v2, Lq9/i;

    iget-object v6, v0, Lk/o0;->w:Lk/p0;

    iget-object v7, v6, Lk/p0;->m:Lk/n0;

    iget-object v7, v7, Lk/n0;->a:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_5

    iget-object v9, v0, Lk/o0;->x:Lk/k0;

    move v10, v3

    :goto_0
    aget-wide v11, v7, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    move-object v14, v2

    move v2, v3

    move-wide/from16 v19, v11

    move-object v12, v6

    move-object v11, v7

    move v6, v13

    move-object v13, v9

    move v9, v10

    move v10, v8

    move-wide/from16 v7, v19

    :goto_1
    if-ge v2, v6, :cond_3

    const-wide/16 v15, 0xff

    and-long/2addr v15, v7

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_2

    shl-int/lit8 v3, v9, 0x3

    add-int/2addr v3, v2

    iput v3, v13, Lk/k0;->m:I

    iget-object v4, v12, Lk/p0;->m:Lk/n0;

    iget-object v4, v4, Lk/n0;->b:[Ljava/lang/Object;

    aget-object v3, v4, v3

    iput-object v14, v0, Lk/o0;->v:Ljava/lang/Object;

    iput-object v13, v0, Lk/o0;->m:Lk/k0;

    iput-object v12, v0, Lk/o0;->n:Lk/p0;

    iput-object v11, v0, Lk/o0;->o:[J

    iput v10, v0, Lk/o0;->p:I

    iput v9, v0, Lk/o0;->q:I

    iput-wide v7, v0, Lk/o0;->t:J

    iput v6, v0, Lk/o0;->r:I

    iput v2, v0, Lk/o0;->s:I

    iput v5, v0, Lk/o0;->u:I

    invoke-virtual {v14, v3, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    return-object v1

    :cond_2
    :goto_2
    shr-long/2addr v7, v4

    add-int/2addr v2, v5

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_5

    move v8, v10

    move-object v7, v11

    move-object v6, v12

    move-object v2, v14

    move v10, v9

    move-object v9, v13

    :cond_4
    if-eq v10, v8, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
