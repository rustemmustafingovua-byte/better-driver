.class public final Lad/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/p;


# instance fields
.field public a:D

.field public b:D

.field public c:J

.field public d:D

.field public e:Z

.field public f:D

.field public g:J

.field public h:Ljava/lang/Double;

.field public i:J

.field public j:D

.field public k:D

.field public l:J

.field public m:J

.field public n:Lad/q;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/ArrayList;

.field public final q:Lad/f1;

.field public r:D

.field public s:D

.field public final t:Lad/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/r;->Companion:Lad/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lad/r;->a:D

    iput-wide v0, p0, Lad/r;->b:D

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lad/r;->c:J

    iput-wide v2, p0, Lad/r;->g:J

    iput-wide v2, p0, Lad/r;->i:J

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    iput-wide v4, p0, Lad/r;->j:D

    iput-wide v2, p0, Lad/r;->l:J

    iput-wide v2, p0, Lad/r;->m:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lad/r;->o:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lad/r;->p:Ljava/util/ArrayList;

    new-instance v2, Lad/f1;

    invoke-direct {v2}, Lad/f1;-><init>()V

    iput-object v2, p0, Lad/r;->q:Lad/f1;

    iput-wide v0, p0, Lad/r;->r:D

    iput-wide v0, p0, Lad/r;->s:D

    new-instance v0, Lad/i;

    invoke-direct {v0}, Lad/i;-><init>()V

    iput-object v0, p0, Lad/r;->t:Lad/i;

    return-void
.end method

