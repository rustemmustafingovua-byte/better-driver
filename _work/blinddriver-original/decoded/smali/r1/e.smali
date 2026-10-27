.class public final Lr1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Lr1/d;

.field public k:Z


# direct methods
.method public constructor <init>(FFFFJIZI)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "Filled.Check"

    :goto_0
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_1

    sget-wide v2, Lm1/p;->g:J

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p5

    :goto_1
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_2

    :cond_2
    move/from16 v4, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move/from16 v0, p8

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lr1/e;->a:Ljava/lang/String;

    iput p1, p0, Lr1/e;->b:F

    iput p2, p0, Lr1/e;->c:F

    iput p3, p0, Lr1/e;->d:F

    iput p4, p0, Lr1/e;->e:F

    iput-wide v2, p0, Lr1/e;->f:J

    iput v4, p0, Lr1/e;->g:I

    iput-boolean v0, p0, Lr1/e;->h:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr1/e;->i:Ljava/util/ArrayList;

    new-instance v0, Lr1/d;

    const/4 v9, 0x0

    const/16 v10, 0x3ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lr1/d;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    iput-object v0, p0, Lr1/e;->j:Lr1/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lr1/f;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lr1/e;->k:Z

    const-string v2, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    if-eqz v1, :cond_0

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, v0, Lr1/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    iget-boolean v3, v0, Lr1/e;->k:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr1/d;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr1/d;

    iget-object v1, v1, Lr1/d;->j:Ljava/util/ArrayList;

    new-instance v4, Lr1/g0;

    iget-object v5, v3, Lr1/d;->a:Ljava/lang/String;

    iget v6, v3, Lr1/d;->b:F

    iget v7, v3, Lr1/d;->c:F

    iget v8, v3, Lr1/d;->d:F

    iget v9, v3, Lr1/d;->e:F

    iget v10, v3, Lr1/d;->f:F

    iget v11, v3, Lr1/d;->g:F

    iget v12, v3, Lr1/d;->h:F

    iget-object v13, v3, Lr1/d;->i:Ljava/util/List;

    iget-object v14, v3, Lr1/d;->j:Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v14}, Lr1/g0;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Lr1/f;

    new-instance v6, Lr1/g0;

    iget-object v1, v0, Lr1/e;->j:Lr1/d;

    iget-object v7, v1, Lr1/d;->a:Ljava/lang/String;

    iget v8, v1, Lr1/d;->b:F

    iget v9, v1, Lr1/d;->c:F

    iget v10, v1, Lr1/d;->d:F

    iget v11, v1, Lr1/d;->e:F

    iget v12, v1, Lr1/d;->f:F

    iget v13, v1, Lr1/d;->g:F

    iget v14, v1, Lr1/d;->h:F

    iget-object v15, v1, Lr1/d;->i:Ljava/util/List;

    iget-object v1, v1, Lr1/d;->j:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    invoke-direct/range {v6 .. v16}, Lr1/g0;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    iget v14, v0, Lr1/e;->g:I

    iget-boolean v15, v0, Lr1/e;->h:Z

    move-object v11, v6

    iget-object v6, v0, Lr1/e;->a:Ljava/lang/String;

    iget v7, v0, Lr1/e;->b:F

    iget v8, v0, Lr1/e;->c:F

    iget v9, v0, Lr1/e;->d:F

    iget v10, v0, Lr1/e;->e:F

    iget-wide v12, v0, Lr1/e;->f:J

    invoke-direct/range {v5 .. v15}, Lr1/f;-><init>(Ljava/lang/String;FFFFLr1/g0;JIZ)V

    iput-boolean v4, v0, Lr1/e;->k:Z

    return-object v5
.end method
