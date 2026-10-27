.class public final Ld1/l;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:[J

.field public n:I

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ld1/m;


# direct methods
.method public constructor <init>(Ld1/m;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Ld1/l;->r:Ld1/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Ld1/l;

    iget-object p0, p0, Ld1/l;->r:Ld1/m;

    invoke-direct {v0, p0, p2}, Ld1/l;-><init>(Ld1/m;Ly8/c;)V

    iput-object p1, v0, Ld1/l;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Ld1/l;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ld1/l;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ld1/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Ld1/l;->r:Ld1/m;

    iget-wide v2, v1, Ld1/m;->l:J

    iget-wide v4, v1, Ld1/m;->n:J

    iget-wide v6, v1, Ld1/m;->m:J

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v9, v0, Ld1/l;->p:I

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/16 v15, 0x40

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x1

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v14, :cond_1

    if-ne v9, v13, :cond_0

    iget v1, v0, Ld1/l;->n:I

    iget-object v6, v0, Ld1/l;->q:Ljava/lang/Object;

    check-cast v6, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move v7, v13

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, v0, Ld1/l;->n:I

    iget-object v9, v0, Ld1/l;->q:Ljava/lang/Object;

    check-cast v9, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v1, v0, Ld1/l;->o:I

    iget v9, v0, Ld1/l;->n:I

    iget-object v12, v0, Ld1/l;->m:[J

    iget-object v13, v0, Ld1/l;->q:Ljava/lang/Object;

    check-cast v13, Lq9/i;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    add-int/2addr v9, v11

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v9, v0, Ld1/l;->q:Ljava/lang/Object;

    move-object v13, v9

    check-cast v13, Lq9/i;

    iget-object v12, v1, Ld1/m;->o:[J

    if-eqz v12, :cond_4

    array-length v1, v12

    move/from16 v9, v16

    :goto_0
    if-ge v9, v1, :cond_4

    aget-wide v2, v12, v9

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v13, v0, Ld1/l;->q:Ljava/lang/Object;

    iput-object v12, v0, Ld1/l;->m:[J

    iput v9, v0, Ld1/l;->n:I

    iput v1, v0, Ld1/l;->o:I

    iput v11, v0, Ld1/l;->p:I

    invoke-virtual {v13, v4, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    return-object v8

    :cond_4
    cmp-long v1, v6, v17

    if-eqz v1, :cond_7

    move-object v9, v13

    move/from16 v1, v16

    :goto_1
    if-ge v1, v15, :cond_6

    shl-long v12, v19, v1

    and-long/2addr v12, v6

    cmp-long v12, v12, v17

    if-eqz v12, :cond_5

    int-to-long v2, v1

    add-long/2addr v4, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v9, v0, Ld1/l;->q:Ljava/lang/Object;

    iput-object v10, v0, Ld1/l;->m:[J

    iput v1, v0, Ld1/l;->n:I

    iput v14, v0, Ld1/l;->p:I

    invoke-virtual {v9, v2, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    return-object v8

    :cond_5
    :goto_2
    add-int/2addr v1, v11

    goto :goto_1

    :cond_6
    move-object v13, v9

    :cond_7
    cmp-long v1, v2, v17

    if-eqz v1, :cond_9

    move-object v6, v13

    move/from16 v1, v16

    :goto_3
    if-ge v1, v15, :cond_9

    shl-long v12, v19, v1

    and-long/2addr v12, v2

    cmp-long v7, v12, v17

    if-eqz v7, :cond_8

    int-to-long v2, v1

    add-long/2addr v4, v2

    int-to-long v2, v15

    add-long/2addr v4, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v6, v0, Ld1/l;->q:Ljava/lang/Object;

    iput-object v10, v0, Ld1/l;->m:[J

    iput v1, v0, Ld1/l;->n:I

    const/4 v7, 0x3

    iput v7, v0, Ld1/l;->p:I

    invoke-virtual {v6, v2, v0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object v0, Lz8/a;->l:Lz8/a;

    return-object v8

    :cond_8
    const/4 v7, 0x3

    :goto_4
    add-int/2addr v1, v11

    goto :goto_3

    :cond_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
