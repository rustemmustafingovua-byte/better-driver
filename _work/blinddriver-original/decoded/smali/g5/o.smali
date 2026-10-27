.class public final Lg5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final y:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lx4/h;

.field public final f:Lx4/h;

.field public final g:J

.field public h:J

.field public i:J

.field public j:Lx4/d;

.field public final k:I

.field public final l:I

.field public final m:J

.field public n:J

.field public final o:J

.field public final p:J

.field public q:Z

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:J

.field public final v:I

.field public final w:I

.field public x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkSpec"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg5/o;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V
    .locals 4

    move-object/from16 v0, p13

    move/from16 v1, p15

    move/from16 v2, p25

    const-string v3, "id"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {p2, v3}, La6/q;->r(ILjava/lang/String;)V

    const-string v3, "workerClassName"

    invoke-static {p3, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "inputMergerClassName"

    invoke-static {p4, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p5, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "output"

    invoke-static {p6, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "constraints"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backoffPolicy"

    invoke-static {v1, v3}, La6/q;->r(ILjava/lang/String;)V

    const-string v3, "outOfQuotaPolicy"

    invoke-static {v2, v3}, La6/q;->r(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/o;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lg5/o;->b:I

    .line 4
    iput-object p3, p0, Lg5/o;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lg5/o;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lg5/o;->e:Lx4/h;

    .line 7
    iput-object p6, p0, Lg5/o;->f:Lx4/h;

    .line 8
    iput-wide p7, p0, Lg5/o;->g:J

    .line 9
    iput-wide p9, p0, Lg5/o;->h:J

    move-wide p1, p11

    .line 10
    iput-wide p1, p0, Lg5/o;->i:J

    .line 11
    iput-object v0, p0, Lg5/o;->j:Lx4/d;

    move/from16 p1, p14

    .line 12
    iput p1, p0, Lg5/o;->k:I

    .line 13
    iput v1, p0, Lg5/o;->l:I

    move-wide/from16 p1, p16

    .line 14
    iput-wide p1, p0, Lg5/o;->m:J

    move-wide/from16 p1, p18

    .line 15
    iput-wide p1, p0, Lg5/o;->n:J

    move-wide/from16 p1, p20

    .line 16
    iput-wide p1, p0, Lg5/o;->o:J

    move-wide/from16 p1, p22

    .line 17
    iput-wide p1, p0, Lg5/o;->p:J

    move/from16 p1, p24

    .line 18
    iput-boolean p1, p0, Lg5/o;->q:Z

    .line 19
    iput v2, p0, Lg5/o;->r:I

    move/from16 p1, p26

    .line 20
    iput p1, p0, Lg5/o;->s:I

    move/from16 p1, p27

    .line 21
    iput p1, p0, Lg5/o;->t:I

    move-wide/from16 p1, p28

    .line 22
    iput-wide p1, p0, Lg5/o;->u:J

    move/from16 p1, p30

    .line 23
    iput p1, p0, Lg5/o;->v:I

    move/from16 p1, p31

    .line 24
    iput p1, p0, Lg5/o;->w:I

    move-object/from16 p1, p32

    .line 25
    iput-object p1, p0, Lg5/o;->x:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIJIILjava/lang/String;I)V
    .locals 36

    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 26
    const-class v1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 27
    sget-object v1, Lx4/h;->b:Lx4/h;

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 28
    sget-object v1, Lx4/h;->b:Lx4/h;

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    move-wide v10, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v12, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v14, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 29
    sget-object v1, Lx4/d;->j:Lx4/d;

    move-object/from16 v16, v1

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    move/from16 v17, v6

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move/from16 v18, v2

    goto :goto_9

    :cond_9
    move/from16 v18, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v19, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v19, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    const-wide/16 v21, -0x1

    if-eqz v1, :cond_b

    move-wide/from16 v23, v21

    goto :goto_b

    :cond_b
    move-wide/from16 v23, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move-wide/from16 v3, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-wide/from16 v25, v21

    goto :goto_d

    :cond_d
    move-wide/from16 v25, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v27, v6

    goto :goto_e

    :cond_e
    move/from16 v27, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v28, v2

    goto :goto_f

    :cond_f
    move/from16 v28, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v29, v6

    goto :goto_10

    :cond_10
    move/from16 v29, p26

    :goto_10
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    const-wide v1, 0x7fffffffffffffffL

    move-wide/from16 v31, v1

    goto :goto_11

    :cond_11
    move-wide/from16 v31, p27

    :goto_11
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v33, v6

    goto :goto_12

    :cond_12
    move/from16 v33, p29

    :goto_12
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    const/16 v1, -0x100

    move/from16 v34, v1

    goto :goto_13

    :cond_13
    move/from16 v34, p30

    :goto_13
    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    move-object/from16 v35, v0

    goto :goto_14

    :cond_14
    move-object/from16 v35, p31

    :goto_14
    const/16 v30, 0x0

    move-object/from16 v6, p3

    move-wide/from16 v21, v23

    move-wide/from16 v23, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 30
    invoke-direct/range {v3 .. v35}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lg5/o;->b:I

    iget v2, v0, Lg5/o;->k:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-lez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-wide v4, v0, Lg5/o;->n:J

    invoke-virtual {v0}, Lg5/o;->c()Z

    move-result v6

    iget-wide v7, v0, Lg5/o;->i:J

    iget-wide v9, v0, Lg5/o;->h:J

    const-string v11, "backoffPolicy"

    iget v12, v0, Lg5/o;->l:I

    invoke-static {v12, v11}, La6/q;->r(ILjava/lang/String;)V

    iget-wide v13, v0, Lg5/o;->u:J

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v11, v13, v15

    move/from16 v17, v3

    iget v3, v0, Lg5/o;->s:I

    if-eqz v11, :cond_3

    if-eqz v6, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0xdbba0

    add-long/2addr v4, v0

    cmp-long v0, v13, v4

    if-gez v0, :cond_2

    return-wide v4

    :cond_2
    :goto_1
    return-wide v13

    :cond_3
    if-eqz v1, :cond_6

    const/4 v1, 0x2

    iget-wide v6, v0, Lg5/o;->m:J

    if-ne v12, v1, :cond_4

    int-to-long v0, v2

    mul-long/2addr v6, v0

    goto :goto_2

    :cond_4
    long-to-float v0, v6

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v6, v0

    :goto_2
    const-wide/32 v0, 0x112a880

    cmp-long v2, v6, v0

    if-lez v2, :cond_5

    move-wide v6, v0

    :cond_5
    add-long/2addr v4, v6

    return-wide v4

    :cond_6
    iget-wide v0, v0, Lg5/o;->g:J

    if-eqz v6, :cond_9

    if-nez v3, :cond_7

    add-long/2addr v4, v0

    goto :goto_3

    :cond_7
    add-long/2addr v4, v9

    :goto_3
    cmp-long v0, v7, v9

    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    sub-long/2addr v9, v7

    add-long/2addr v9, v4

    return-wide v9

    :cond_8
    return-wide v4

    :cond_9
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-nez v2, :cond_a

    return-wide v15

    :cond_a
    add-long/2addr v4, v0

    return-wide v4
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lx4/d;->j:Lx4/d;

    iget-object p0, p0, Lg5/o;->j:Lx4/d;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 4

    iget-wide v0, p0, Lg5/o;->h:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(JJ)V
    .locals 10

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    sget-object v3, Lg5/o;->y:Ljava/lang/String;

    if-gez v2, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    const-string v5, "Interval duration lesser than minimum allowed value; Changed to 900000"

    invoke-virtual {v4, v3, v5}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, p1

    :goto_0
    iput-wide v0, p0, Lg5/o;->h:J

    const-wide/32 v0, 0x493e0

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    const-string v1, "Flex duration lesser than minimum allowed value; Changed to 300000"

    invoke-virtual {v0, v3, v1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Lg5/o;->h:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Flex duration greater than interval duration; Changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-wide/32 v6, 0x493e0

    iget-wide v8, p0, Lg5/o;->h:J

    move-wide v4, p3

    invoke-static/range {v4 .. v9}, Lg6/c1;->h(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lg5/o;->i:J

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lg5/o;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lg5/o;

    iget-object v0, p0, Lg5/o;->a:Ljava/lang/String;

    iget-object v1, p1, Lg5/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lg5/o;->b:I

    iget v1, p1, Lg5/o;->b:I

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lg5/o;->c:Ljava/lang/String;

    iget-object v1, p1, Lg5/o;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lg5/o;->d:Ljava/lang/String;

    iget-object v1, p1, Lg5/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lg5/o;->e:Lx4/h;

    iget-object v1, p1, Lg5/o;->e:Lx4/h;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lg5/o;->f:Lx4/h;

    iget-object v1, p1, Lg5/o;->f:Lx4/h;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-wide v0, p0, Lg5/o;->g:J

    iget-wide v2, p1, Lg5/o;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-wide v0, p0, Lg5/o;->h:J

    iget-wide v2, p1, Lg5/o;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Lg5/o;->i:J

    iget-wide v2, p1, Lg5/o;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lg5/o;->j:Lx4/d;

    iget-object v1, p1, Lg5/o;->j:Lx4/d;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lg5/o;->k:I

    iget v1, p1, Lg5/o;->k:I

    if-eq v0, v1, :cond_c

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lg5/o;->l:I

    iget v1, p1, Lg5/o;->l:I

    if-eq v0, v1, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-wide v0, p0, Lg5/o;->m:J

    iget-wide v2, p1, Lg5/o;->m:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    goto :goto_0

    :cond_e
    iget-wide v0, p0, Lg5/o;->n:J

    iget-wide v2, p1, Lg5/o;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    iget-wide v0, p0, Lg5/o;->o:J

    iget-wide v2, p1, Lg5/o;->o:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    iget-wide v0, p0, Lg5/o;->p:J

    iget-wide v2, p1, Lg5/o;->p:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    goto :goto_0

    :cond_11
    iget-boolean v0, p0, Lg5/o;->q:Z

    iget-boolean v1, p1, Lg5/o;->q:Z

    if-eq v0, v1, :cond_12

    goto :goto_0

    :cond_12
    iget v0, p0, Lg5/o;->r:I

    iget v1, p1, Lg5/o;->r:I

    if-eq v0, v1, :cond_13

    goto :goto_0

    :cond_13
    iget v0, p0, Lg5/o;->s:I

    iget v1, p1, Lg5/o;->s:I

    if-eq v0, v1, :cond_14

    goto :goto_0

    :cond_14
    iget v0, p0, Lg5/o;->t:I

    iget v1, p1, Lg5/o;->t:I

    if-eq v0, v1, :cond_15

    goto :goto_0

    :cond_15
    iget-wide v0, p0, Lg5/o;->u:J

    iget-wide v2, p1, Lg5/o;->u:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    goto :goto_0

    :cond_16
    iget v0, p0, Lg5/o;->v:I

    iget v1, p1, Lg5/o;->v:I

    if-eq v0, v1, :cond_17

    goto :goto_0

    :cond_17
    iget v0, p0, Lg5/o;->w:I

    iget v1, p1, Lg5/o;->w:I

    if-eq v0, v1, :cond_18

    goto :goto_0

    :cond_18
    iget-object p0, p0, Lg5/o;->x:Ljava/lang/String;

    iget-object p1, p1, Lg5/o;->x:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lg5/o;->b:I

    invoke-static {v2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lg5/o;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg5/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg5/o;->e:Lx4/h;

    invoke-virtual {v2}, Lx4/h;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lg5/o;->f:Lx4/h;

    invoke-virtual {v0}, Lx4/h;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lg5/o;->g:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lg5/o;->h:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lg5/o;->i:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object v2, p0, Lg5/o;->j:Lx4/d;

    invoke-virtual {v2}, Lx4/d;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lg5/o;->k:I

    invoke-static {v0, v2, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lg5/o;->l:I

    invoke-static {v2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lg5/o;->m:J

    invoke-static {v2, v1, v3, v4}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lg5/o;->n:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lg5/o;->o:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lg5/o;->p:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-boolean v2, p0, Lg5/o;->q:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget v2, p0, Lg5/o;->r:I

    invoke-static {v2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lg5/o;->s:I

    invoke-static {v0, v2, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lg5/o;->t:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v2, p0, Lg5/o;->u:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget v2, p0, Lg5/o;->v:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lg5/o;->w:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lg5/o;->x:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg5/o;->a:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lr0/i;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
