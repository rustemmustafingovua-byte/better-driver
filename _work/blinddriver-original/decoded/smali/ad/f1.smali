.class public final Lad/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/b1;

.field public static final b:Ljava/util/List;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lad/b1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/f1;->Companion:Lad/b1;

    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lt8/j;

    invoke-direct {v2, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/32 v0, 0x9c40

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lad/f1;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lad/f1;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(Ljava/util/ArrayList;)Lad/d1;
    .locals 31

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {v0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/e1;

    iget-wide v9, v1, Lad/e1;->a:J

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-ge v13, v1, :cond_1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v13, v13, 0x1

    check-cast v4, Lad/e1;

    const-wide v21, 0x408f400000000000L    # 1000.0

    iget-wide v14, v4, Lad/e1;->c:D

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    mul-double/2addr v2, v2

    div-double v19, v19, v2

    iget-wide v2, v4, Lad/e1;->a:J

    sub-long/2addr v2, v9

    long-to-double v2, v2

    div-double v2, v2, v21

    add-double v7, v7, v19

    mul-double v2, v2, v19

    add-double/2addr v5, v2

    iget-wide v2, v4, Lad/e1;->b:D

    mul-double v19, v19, v2

    add-double v11, v19, v11

    goto :goto_0

    :cond_1
    const-wide v21, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    div-double v25, v11, v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v29, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lad/e1;

    iget-wide v11, v7, Lad/e1;->c:D

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    mul-double/2addr v11, v11

    div-double v11, v19, v11

    iget-wide v13, v7, Lad/e1;->a:J

    sub-long/2addr v13, v9

    long-to-double v13, v13

    div-double v13, v13, v21

    sub-double/2addr v13, v5

    mul-double v15, v13, v13

    mul-double/2addr v15, v11

    add-double v17, v15, v17

    mul-double v27, v11, v13

    iget-wide v7, v7, Lad/e1;->b:D

    move-wide/from16 v23, v7

    invoke-static/range {v23 .. v30}, Lm/a;->b(DDDD)D

    move-result-wide v29

    goto :goto_1

    :cond_2
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v17, v0

    if-gtz v0, :cond_3

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    div-double v29, v29, v17

    new-instance v2, Lad/d1;

    mul-double v5, v5, v29

    sub-double v3, v25, v5

    div-double v19, v19, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-wide/from16 v5, v29

    invoke-direct/range {v2 .. v10}, Lad/d1;-><init>(DDDJ)V

    return-object v2
.end method


# virtual methods
.method public final a(DDJ)V
    .locals 8

    iget-object p0, p0, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/e1;

    iget-wide v0, v0, Lad/e1;->a:J

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lad/e1;

    move-wide v4, p1

    move-wide v6, p3

    move-wide v2, p5

    invoke-direct/range {v1 .. v7}, Lad/e1;-><init>(JDD)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x3c

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final b(J)Lad/c1;
    .locals 13

    const/4 v0, 0x0

    sget-object v1, Lad/f1;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt8/j;

    iget-object v0, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmp-long v1, v9, v4

    if-gez v1, :cond_0

    move-object v6, p0

    move-wide v7, p1

    invoke-virtual/range {v6 .. v12}, Lad/f1;->c(JJD)Lad/c1;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    move-object p0, v6

    move-wide p1, v7

    goto :goto_0

    :cond_2
    move-object v6, p0

    move-wide v7, p1

    const-wide/32 v9, 0x15f90

    const-wide/high16 v11, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v6 .. v12}, Lad/f1;->c(JJD)Lad/c1;

    move-result-object p0

    return-object p0
.end method

.method public final c(JJD)Lad/c1;
    .locals 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    iget-object v1, v1, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    check-cast v6, Lad/e1;

    iget-wide v6, v6, Lad/e1;->a:J

    sub-long v6, p1, v6

    cmp-long v6, v6, p3

    if-gtz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {v0}, Lad/f1;->d(Ljava/util/ArrayList;)Lad/d1;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    check-cast v9, Lad/e1;

    iget-wide v10, v9, Lad/e1;->b:D

    iget-wide v12, v1, Lad/d1;->a:D

    iget-wide v14, v1, Lad/d1;->b:D

    const-wide p0, 0x408f400000000000L    # 1000.0

    iget-wide v6, v9, Lad/e1;->a:J

    move/from16 p3, v3

    iget-wide v2, v1, Lad/d1;->c:J

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double v2, v2, p0

    mul-double/2addr v2, v14

    add-double/2addr v2, v12

    sub-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v6, 0x3

    int-to-double v6, v6

    iget-wide v9, v9, Lad/e1;->c:D

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    mul-double/2addr v9, v6

    const-wide v6, 0x406f400000000000L    # 250.0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v3, p3

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    const-wide p0, 0x408f400000000000L    # 1000.0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    invoke-static {v4}, Lad/f1;->d(Ljava/util/ArrayList;)Lad/d1;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v4

    :cond_7
    invoke-static {v0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/e1;

    iget-wide v2, v2, Lad/e1;->a:J

    invoke-static {v0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/e1;

    iget-wide v4, v4, Lad/e1;->a:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double v9, v2, p0

    cmpg-double v2, v9, p5

    if-gez v2, :cond_8

    goto :goto_2

    :cond_8
    iget-wide v2, v1, Lad/d1;->d:D

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v7, v2, v4

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v2, v7, v2

    if-lez v2, :cond_9

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_9
    new-instance v4, Lad/c1;

    iget-wide v1, v1, Lad/d1;->b:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v1, v5

    if-gez v3, :cond_a

    goto :goto_3

    :cond_a
    move-wide v5, v1

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Lad/c1;-><init>(DDDI)V

    return-object v4
.end method
