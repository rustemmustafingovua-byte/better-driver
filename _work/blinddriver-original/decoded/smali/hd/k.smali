.class public final Lhd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/a1;

.field public final b:La1/b;

.field public final c:Lb0/k0;

.field public final d:Li9/c;

.field public final e:Li9/c;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a1;La1/b;Lb0/k0;Lb0/a;Lsc/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/k;->a:Landroidx/lifecycle/a1;

    iput-object p2, p0, Lhd/k;->b:La1/b;

    iput-object p3, p0, Lhd/k;->c:Lb0/k0;

    iput-object p4, p0, Lhd/k;->d:Li9/c;

    iput-object p5, p0, Lhd/k;->e:Li9/c;

    iput-object p6, p0, Lhd/k;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lhd/g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lhd/g;

    iget v1, v0, Lhd/g;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhd/g;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lhd/g;

    invoke-direct {v0, p0, p3}, Lhd/g;-><init>(Lhd/k;La9/c;)V

    :goto_0
    iget-object p3, v0, Lhd/g;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lhd/g;->o:I

    iget-object p0, p0, Lhd/k;->a:Landroidx/lifecycle/a1;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p1, v0, Lhd/g;->l:J

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\r"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-wide p1, v0, Lhd/g;->l:J

    iput v4, v0, Lhd/g;->o:I

    invoke-virtual {p0, p3, v0}, Landroidx/lifecycle/a1;->H(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iput-wide p1, v0, Lhd/g;->l:J

    iput v3, v0, Lhd/g;->o:I

    invoke-virtual {p0, p1, p2, v0}, Landroidx/lifecycle/a1;->D(JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0
.end method

.method public final b(La9/c;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lhd/h;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lhd/h;

    iget v3, v2, Lhd/h;->r:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lhd/h;->r:I

    goto :goto_0

    :cond_0
    new-instance v2, Lhd/h;

    invoke-direct {v2, v1, v0}, Lhd/h;-><init>(Lhd/k;La9/c;)V

    :goto_0
    iget-object v0, v2, Lhd/h;->p:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lhd/h;->r:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    iget-object v9, v1, Lhd/k;->a:Landroidx/lifecycle/a1;

    const/4 v10, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-wide v11, v2, Lhd/h;->n:J

    iget-wide v13, v2, Lhd/h;->m:J

    iget v4, v2, Lhd/h;->l:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-wide/from16 v21, v11

    move v11, v6

    move-wide/from16 v5, v21

    move v0, v4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v11, v2, Lhd/h;->n:J

    iget-wide v13, v2, Lhd/h;->m:J

    iget v4, v2, Lhd/h;->l:I

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    iget-wide v11, v2, Lhd/h;->o:J

    iget-wide v13, v2, Lhd/h;->n:J

    iget-wide v5, v2, Lhd/h;->m:J

    iget v15, v2, Lhd/h;->l:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-wide v5, v2, Lhd/h;->o:J

    iget-wide v11, v2, Lhd/h;->n:J

    iget-wide v13, v2, Lhd/h;->m:J

    iget v15, v2, Lhd/h;->l:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-wide/from16 v21, v11

    move-wide v11, v5

    move-wide/from16 v5, v21

    goto :goto_3

    :cond_5
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    move-wide v13, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v11, v1, Lhd/k;->b:La1/b;

    invoke-virtual {v11}, La1/b;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    iput v0, v2, Lhd/h;->l:I

    iput-wide v13, v2, Lhd/h;->m:J

    iput-wide v5, v2, Lhd/h;->n:J

    iput-wide v11, v2, Lhd/h;->o:J

    iput v10, v2, Lhd/h;->r:I

    const-string v15, "222001\r"

    invoke-virtual {v9, v15, v2}, Landroidx/lifecycle/a1;->H(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_6

    goto/16 :goto_8

    :cond_6
    move v15, v0

    :goto_3
    iput v15, v2, Lhd/h;->l:I

    iput-wide v13, v2, Lhd/h;->m:J

    iput-wide v5, v2, Lhd/h;->n:J

    iput-wide v11, v2, Lhd/h;->o:J

    iput v8, v2, Lhd/h;->r:I

    move-wide/from16 v17, v5

    const-wide/16 v4, 0x320

    invoke-virtual {v9, v4, v5, v2}, Landroidx/lifecycle/a1;->D(JLa9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    goto/16 :goto_8

    :cond_7
    move-wide v5, v13

    move-wide/from16 v13, v17

    :goto_4
    check-cast v0, Ljava/lang/String;

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    if-nez v0, :cond_a

    add-int/lit8 v4, v15, 0x1

    const/16 v0, 0x8

    if-ge v4, v0, :cond_9

    :try_start_1
    const-string v0, "\r"

    iput v4, v2, Lhd/h;->l:I

    iput-wide v5, v2, Lhd/h;->m:J

    iput-wide v13, v2, Lhd/h;->n:J

    iput-wide v11, v2, Lhd/h;->o:J

    iput v7, v2, Lhd/h;->r:I

    invoke-virtual {v9, v0, v2}, Landroidx/lifecycle/a1;->H(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_8

    goto/16 :goto_8

    :cond_8
    move-wide v11, v13

    move-wide v13, v5

    :goto_5
    move v0, v4

    move-wide v5, v11

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide v11, v13

    move-wide v13, v5

    :goto_6
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_5

    :cond_9
    new-instance v0, Lhd/b;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sub-long v17, v11, v5

    const-wide/16 v19, 0x3e8

    cmp-long v4, v17, v19

    if-ltz v4, :cond_c

    if-eqz v0, :cond_b

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v4, "\\s*[\r\n]+\\s*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "compile(...)"

    invoke-static {v4, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "replaceAll(...)"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, " "

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xa0

    invoke-static {v4, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "obd_byd n="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " resp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lhd/k;->e:Li9/c;

    invoke-interface {v4, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v5, v11

    :cond_c
    const/4 v4, 0x0

    iput v4, v2, Lhd/h;->l:I

    iput-wide v5, v2, Lhd/h;->m:J

    iput-wide v13, v2, Lhd/h;->n:J

    iput-wide v11, v2, Lhd/h;->o:J

    const/4 v11, 0x4

    iput v11, v2, Lhd/h;->r:I

    move-wide v15, v5

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    :goto_8
    return-void

    :cond_d
    move-wide v5, v13

    move-wide v13, v15

    goto/16 :goto_1
.end method

.method public final c(La9/c;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lhd/i;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lhd/i;

    iget v3, v2, Lhd/i;->u:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lhd/i;->u:I

    goto :goto_0

    :cond_0
    new-instance v2, Lhd/i;

    invoke-direct {v2, v1, v0}, Lhd/i;-><init>(Lhd/k;La9/c;)V

    :goto_0
    iget-object v0, v2, Lhd/i;->s:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lhd/i;->u:I

    iget-object v5, v1, Lhd/k;->b:La1/b;

    const-string v8, " resp="

    const-string v10, "ATSP0"

    sget-object v11, Lt8/z;->a:Lt8/z;

    const-string v12, "toUpperCase(...)"

    iget-object v13, v1, Lhd/k;->f:Ljava/lang/String;

    iget-object v15, v1, Lhd/k;->d:Li9/c;

    iget-object v6, v1, Lhd/k;->a:Landroidx/lifecycle/a1;

    iget-object v9, v1, Lhd/k;->e:Li9/c;

    const/4 v14, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v4, v2, Lhd/i;->p:I

    iget v10, v2, Lhd/i;->o:I

    iget-wide v11, v2, Lhd/i;->q:J

    iget v13, v2, Lhd/i;->n:I

    iget-object v15, v2, Lhd/i;->m:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    iget-object v15, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-wide/from16 v27, v11

    move-object v11, v8

    move-wide/from16 v7, v27

    move-object/from16 v22, v5

    goto/16 :goto_1f

    :pswitch_1
    iget v4, v2, Lhd/i;->p:I

    iget v10, v2, Lhd/i;->o:I

    iget-wide v11, v2, Lhd/i;->q:J

    iget v13, v2, Lhd/i;->n:I

    iget-object v15, v2, Lhd/i;->m:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    iget-object v15, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move v0, v4

    move-object/from16 v22, v5

    move-object/from16 v17, v6

    move-wide v5, v11

    move/from16 v20, v14

    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object v11, v8

    goto/16 :goto_2b

    :pswitch_2
    iget-wide v10, v2, Lhd/i;->r:J

    iget v4, v2, Lhd/i;->p:I

    iget v12, v2, Lhd/i;->o:I

    iget v13, v2, Lhd/i;->n:I

    iget-object v15, v2, Lhd/i;->m:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    iget-object v15, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-wide/from16 v27, v10

    move-object v11, v8

    move-wide/from16 v7, v27

    move v0, v4

    move-object/from16 v22, v5

    move-object/from16 v17, v6

    move/from16 v20, v14

    const/4 v4, 0x0

    goto/16 :goto_26

    :pswitch_3
    iget v4, v2, Lhd/i;->p:I

    iget v10, v2, Lhd/i;->o:I

    iget-wide v11, v2, Lhd/i;->q:J

    iget v13, v2, Lhd/i;->n:I

    iget-object v15, v2, Lhd/i;->m:Ljava/lang/Object;

    check-cast v15, Lhd/k;

    iget-object v15, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v22, v5

    move v5, v13

    move/from16 v20, v14

    move-wide v12, v11

    move-object v11, v8

    goto/16 :goto_22

    :catchall_0
    move-exception v0

    move-object/from16 v22, v5

    move v5, v13

    move/from16 v20, v14

    move-wide v12, v11

    move-object v11, v8

    goto/16 :goto_23

    :pswitch_4
    iget-wide v10, v2, Lhd/i;->r:J

    iget v4, v2, Lhd/i;->p:I

    iget v12, v2, Lhd/i;->o:I

    move-object/from16 v19, v8

    iget-wide v7, v2, Lhd/i;->q:J

    iget v13, v2, Lhd/i;->n:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v22, v5

    move v5, v13

    move-wide/from16 v27, v10

    move v10, v12

    move-wide v12, v7

    move-wide/from16 v7, v27

    move-object/from16 v11, v19

    goto/16 :goto_21

    :pswitch_5
    move-object/from16 v19, v8

    iget-wide v7, v2, Lhd/i;->r:J

    iget v4, v2, Lhd/i;->p:I

    iget v10, v2, Lhd/i;->o:I

    iget-wide v11, v2, Lhd/i;->q:J

    iget v13, v2, Lhd/i;->n:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v22, v5

    move v0, v13

    move-wide v12, v11

    move-object/from16 v11, v19

    goto/16 :goto_20

    :pswitch_6
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    return-object v11

    :pswitch_7
    move-object/from16 v19, v8

    iget v4, v2, Lhd/i;->n:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v4, v2, Lhd/i;->n:I

    const/16 v0, 0xa

    iput v0, v2, Lhd/i;->u:I

    invoke-virtual {v1, v2}, Lhd/k;->b(La9/c;)V

    return-object v3

    :cond_1
    move-object/from16 v22, v5

    move-object/from16 v11, v19

    :goto_1
    move v13, v4

    goto/16 :goto_1e

    :pswitch_8
    move-object/from16 v19, v8

    iget v4, v2, Lhd/i;->n:I

    iget-object v7, v2, Lhd/i;->m:Ljava/lang/Object;

    check-cast v7, Lhd/f;

    iget-object v8, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v8, Lhd/k;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v22, v5

    move-object/from16 v11, v19

    goto/16 :goto_19

    :pswitch_9
    move-object/from16 v19, v8

    iget v4, v2, Lhd/i;->n:I

    iget-object v7, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v7, Lhd/k;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v22, v5

    move-object/from16 v11, v19

    goto/16 :goto_16

    :pswitch_a
    move-object/from16 v19, v8

    iget v4, v2, Lhd/i;->o:I

    iget v7, v2, Lhd/i;->n:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_b
    move-object/from16 v19, v8

    iget v4, v2, Lhd/i;->o:I

    iget v7, v2, Lhd/i;->n:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_c
    move-object/from16 v19, v8

    iget-object v4, v2, Lhd/i;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_d
    move-object/from16 v19, v8

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_e
    move-object/from16 v19, v8

    iget-object v4, v2, Lhd/i;->l:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_f
    move-object/from16 v19, v8

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_10
    move-object/from16 v19, v8

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lhd/n;->l:Lhd/n;

    invoke-interface {v15, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput v14, v2, Lhd/i;->u:I

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v4, Lad/t0;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v14}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v4, v2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    move-object v11, v0

    :cond_2
    if-ne v11, v3, :cond_3

    goto/16 :goto_2a

    :cond_3
    :goto_2
    sget-object v0, Lhd/n;->m:Lhd/n;

    invoke-interface {v15, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v9, v2, Lhd/i;->l:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Lhd/i;->u:I

    const-wide/16 v7, 0xfa0

    const-string v0, "ATZ"

    invoke-virtual {v1, v7, v8, v2, v0}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    goto/16 :goto_2a

    :cond_4
    move-object v4, v9

    :goto_3
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v8, :cond_6

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v21, v0

    int-to-char v0, v14

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v21

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v7, 0x3c

    invoke-static {v7, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "obd_atz resp="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-eqz v13, :cond_8

    const-string v0, "ATSP"

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_7

    :cond_8
    move-object/from16 v26, v10

    :goto_7
    const-string v21, "ATE0"

    const-string v22, "ATL0"

    const-string v23, "ATS0"

    const-string v24, "ATH0"

    const-string v25, "ATAT1"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v7, v0

    :cond_9
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iput-object v7, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v4, v2, Lhd/i;->m:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v2, Lhd/i;->u:I

    move-object v11, v7

    const-wide/16 v7, 0x7d0

    invoke-virtual {v1, v7, v8, v2, v4}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto/16 :goto_2a

    :cond_a
    move-object v7, v11

    :goto_9
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "obd_init_timeout cmd="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_a
    const/4 v7, 0x4

    if-ge v4, v7, :cond_1f

    const/4 v8, 0x2

    if-ne v4, v8, :cond_d

    if-eqz v13, :cond_d

    const/4 v8, 0x0

    iput-object v8, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v8, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v0, v2, Lhd/i;->n:I

    iput v4, v2, Lhd/i;->o:I

    const/4 v8, 0x5

    iput v8, v2, Lhd/i;->u:I

    const-wide/16 v7, 0x7d0

    invoke-virtual {v1, v7, v8, v2, v10}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_c

    goto/16 :goto_2a

    :cond_c
    move v7, v0

    :goto_b
    move v0, v7

    :cond_d
    const/4 v7, 0x0

    iput-object v7, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v7, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v0, v2, Lhd/i;->n:I

    iput v4, v2, Lhd/i;->o:I

    const/4 v7, 0x6

    iput v7, v2, Lhd/i;->u:I

    const-wide/16 v7, 0x2710

    const-string v11, "0100"

    invoke-virtual {v1, v7, v8, v2, v11}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_e

    goto/16 :goto_2a

    :cond_e
    move-object/from16 v27, v7

    move v7, v0

    move-object/from16 v0, v27

    :goto_c
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_18

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v21, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v14, :cond_10

    move-object/from16 v22, v5

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v22

    goto :goto_d

    :cond_10
    move-object/from16 v22, v5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "4100"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static {v0}, Lhd/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_11

    goto :goto_e

    :cond_11
    const-string v8, "41(?:0[4-9A-F]|1[0-9A-F]|2[0-9A-F]|4[0-9A-F])[0-9A-F]{2}"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v11, "compile(...)"

    invoke-static {v8, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v0}, Lhd/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_12
    :goto_e
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    int-to-char v8, v7

    invoke-static {v8}, Lwa/h;->q(C)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3c

    invoke-static {v7, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "obd_alive_nonstandard resp="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_17

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    int-to-char v8, v7

    invoke-static {v8}, Lwa/h;->q(C)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3c

    invoke-static {v7, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "obd_pids resp="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    move-object/from16 v11, v19

    move-object/from16 v2, v21

    const/4 v0, 0x1

    goto/16 :goto_15

    :cond_18
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    :cond_19
    if-eqz v0, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v5, :cond_1b

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-char v11, v11

    int-to-char v14, v11

    invoke-static {v14}, Lwa/h;->q(C)Z

    move-result v14

    if-nez v14, :cond_1a

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/16 v5, 0x3c

    invoke-static {v5, v2}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_1c
    const/16 v5, 0x3c

    const/4 v2, 0x0

    :goto_13
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "obd_proto_try="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lhd/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1d

    goto :goto_14

    :cond_1d
    move v0, v7

    move-object/from16 v2, v21

    goto :goto_15

    :cond_1e
    :goto_14
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    move-object/from16 v19, v11

    move-object/from16 v2, v21

    move-object/from16 v5, v22

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v22, v5

    move-object/from16 v11, v19

    :goto_15
    if-eqz v0, :cond_39

    iput-object v1, v2, Lhd/i;->l:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v0, v2, Lhd/i;->n:I

    const/4 v4, 0x7

    iput v4, v2, Lhd/i;->u:I

    const-string v4, "ATDP"

    const-wide/16 v7, 0x7d0

    invoke-virtual {v1, v7, v8, v2, v4}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_20

    goto/16 :goto_2a

    :cond_20
    move-object v7, v4

    move v4, v0

    move-object v0, v7

    move-object v7, v1

    :goto_16
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v8, :cond_22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v18, v0

    int-to-char v0, v14

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_21
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v18

    goto :goto_17

    :cond_22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_23
    const/4 v0, 0x0

    :goto_18
    iput-object v0, v7, Lhd/k;->g:Ljava/lang/String;

    iput-object v1, v2, Lhd/i;->l:Ljava/lang/Object;

    sget-object v7, Lhd/f;->a:Lhd/f;

    iput-object v7, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v4, v2, Lhd/i;->n:I

    const/16 v0, 0x8

    iput v0, v2, Lhd/i;->u:I

    const-string v0, "ATDPN"

    move v8, v4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5, v2, v0}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_24

    goto/16 :goto_2a

    :cond_24
    move v4, v8

    move-object v8, v1

    :goto_19
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_28

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v7, :cond_26

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_25
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_1b

    :cond_27
    const-string v5, "A"

    invoke-static {v0, v5}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_28

    const-string v5, "123456789ABC"

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v5, v10}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_1c

    :cond_28
    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    iput-object v0, v8, Lhd/k;->h:Ljava/lang/String;

    iget-object v0, v1, Lhd/k;->g:Ljava/lang/String;

    if-eqz v0, :cond_29

    const/16 v5, 0x28

    invoke-static {v5, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_29
    const/4 v0, 0x0

    :goto_1d
    iget-object v5, v1, Lhd/k;->h:Ljava/lang/String;

    const-string v7, " num="

    const-string v8, " preferred="

    const-string v10, "obd_proto line="

    invoke-static {v10, v0, v7, v5, v8}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lhd/n;->n:Lhd/n;

    invoke-interface {v15, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :goto_1e
    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    const/4 v10, 0x0

    :goto_1f
    invoke-virtual/range {v22 .. v22}, La1/b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    const/4 v5, 0x0

    iput-object v5, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v5, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v13, v2, Lhd/i;->n:I

    iput-wide v7, v2, Lhd/i;->q:J

    iput v10, v2, Lhd/i;->o:I

    iput v4, v2, Lhd/i;->p:I

    iput-wide v14, v2, Lhd/i;->r:J

    const/16 v0, 0xb

    iput v0, v2, Lhd/i;->u:I

    const-string v0, "010D\r"

    invoke-virtual {v6, v0, v2}, Landroidx/lifecycle/a1;->H(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2a

    goto/16 :goto_2a

    :cond_2a
    move v0, v13

    move-wide v12, v7

    move-wide v7, v14

    :goto_20
    iput v0, v2, Lhd/i;->n:I

    iput-wide v12, v2, Lhd/i;->q:J

    iput v10, v2, Lhd/i;->o:I

    iput v4, v2, Lhd/i;->p:I

    iput-wide v7, v2, Lhd/i;->r:J

    const/16 v5, 0xc

    iput v5, v2, Lhd/i;->u:I

    const-wide/16 v14, 0x5dc

    invoke-virtual {v6, v14, v15, v2}, Landroidx/lifecycle/a1;->D(JLa9/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_2b

    goto/16 :goto_2a

    :cond_2b
    move-object/from16 v27, v5

    move v5, v0

    move-object/from16 v0, v27

    :goto_21
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2e

    const/16 v20, 0x1

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    const-string v0, "\r"

    const/4 v14, 0x0

    iput-object v14, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v14, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v5, v2, Lhd/i;->n:I

    iput-wide v12, v2, Lhd/i;->q:J

    iput v10, v2, Lhd/i;->o:I

    iput v4, v2, Lhd/i;->p:I

    iput-wide v7, v2, Lhd/i;->r:J

    const/16 v7, 0xd

    iput v7, v2, Lhd/i;->u:I

    invoke-virtual {v6, v0, v2}, Landroidx/lifecycle/a1;->H(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_2c

    goto/16 :goto_2a

    :cond_2c
    :goto_22
    move-wide v7, v12

    const/4 v14, 0x3

    move v13, v5

    goto :goto_24

    :catchall_1
    move-exception v0

    :goto_23
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_22

    :goto_24
    if-ge v4, v14, :cond_2d

    goto :goto_1f

    :cond_2d
    new-instance v0, Lhd/b;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v14, 0x3

    const/16 v20, 0x1

    invoke-static {v0}, Lhd/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v14, 0xfa

    if-gt v15, v14, :cond_2f

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    iget-object v7, v1, Lhd/k;->c:Lb0/k0;

    invoke-virtual {v7, v4, v0}, Lb0/k0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v13, v5

    move-object/from16 v17, v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    const/4 v10, 0x0

    const/4 v14, 0x0

    goto/16 :goto_2c

    :cond_2f
    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-gez v4, :cond_30

    move-wide v12, v7

    :cond_30
    sub-long v14, v7, v12

    const-wide/16 v16, 0xbb8

    cmp-long v4, v14, v16

    if-lez v4, :cond_37

    const/4 v14, 0x2

    if-ge v10, v14, :cond_34

    add-int/lit8 v10, v10, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v14, :cond_32

    move-object/from16 v17, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    move/from16 v18, v4

    int-to-char v4, v6

    invoke-static {v4}, Lwa/h;->q(C)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_31
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v6, v17

    goto :goto_25

    :cond_32
    move-object/from16 v17, v6

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x50

    invoke-static {v4, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "obd_soft_recover n="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v14, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v5, v2, Lhd/i;->n:I

    iput-wide v12, v2, Lhd/i;->q:J

    iput v10, v2, Lhd/i;->o:I

    const/4 v4, 0x0

    iput v4, v2, Lhd/i;->p:I

    iput-wide v7, v2, Lhd/i;->r:J

    const/16 v0, 0xe

    iput v0, v2, Lhd/i;->u:I

    invoke-virtual {v1, v10, v2}, Lhd/k;->d(ILa9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_33

    goto/16 :goto_2a

    :cond_33
    move v0, v4

    move v13, v5

    move v12, v10

    :goto_26
    invoke-virtual/range {v22 .. v22}, La1/b;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move v10, v12

    :goto_27
    const/4 v14, 0x0

    goto :goto_29

    :cond_34
    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v14, v4

    :goto_28
    if-ge v14, v2, :cond_36

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    int-to-char v4, v3

    invoke-static {v4}, Lwa/h;->q(C)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_35
    add-int/lit8 v14, v14, 0x1

    goto :goto_28

    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x50

    invoke-static {v4, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bus_errors:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhd/b;

    invoke-direct {v1, v0}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    move-object/from16 v17, v6

    const/4 v4, 0x0

    move-wide/from16 v27, v12

    move v13, v5

    move-wide/from16 v5, v27

    move v0, v4

    goto :goto_27

    :goto_29
    iput-object v14, v2, Lhd/i;->l:Ljava/lang/Object;

    iput-object v14, v2, Lhd/i;->m:Ljava/lang/Object;

    iput v13, v2, Lhd/i;->n:I

    iput-wide v5, v2, Lhd/i;->q:J

    iput v10, v2, Lhd/i;->o:I

    iput v0, v2, Lhd/i;->p:I

    iput-wide v7, v2, Lhd/i;->r:J

    const/16 v7, 0xf

    iput v7, v2, Lhd/i;->u:I

    const-wide/16 v7, 0x32

    invoke-static {v7, v8, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_38

    :goto_2a
    return-object v3

    :cond_38
    :goto_2b
    move-wide v7, v5

    :goto_2c
    move v4, v0

    move-object/from16 v6, v17

    goto/16 :goto_1f

    :cond_39
    new-instance v0, Lhd/b;

    const-string v1, "no_protocol"

    invoke-direct {v0, v1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(ILa9/c;)Ljava/lang/Object;
    .locals 11

    const-string v0, "ATSP"

    instance-of v1, p2, Lhd/j;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lhd/j;

    iget v2, v1, Lhd/j;->p:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lhd/j;->p:I

    goto :goto_0

    :cond_0
    new-instance v1, Lhd/j;

    invoke-direct {v1, p0, p2}, Lhd/j;-><init>(Lhd/k;La9/c;)V

    :goto_0
    iget-object p2, v1, Lhd/j;->n:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lhd/j;->p:I

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v10, :cond_4

    if-eq v3, v9, :cond_3

    if-eq v3, v8, :cond_2

    if-ne v3, v7, :cond_1

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v1, Lhd/j;->l:I

    iget-object p0, v1, Lhd/j;->m:Lhd/k;

    :try_start_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    iget p1, v1, Lhd/j;->l:I

    iget-object p0, v1, Lhd/j;->m:Lhd/k;

    :try_start_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    if-ne p1, v10, :cond_8

    :try_start_3
    iget-object p2, p0, Lhd/k;->a:Landroidx/lifecycle/a1;

    const-string v0, "\r"

    iput-object p0, v1, Lhd/j;->m:Lhd/k;

    iput p1, v1, Lhd/j;->l:I

    iput v10, v1, Lhd/j;->p:I

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/a1;->H(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_6

    goto :goto_4

    :cond_6
    :goto_1
    iget-object p0, p0, Lhd/k;->a:Landroidx/lifecycle/a1;

    iput-object v6, v1, Lhd/j;->m:Lhd/k;

    iput p1, v1, Lhd/j;->l:I

    iput v9, v1, Lhd/j;->p:I

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2, v1}, Landroidx/lifecycle/a1;->D(JLa9/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_7

    goto :goto_4

    :cond_7
    :goto_2
    check-cast p2, Ljava/lang/String;

    goto :goto_6

    :cond_8
    const-string p2, "ATPC"

    iput-object p0, v1, Lhd/j;->m:Lhd/k;

    iput p1, v1, Lhd/j;->l:I

    iput v8, v1, Lhd/j;->p:I

    invoke-virtual {p0, v4, v5, v1, p2}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p2, p0, Lhd/k;->h:Ljava/lang/String;

    if-nez p2, :cond_a

    iget-object p2, p0, Lhd/k;->f:Ljava/lang/String;

    if-nez p2, :cond_a

    const-string p2, "0"

    :cond_a
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object v6, v1, Lhd/j;->m:Lhd/k;

    iput p1, v1, Lhd/j;->l:I

    iput v7, v1, Lhd/j;->p:I

    invoke-virtual {p0, v4, v5, v1, p2}, Lhd/k;->a(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_b

    :goto_4
    return-object v2

    :cond_b
    :goto_5
    check-cast p2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
