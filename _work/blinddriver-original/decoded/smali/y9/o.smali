.class public final Ly9/o;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lw9/i;

.field public m:[B

.field public n:I

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:[Lx9/g;

.field public final synthetic s:Li9/a;

.field public final synthetic t:La9/i;

.field public final synthetic u:Lx9/h;


# direct methods
.method public constructor <init>(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)V
    .locals 0

    iput-object p5, p0, Ly9/o;->r:[Lx9/g;

    iput-object p1, p0, Ly9/o;->s:Li9/a;

    check-cast p2, La9/i;

    iput-object p2, p0, Ly9/o;->t:La9/i;

    iput-object p3, p0, Ly9/o;->u:Lx9/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Ly9/o;

    iget-object v2, p0, Ly9/o;->t:La9/i;

    iget-object v3, p0, Ly9/o;->u:Lx9/h;

    iget-object v1, p0, Ly9/o;->s:Li9/a;

    iget-object v5, p0, Ly9/o;->r:[Lx9/g;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ly9/o;-><init>(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)V

    iput-object p1, v0, Ly9/o;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Ly9/o;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ly9/o;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly9/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ly9/c;->c:Lmb/s2;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v0, Ly9/o;->p:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v3, v0, Ly9/o;->o:I

    iget v8, v0, Ly9/o;->n:I

    iget-object v9, v0, Ly9/o;->m:[B

    iget-object v10, v0, Ly9/o;->l:Lw9/i;

    iget-object v11, v0, Ly9/o;->q:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v18, v11

    move v11, v3

    move-object v3, v9

    move-object/from16 v9, v18

    goto :goto_2

    :cond_2
    iget v3, v0, Ly9/o;->o:I

    iget v8, v0, Ly9/o;->n:I

    iget-object v9, v0, Ly9/o;->m:[B

    iget-object v10, v0, Ly9/o;->l:Lw9/i;

    iget-object v11, v0, Ly9/o;->q:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    check-cast v12, Lw9/l;

    iget-object v12, v12, Lw9/l;->a:Ljava/lang/Object;

    move-object/from16 v18, v11

    move v11, v3

    move-object v3, v9

    move-object/from16 v9, v18

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Ly9/o;->q:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    iget-object v8, v0, Ly9/o;->r:[Lx9/g;

    array-length v8, v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4, v8, v1, v9}, Lu8/l;->p0(IILjava/lang/Object;[Ljava/lang/Object;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v16

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v15, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v14, v4

    :goto_1
    if-ge v14, v8, :cond_5

    new-instance v12, Ly9/n;

    iget-object v13, v0, Ly9/o;->r:[Lx9/g;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Ly9/n;-><init>([Lx9/g;ILjava/util/concurrent/atomic/AtomicInteger;Lw9/e;Ly8/c;)V

    invoke-static {v3, v11, v11, v12, v5}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    new-array v3, v8, [B

    move v11, v4

    move-object/from16 v10, v16

    :cond_6
    :goto_2
    add-int/2addr v11, v7

    int-to-byte v11, v11

    iput-object v9, v0, Ly9/o;->q:Ljava/lang/Object;

    iput-object v10, v0, Ly9/o;->l:Lw9/i;

    iput-object v3, v0, Ly9/o;->m:[B

    iput v8, v0, Ly9/o;->n:I

    iput v11, v0, Ly9/o;->o:I

    iput v7, v0, Ly9/o;->p:I

    invoke-interface {v10, v0}, Lw9/t;->a(Ly9/o;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_7

    goto :goto_5

    :cond_7
    :goto_3
    invoke-static {v12}, Lw9/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lu8/u;

    if-nez v12, :cond_8

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_8
    iget v13, v12, Lu8/u;->a:I

    aget-object v14, v9, v13

    iget-object v12, v12, Lu8/u;->b:Ljava/lang/Object;

    aput-object v12, v9, v13

    if-ne v14, v1, :cond_9

    add-int/lit8 v8, v8, -0x1

    :cond_9
    aget-byte v12, v3, v13

    if-eq v12, v11, :cond_a

    int-to-byte v12, v11

    aput-byte v12, v3, v13

    invoke-interface {v10}, Lw9/t;->g()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lw9/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lu8/u;

    if-nez v12, :cond_8

    :cond_a
    if-nez v8, :cond_6

    iget-object v12, v0, Ly9/o;->s:Li9/a;

    invoke-interface {v12}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    iget-object v13, v0, Ly9/o;->u:Lx9/h;

    iget-object v14, v0, Ly9/o;->t:La9/i;

    if-nez v12, :cond_b

    iput-object v9, v0, Ly9/o;->q:Ljava/lang/Object;

    iput-object v10, v0, Ly9/o;->l:Lw9/i;

    iput-object v3, v0, Ly9/o;->m:[B

    iput v8, v0, Ly9/o;->n:I

    iput v11, v0, Ly9/o;->o:I

    iput v6, v0, Ly9/o;->p:I

    invoke-interface {v14, v13, v9, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_6

    goto :goto_5

    :cond_b
    const/16 v15, 0xe

    invoke-static {v9, v12, v4, v4, v15}, Lu8/l;->m0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput-object v9, v0, Ly9/o;->q:Ljava/lang/Object;

    iput-object v10, v0, Ly9/o;->l:Lw9/i;

    iput-object v3, v0, Ly9/o;->m:[B

    iput v8, v0, Ly9/o;->n:I

    iput v11, v0, Ly9/o;->o:I

    iput v5, v0, Ly9/o;->p:I

    invoke-interface {v14, v13, v12, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_6

    :goto_5
    return-object v2
.end method