.method public static b(DDDD)D
    .locals 4

    sub-double v0, p4, p0

    const-wide v2, 0x40fafcc000000000L    # 110540.0

    mul-double/2addr v0, v2

    sub-double/2addr p6, p2

    add-double/2addr p0, p4

    const/4 p2, 0x2

    int-to-double p2, p2

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lsc/c;->c(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide p2, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr p0, p2

    mul-double/2addr p0, p6

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final a(DDDJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v7, p3

    iget-wide v4, v0, Lad/r;->r:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-wide v2, v0, Lad/r;->r:D

    iput-wide v7, v0, Lad/r;->s:D

    :cond_0
    new-instance v1, Lad/q;

    move-wide v4, v7

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lad/q;-><init>(DDDJ)V

    iget-object v8, v0, Lad/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x3c

    const/4 v9, 0x0

    if-gt v1, v2, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-static {v8}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/q;

    iget-wide v1, v1, Lad/q;->a:J

    sub-long v1, p7, v1

    const-wide/32 v3, 0x186a0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    :cond_1
    move-wide/from16 v14, p5

    goto/16 :goto_6

    :cond_2
    iget-boolean v1, v0, Lad/r;->e:Z

    const-wide v10, 0x40fb2d8000000000L    # 111320.0

    const-wide v12, 0x40fafcc000000000L    # 110540.0

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lad/r;->s:D

    sub-double v1, p3, v1

    iget-wide v3, v0, Lad/r;->r:D

    invoke-static {v3, v4}, Lsc/c;->c(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    mul-double/2addr v3, v1

    iget-wide v1, v0, Lad/r;->r:D

    sub-double v1, p1, v1

    mul-double/2addr v1, v12

    iget-wide v5, v0, Lad/r;->d:D

    invoke-static {v5, v6}, Lsc/c;->c(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    add-double v2, v3, v14

    iget-object v1, v0, Lad/r;->q:Lad/f1;

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lad/f1;->a(DDJ)V

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_4
    const-wide v14, 0x408f400000000000L    # 1000.0

    if-ge v9, v1, :cond_5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v9, v9, 0x1

    move-object v3, v2

    check-cast v3, Lad/q;

    iget-wide v3, v3, Lad/q;->a:J

    sub-long v3, p7, v3

    long-to-double v3, v3

    div-double/2addr v3, v14

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpg-double v5, v5, v3

    if-gtz v5, :cond_4

    const-wide v5, 0x4046800000000000L    # 45.0

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_4

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    move-object v9, v2

    check-cast v9, Lad/q;

    if-nez v9, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-wide v1, v9, Lad/q;->b:D

    iget-wide v3, v9, Lad/q;->c:D

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-static/range {v1 .. v8}, Lad/r;->b(DDDD)D

    move-result-wide v1

    iget-wide v3, v9, Lad/q;->a:J

    sub-long v3, p7, v3

    long-to-double v3, v3

    div-double/2addr v3, v14

    const/4 v5, 0x3

    int-to-double v5, v5

    iget-wide v7, v9, Lad/q;->d:D

    move-wide/from16 v14, p5

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    mul-double/2addr v7, v5

    const-wide v5, 0x4062c00000000000L    # 150.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    cmpg-double v5, v1, v5

    if-ltz v5, :cond_c

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-wide v1, v9, Lad/q;->c:D

    sub-double v1, p3, v1

    invoke-static/range {p1 .. p2}, Lsc/c;->c(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    mul-double/2addr v3, v1

    iget-wide v1, v9, Lad/q;->b:D

    sub-double v1, p1, v1

    mul-double/2addr v1, v12

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Lsc/c;->b(D)D

    move-result-wide v1

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    iget-boolean v5, v0, Lad/r;->e:Z

    const-wide v6, 0x3fd3333333333333L    # 0.3

    if-eqz v5, :cond_a

    iget-wide v8, v0, Lad/r;->d:D

    sub-double v10, v1, v8

    rem-double/2addr v10, v3

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpl-double v5, v10, v12

    const/16 v12, 0x168

    if-lez v5, :cond_8

    int-to-double v13, v12

    sub-double/2addr v10, v13

    :cond_8
    const-wide v13, -0x3f99800000000000L    # -180.0

    cmpg-double v5, v10, v13

    if-gez v5, :cond_9

    int-to-double v12, v12

    add-double/2addr v10, v12

    :cond_9
    mul-double/2addr v10, v6

    add-double/2addr v10, v8

    add-double/2addr v10, v3

    rem-double/2addr v10, v3

    goto :goto_2

    :cond_a
    move-wide v10, v1

    :goto_2
    iput-wide v10, v0, Lad/r;->d:D

    const/4 v3, 0x1

    iput-boolean v3, v0, Lad/r;->e:Z

    iget-object v0, v0, Lad/r;->t:Lad/i;

    iget-wide v3, v0, Lad/i;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1, v2}, Lad/i;->e(D)D

    move-result-wide v3

    :goto_3
    iput-wide v3, v0, Lad/i;->a:D

    goto :goto_4

    :cond_b
    iget-wide v3, v0, Lad/i;->a:D

    invoke-static {v3, v4, v1, v2}, Lad/i;->a(DD)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v8, v3

    invoke-static {v8, v9}, Lad/i;->e(D)D

    move-result-wide v3

    goto :goto_3

    :goto_4
    iget-wide v3, v0, Lad/i;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_c

    iget-wide v3, v0, Lad/i;->e:D

    invoke-static {v3, v4, v1, v2}, Lad/i;->a(DD)D

    move-result-wide v1

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    invoke-virtual {v0, v1, v2, v3, v4}, Lad/i;->d(DD)V

    :cond_c
    :goto_5
    return-void

    :goto_6
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public final c(J)Z
    .locals 4

    iget-wide v0, p0, Lad/r;->g:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xbb8

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(DDLjava/lang/Double;)V
    .locals 2

    iget-wide v0, p0, Lad/r;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lad/r;->a:D

    iput-wide p3, p0, Lad/r;->b:D

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lad/r;->d:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lad/r;->e:Z

    iget-wide p1, p0, Lad/r;->f:D

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    cmpl-double p1, p1, p3

    if-ltz p1, :cond_1

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lad/i;->e(D)D

    move-result-wide p3

    iget-object p0, p0, Lad/r;->t:Lad/i;

    iput-wide p3, p0, Lad/i;->a:D

    iget-wide p3, p0, Lad/i;->e:D

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_1

    iget-wide p3, p0, Lad/i;->e:D

    invoke-static {p3, p4, p1, p2}, Lad/i;->a(DD)D

    move-result-wide p1

    const-wide/high16 p3, 0x3fd0000000000000L    # 0.25

    invoke-virtual {p0, p1, p2, p3, p4}, Lad/i;->d(DD)V

    :cond_1
    :goto_0
    return-void
.end method
