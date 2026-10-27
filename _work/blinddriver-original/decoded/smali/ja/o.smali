.class public final Lja/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lia/j;Lja/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lja/o;->c:Ljava/lang/Object;

    .line 3
    iget-boolean p1, p1, Lia/j;->c:Z

    .line 4
    iput-boolean p1, p0, Lja/o;->b:Z

    return-void
.end method

.method public constructor <init>(Lpb/a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lja/o;->a:I

    .line 7
    iput-boolean v0, p0, Lja/o;->b:Z

    .line 8
    iput-object p1, p0, Lja/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lja/o;Lt8/b;La9/a;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lja/o;->c:Ljava/lang/Object;

    check-cast v0, Lja/s;

    instance-of v1, p2, Lja/n;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lja/n;

    iget v2, v1, Lja/n;->s:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lja/n;->s:I

    goto :goto_0

    :cond_0
    new-instance v1, Lja/n;

    invoke-direct {v1, p0, p2}, Lja/n;-><init>(Lja/o;La9/a;)V

    :goto_0
    iget-object p2, v1, Lja/n;->q:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lja/n;->s:I

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v3, :cond_4

    if-ne v3, v9, :cond_3

    iget p0, v1, Lja/n;->p:I

    iget-object p1, v1, Lja/n;->o:Ljava/lang/String;

    iget-object v0, v1, Lja/n;->n:Ljava/util/LinkedHashMap;

    iget-object v3, v1, Lja/n;->m:Lja/o;

    iget-object v10, v1, Lja/n;->l:Lt8/b;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    check-cast p2, Lia/l;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v3, Lja/o;->c:Ljava/lang/Object;

    check-cast p1, Lja/s;

    invoke-virtual {p1}, Lja/s;->e()B

    move-result p1

    if-eq p1, v8, :cond_2

    if-ne p1, v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object p0, v3, Lja/o;->c:Ljava/lang/Object;

    check-cast p0, Lja/s;

    const-string p1, "Expected end of the object or comma"

    invoke-static {p0, p1, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4

    :cond_2
    move v6, p0

    move-object p0, v3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lja/s;->f(B)B

    move-result p2

    invoke-virtual {v0}, Lja/s;->p()B

    move-result v3

    if-eq v3, v8, :cond_9

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, p1

    move p1, p2

    :goto_1
    iget-object p2, p0, Lja/o;->c:Ljava/lang/Object;

    check-cast p2, Lja/s;

    invoke-virtual {p2}, Lja/s;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean p1, p0, Lja/o;->b:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lja/s;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lja/s;->i()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Lja/s;->f(B)B

    iput-object v10, v1, Lja/n;->l:Lt8/b;

    iput-object p0, v1, Lja/n;->m:Lja/o;

    iput-object v0, v1, Lja/n;->n:Ljava/util/LinkedHashMap;

    iput-object p1, v1, Lja/n;->o:Ljava/lang/String;

    iput v6, v1, Lja/n;->p:I

    iput v9, v1, Lja/n;->s:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v10, Lt8/b;->m:Ly8/c;

    return-object v2

    :cond_6
    move-object v3, p0

    :goto_3
    iget-object p0, v3, Lja/o;->c:Ljava/lang/Object;

    check-cast p0, Lja/s;

    if-ne p1, v5, :cond_7

    invoke-virtual {p0, v7}, Lja/s;->f(B)B

    goto :goto_4

    :cond_7
    if-eq p1, v8, :cond_8

    :goto_4
    new-instance p0, Lia/y;

    invoke-direct {p0, v0}, Lia/y;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_8
    const-string p1, "object"

    invoke-static {p0, p1}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    throw v4

    :cond_9
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v6, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4
.end method


# virtual methods
.method public b(Lpb/a;Lpb/a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v1, Lpb/a;->l:D

    iget-object v5, v0, Lja/o;->c:Ljava/lang/Object;

    check-cast v5, Lpb/a;

    iget-wide v6, v5, Lpb/a;->l:D

    cmpg-double v8, v3, v6

    if-gez v8, :cond_0

    iget-wide v8, v2, Lpb/a;->l:D

    cmpg-double v8, v8, v6

    if-gez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v8, v2, Lpb/a;->l:D

    cmpl-double v10, v6, v8

    const/4 v11, 0x1

    if-nez v10, :cond_1

    iget-wide v12, v5, Lpb/a;->m:D

    iget-wide v14, v2, Lpb/a;->m:D

    cmpl-double v10, v12, v14

    if-nez v10, :cond_1

    iput-boolean v11, v0, Lja/o;->b:Z

    return-void

    :cond_1
    iget-wide v12, v1, Lpb/a;->m:D

    iget-wide v14, v5, Lpb/a;->m:D

    cmpl-double v10, v12, v14

    move-wide/from16 v16, v12

    if-nez v10, :cond_3

    iget-wide v11, v2, Lpb/a;->m:D

    cmpl-double v11, v11, v14

    if-nez v11, :cond_3

    cmpl-double v1, v3, v8

    if-lez v1, :cond_2

    move-wide/from16 v18, v8

    move-wide v8, v3

    move-wide/from16 v3, v18

    :cond_2
    cmpl-double v1, v6, v3

    if-ltz v1, :cond_8

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_8

    const/4 v10, 0x1

    iput-boolean v10, v0, Lja/o;->b:Z

    return-void

    :cond_3
    cmpl-double v3, v16, v14

    if-lez v3, :cond_4

    iget-wide v3, v2, Lpb/a;->m:D

    cmpg-double v3, v3, v14

    if-lez v3, :cond_5

    :cond_4
    iget-wide v3, v2, Lpb/a;->m:D

    cmpl-double v3, v3, v14

    if-lez v3, :cond_8

    cmpg-double v3, v16, v14

    if-gtz v3, :cond_8

    :cond_5
    invoke-static {v1, v2, v5}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v10, 0x1

    iput-boolean v10, v0, Lja/o;->b:Z

    return-void

    :cond_6
    const/4 v10, 0x1

    iget-wide v4, v2, Lpb/a;->m:D

    iget-wide v1, v1, Lpb/a;->m:D

    cmpg-double v1, v4, v1

    if-gez v1, :cond_7

    neg-int v3, v3

    :cond_7
    if-ne v3, v10, :cond_8

    iget v1, v0, Lja/o;->a:I

    add-int/2addr v1, v10

    iput v1, v0, Lja/o;->a:I

    :cond_8
    :goto_0
    return-void
.end method

.method public c()Lia/l;
    .locals 9

    iget-object v0, p0, Lja/o;->c:Ljava/lang/Object;

    check-cast v0, Lja/s;

    invoke-virtual {v0}, Lja/s;->p()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lja/o;->e(Z)Lia/d0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lja/o;->e(Z)Lia/d0;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v1, v4, :cond_d

    iget v1, p0, Lja/o;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lja/o;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    new-instance v0, Lja/m;

    invoke-direct {v0, p0, v5}, Lja/m;-><init>(Lja/o;Ly8/c;)V

    sget-object v1, Lt8/a;->a:Lz8/a;

    new-instance v1, Lt8/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lt8/b;->l:Lja/m;

    iput-object v1, v1, Lt8/b;->m:Ly8/c;

    sget-object v2, Lt8/a;->a:Lz8/a;

    iput-object v2, v1, Lt8/b;->n:Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v0, v1, Lt8/b;->n:Ljava/lang/Object;

    iget-object v3, v1, Lt8/b;->m:Ly8/c;

    if-nez v3, :cond_3

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    check-cast v0, Lia/l;

    goto/16 :goto_4

    :cond_3
    invoke-static {v2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v0, v1, Lt8/b;->l:Lja/m;

    const/4 v4, 0x3

    invoke-static {v4, v0}, Lj9/b0;->b(ILjava/lang/Object;)V

    new-instance v4, Lja/m;

    iget-object v0, v0, Lja/m;->o:Lja/o;

    invoke-direct {v4, v0, v3}, Lja/m;-><init>(Lja/o;Ly8/c;)V

    iput-object v1, v4, Lja/m;->n:Lt8/b;

    sget-object v0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v4, v0}, Lja/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lz8/a;->l:Lz8/a;

    if-eq v0, v4, :cond_2

    invoke-interface {v3, v0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    invoke-interface {v3, v0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iput-object v2, v1, Lt8/b;->n:Ljava/lang/Object;

    invoke-interface {v3, v0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Lja/s;->f(B)B

    move-result v1

    invoke-virtual {v0}, Lja/s;->p()B

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_c

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    invoke-virtual {v0}, Lja/s;->b()Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_9

    iget-boolean v1, p0, Lja/o;->b:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lja/s;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lja/s;->i()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lja/s;->f(B)B

    invoke-virtual {p0}, Lja/o;->c()Lia/l;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lja/s;->e()B

    move-result v1

    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_8

    goto :goto_2

    :cond_8
    const-string p0, "Expected end of the object or comma"

    invoke-static {v0, p0, v3, v4}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v5

    :cond_9
    :goto_2
    if-ne v1, v4, :cond_a

    invoke-virtual {v0, v8}, Lja/s;->f(B)B

    goto :goto_3

    :cond_a
    if-eq v1, v6, :cond_b

    :goto_3
    new-instance v0, Lia/y;

    invoke-direct {v0, v2}, Lia/y;-><init>(Ljava/util/Map;)V

    :goto_4
    iget v1, p0, Lja/o;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lja/o;->a:I

    return-object v0

    :cond_b
    const-string p0, "object"

    invoke-static {v0, p0}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    throw v5

    :cond_c
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v3, v4}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v5

    :cond_d
    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    invoke-virtual {p0}, Lja/o;->d()Lia/e;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {v1}, Lja/k;->l(B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot read Json element because of unexpected "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3, v4}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v5
.end method

.method public d()Lia/e;
    .locals 8

    iget-object v0, p0, Lja/o;->c:Ljava/lang/Object;

    check-cast v0, Lja/s;

    invoke-virtual {v0}, Lja/s;->e()B

    move-result v1

    invoke-virtual {v0}, Lja/s;->p()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lja/s;->b()Z

    move-result v6

    const/16 v7, 0x9

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lja/o;->c()Lia/l;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lja/s;->e()B

    move-result v1

    if-eq v1, v5, :cond_0

    if-ne v1, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget v7, v0, Lja/s;->a:I

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Expected end of the array or comma"

    invoke-static {v0, p0, v7, v5}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4

    :cond_3
    const/16 p0, 0x8

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v7}, Lja/s;->f(B)B

    goto :goto_2

    :cond_4
    if-eq v1, v5, :cond_5

    :goto_2
    new-instance p0, Lia/e;

    invoke-direct {p0, v2}, Lia/e;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    const-string p0, "array"

    invoke-static {v0, p0}, Lja/k;->g(Lja/s;Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p0, "Unexpected leading comma"

    const/4 v1, 0x6

    invoke-static {v0, p0, v3, v1}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v4
.end method

.method public e(Z)Lia/d0;
    .locals 1

    iget-object v0, p0, Lja/o;->c:Ljava/lang/Object;

    check-cast v0, Lja/s;

    iget-boolean p0, p0, Lja/o;->b:Z

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lja/s;->i()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lja/s;->j()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_2

    const-string v0, "null"

    invoke-static {p0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lia/v;->INSTANCE:Lia/v;

    return-object p0

    :cond_2
    new-instance v0, Lia/s;

    invoke-direct {v0, p0, p1}, Lia/s;-><init>(Ljava/io/Serializable;Z)V

    return-object v0
.end method
