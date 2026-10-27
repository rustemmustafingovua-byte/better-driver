.class public final Lbc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final n:Lbc/a;

.field public static final o:Lbc/a;

.field public static final p:Lbc/a;


# instance fields
.field public l:D

.field public m:D


# direct methods
.method static strictfp constructor <clinit>()V
    .locals 3

    new-instance v0, Lbc/a;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2, v1, v2}, Lbc/a;-><init>(DD)V

    sput-object v0, Lbc/a;->n:Lbc/a;

    new-instance v0, Lbc/a;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v2}, Lbc/a;-><init>(D)V

    sput-object v0, Lbc/a;->o:Lbc/a;

    new-instance v0, Lbc/a;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lbc/a;-><init>(D)V

    sput-object v0, Lbc/a;->p:Lbc/a;

    return-void
.end method

.method public strictfp constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lbc/a;->l:D

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lbc/a;->m:D

    return-void
.end method

.method public strictfp constructor <init>(DD)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lbc/a;->l:D

    .line 6
    iput-wide p3, p0, Lbc/a;->m:D

    return-void
.end method

.method public strictfp constructor <init>(Lbc/a;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lbc/a;->l:D

    .line 9
    iput-wide v0, p0, Lbc/a;->m:D

    .line 10
    iget-wide v0, p1, Lbc/a;->l:D

    iput-wide v0, p0, Lbc/a;->l:D

    .line 11
    iget-wide v0, p1, Lbc/a;->m:D

    iput-wide v0, p0, Lbc/a;->m:D

    return-void
.end method

.method public static strictfp i(D)I
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    cmpg-double p0, v4, p0

    if-gtz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final strictfp a(Lbc/a;)Lbc/a;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lbc/a;->l:D

    iget-wide v4, v1, Lbc/a;->l:D

    div-double v6, v2, v4

    const-wide v8, 0x41a0000002000000L    # 1.34217729E8

    mul-double v10, v6, v8

    sub-double v12, v10, v6

    mul-double/2addr v8, v4

    sub-double/2addr v10, v12

    sub-double v12, v6, v10

    sub-double v14, v8, v4

    mul-double v16, v6, v4

    sub-double/2addr v8, v14

    sub-double v14, v4, v8

    mul-double v18, v10, v8

    sub-double v18, v18, v16

    mul-double/2addr v10, v14

    add-double v10, v10, v18

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    mul-double/2addr v12, v14

    add-double/2addr v12, v8

    sub-double v2, v2, v16

    sub-double/2addr v2, v12

    iget-wide v8, v0, Lbc/a;->m:D

    add-double/2addr v2, v8

    iget-wide v0, v1, Lbc/a;->m:D

    mul-double/2addr v0, v6

    sub-double/2addr v2, v0

    div-double/2addr v2, v4

    add-double v0, v6, v2

    sub-double/2addr v6, v0

    add-double/2addr v6, v2

    new-instance v2, Lbc/a;

    invoke-direct {v2, v0, v1, v6, v7}, Lbc/a;-><init>(DD)V

    return-object v2
.end method

.method public final strictfp clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final strictfp compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lbc/a;

    iget-wide v0, p0, Lbc/a;->l:D

    iget-wide v2, p1, Lbc/a;->l:D

    cmpg-double v4, v0, v2

    const/4 v5, -0x1

    if-gez v4, :cond_0

    return v5

    :cond_0
    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lbc/a;->m:D

    iget-wide p0, p1, Lbc/a;->m:D

    cmpg-double v0, v2, p0

    if-gez v0, :cond_2

    return v5

    :cond_2
    cmpl-double p0, v2, p0

    if-lez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final strictfp f(Z[I)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lbc/a;->l:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lbc/a;->n:Lbc/a;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lbc/a;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lbc/a;->l:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lbc/a;

    iget-wide v2, v0, Lbc/a;->l:D

    neg-double v2, v2

    iget-wide v4, v0, Lbc/a;->m:D

    neg-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lbc/a;-><init>(DD)V

    goto :goto_0

    :cond_2
    new-instance v1, Lbc/a;

    invoke-direct {v1, v0}, Lbc/a;-><init>(Lbc/a;)V

    :goto_0
    move-object v0, v1

    :goto_1
    iget-wide v1, v0, Lbc/a;->l:D

    invoke-static {v1, v2}, Lbc/a;->i(D)I

    move-result v1

    int-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    sget-object v3, Lbc/a;->o:Lbc/a;

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_3

    new-instance v2, Lbc/a;

    invoke-direct {v2, v5, v6}, Lbc/a;-><init>(D)V

    goto :goto_3

    :cond_3
    new-instance v2, Lbc/a;

    invoke-direct {v2, v3}, Lbc/a;-><init>(Lbc/a;)V

    new-instance v7, Lbc/a;

    invoke-direct {v7, v5, v6}, Lbc/a;-><init>(D)V

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v4, :cond_7

    :cond_4
    :goto_2
    if-lez v8, :cond_6

    rem-int/lit8 v9, v8, 0x2

    if-ne v9, v4, :cond_5

    iget-wide v9, v2, Lbc/a;->l:D

    iget-wide v11, v2, Lbc/a;->m:D

    invoke-virtual {v7, v9, v10, v11, v12}, Lbc/a;->r(DD)V

    :cond_5
    div-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_4

    invoke-virtual {v2, v2}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v7

    :cond_7
    if-gez v1, :cond_8

    iget-wide v7, v2, Lbc/a;->l:D

    div-double v9, v5, v7

    const-wide v11, 0x41a0000002000000L    # 1.34217729E8

    mul-double v13, v9, v11

    sub-double v15, v13, v9

    mul-double/2addr v11, v7

    sub-double/2addr v13, v15

    sub-double v15, v9, v13

    sub-double v17, v11, v7

    mul-double v19, v9, v7

    sub-double v11, v11, v17

    sub-double v17, v7, v11

    mul-double v21, v13, v11

    sub-double v21, v21, v19

    mul-double v13, v13, v17

    add-double v13, v13, v21

    mul-double/2addr v11, v15

    add-double/2addr v11, v13

    mul-double v15, v15, v17

    add-double/2addr v15, v11

    sub-double v5, v5, v19

    sub-double/2addr v5, v15

    iget-wide v11, v2, Lbc/a;->m:D

    mul-double/2addr v11, v9

    sub-double/2addr v5, v11

    div-double/2addr v5, v7

    add-double v7, v9, v5

    sub-double/2addr v9, v7

    add-double/2addr v9, v5

    new-instance v2, Lbc/a;

    invoke-direct {v2, v7, v8, v9, v10}, Lbc/a;-><init>(DD)V

    :cond_8
    :goto_3
    invoke-virtual {v0, v2}, Lbc/a;->a(Lbc/a;)Lbc/a;

    move-result-object v0

    iget-wide v5, v0, Lbc/a;->l:D

    iget-wide v7, v3, Lbc/a;->l:D

    cmpl-double v2, v5, v7

    if-gtz v2, :cond_b

    if-nez v2, :cond_9

    iget-wide v7, v0, Lbc/a;->m:D

    iget-wide v9, v3, Lbc/a;->m:D

    cmpl-double v2, v7, v9

    if-lez v2, :cond_9

    goto :goto_4

    :cond_9
    sget-object v2, Lbc/a;->p:Lbc/a;

    iget-wide v7, v2, Lbc/a;->l:D

    cmpg-double v9, v5, v7

    if-ltz v9, :cond_a

    cmpl-double v5, v5, v7

    if-nez v5, :cond_c

    iget-wide v5, v0, Lbc/a;->m:D

    iget-wide v7, v2, Lbc/a;->m:D

    cmpg-double v2, v5, v7

    if-gez v2, :cond_c

    :cond_a
    invoke-virtual {v0, v3}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {v0, v3}, Lbc/a;->a(Lbc/a;)Lbc/a;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    :cond_c
    :goto_5
    add-int/lit8 v2, v1, 0x1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_6
    const/16 v8, 0x1f

    if-gt v7, v8, :cond_13

    if-eqz p1, :cond_d

    if-ne v7, v2, :cond_d

    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    iget-wide v8, v0, Lbc/a;->l:D

    double-to-int v8, v8

    if-gez v8, :cond_e

    goto :goto_9

    :cond_e
    const/16 v9, 0x9

    if-le v8, v9, :cond_f

    const/16 v9, 0x39

    move v10, v4

    goto :goto_7

    :cond_f
    add-int/lit8 v9, v8, 0x30

    int-to-char v9, v9

    move v10, v6

    :goto_7
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-double v8, v8

    new-instance v11, Lbc/a;

    invoke-direct {v11, v8, v9}, Lbc/a;-><init>(D)V

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_8

    :cond_10
    new-instance v8, Lbc/a;

    iget-wide v12, v11, Lbc/a;->l:D

    neg-double v12, v12

    iget-wide v14, v11, Lbc/a;->m:D

    neg-double v14, v14

    invoke-direct {v8, v12, v13, v14, v15}, Lbc/a;-><init>(DD)V

    move-object v11, v8

    :goto_8
    new-instance v8, Lbc/a;

    invoke-direct {v8, v0}, Lbc/a;-><init>(Lbc/a;)V

    iget-wide v12, v11, Lbc/a;->l:D

    iget-wide v14, v11, Lbc/a;->m:D

    invoke-virtual {v8, v12, v13, v14, v15}, Lbc/a;->o(DD)V

    invoke-virtual {v8, v3}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v0

    if-eqz v10, :cond_11

    iget-wide v8, v3, Lbc/a;->l:D

    iget-wide v10, v3, Lbc/a;->m:D

    invoke-virtual {v0, v8, v9, v10, v11}, Lbc/a;->o(DD)V

    :cond_11
    iget-wide v8, v0, Lbc/a;->l:D

    invoke-static {v8, v9}, Lbc/a;->i(D)I

    move-result v8

    if-gez v8, :cond_12

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rsub-int/lit8 v9, v7, 0x1f

    if-lt v8, v9, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_13
    :goto_9
    aput v1, p2, v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp h()Z
    .locals 5

    iget-wide v0, p0, Lbc/a;->l:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbc/a;->m:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final strictfp j(Lbc/a;)Lbc/a;
    .locals 3

    iget-wide v0, p1, Lbc/a;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lbc/a;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0, v0, v1, v0, v1}, Lbc/a;-><init>(DD)V

    return-object p0

    :cond_0
    new-instance v0, Lbc/a;

    invoke-direct {v0, p0}, Lbc/a;-><init>(Lbc/a;)V

    iget-wide v1, p1, Lbc/a;->l:D

    iget-wide p0, p1, Lbc/a;->m:D

    invoke-virtual {v0, v1, v2, p0, p1}, Lbc/a;->r(DD)V

    return-object v0
.end method

.method public final strictfp l(D)V
    .locals 8

    iget-wide v0, p0, Lbc/a;->l:D

    add-double v2, v0, p1

    sub-double v4, v2, v0

    sub-double v6, v2, v4

    sub-double/2addr p1, v4

    sub-double/2addr v0, v6

    add-double/2addr v0, p1

    iget-wide p1, p0, Lbc/a;->m:D

    add-double/2addr v0, p1

    add-double p1, v2, v0

    sub-double/2addr v2, p1

    add-double/2addr v2, v0

    add-double v0, p1, v2

    iput-wide v0, p0, Lbc/a;->l:D

    sub-double/2addr p1, v0

    add-double/2addr p1, v2

    iput-wide p1, p0, Lbc/a;->m:D

    return-void
.end method

.method public final strictfp o(DD)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lbc/a;->l:D

    add-double v3, v1, p1

    iget-wide v5, v0, Lbc/a;->m:D

    add-double v7, v5, p3

    sub-double v9, v3, v1

    sub-double v11, v7, v5

    sub-double v13, v3, v9

    sub-double v15, v7, v11

    sub-double v9, p1, v9

    sub-double/2addr v1, v13

    add-double/2addr v1, v9

    sub-double v9, p3, v11

    sub-double/2addr v5, v15

    add-double/2addr v5, v9

    add-double/2addr v1, v7

    add-double v7, v3, v1

    sub-double/2addr v3, v7

    add-double/2addr v3, v1

    add-double/2addr v3, v5

    add-double v1, v7, v3

    sub-double/2addr v7, v1

    add-double/2addr v7, v3

    iput-wide v1, v0, Lbc/a;->l:D

    iput-wide v7, v0, Lbc/a;->m:D

    return-void
.end method

.method public final strictfp p(Lbc/a;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lbc/a;->l:D

    iget-wide v4, v1, Lbc/a;->m:D

    iget-wide v6, v0, Lbc/a;->l:D

    div-double v8, v6, v2

    const-wide v10, 0x41a0000002000000L    # 1.34217729E8

    mul-double v12, v8, v10

    sub-double v14, v12, v8

    mul-double/2addr v10, v2

    sub-double/2addr v12, v14

    sub-double v14, v8, v12

    sub-double v16, v10, v2

    mul-double v18, v8, v2

    sub-double v10, v10, v16

    sub-double v16, v2, v10

    mul-double v20, v12, v10

    sub-double v20, v20, v18

    mul-double v12, v12, v16

    add-double v12, v12, v20

    mul-double/2addr v10, v14

    add-double/2addr v10, v12

    mul-double v14, v14, v16

    add-double/2addr v14, v10

    sub-double v6, v6, v18

    sub-double/2addr v6, v14

    iget-wide v10, v0, Lbc/a;->m:D

    add-double/2addr v6, v10

    mul-double/2addr v4, v8

    sub-double/2addr v6, v4

    div-double/2addr v6, v2

    add-double v1, v8, v6

    iput-wide v1, v0, Lbc/a;->l:D

    sub-double/2addr v8, v1

    add-double/2addr v8, v6

    iput-wide v8, v0, Lbc/a;->m:D

    return-void
.end method

.method public final strictfp r(DD)V
    .locals 14

    iget-wide v0, p0, Lbc/a;->l:D

    const-wide v2, 0x41a0000002000000L    # 1.34217729E8

    mul-double v4, v0, v2

    sub-double v6, v4, v0

    mul-double/2addr v2, p1

    sub-double/2addr v4, v6

    sub-double v6, v0, v4

    sub-double v8, v2, p1

    mul-double v10, v0, p1

    sub-double/2addr v2, v8

    sub-double v8, p1, v2

    mul-double v12, v4, v2

    sub-double/2addr v12, v10

    mul-double/2addr v4, v8

    add-double/2addr v4, v12

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    mul-double v0, v0, p3

    iget-wide v2, p0, Lbc/a;->m:D

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    add-double/2addr v2, v6

    add-double v0, v10, v2

    sub-double/2addr v10, v0

    add-double/2addr v10, v2

    iput-wide v0, p0, Lbc/a;->l:D

    iput-wide v10, p0, Lbc/a;->m:D

    return-void
.end method

.method public final strictfp s(D)V
    .locals 2

    iget-wide v0, p0, Lbc/a;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    neg-double p1, p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lbc/a;->o(DD)V

    return-void
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lbc/a;->l:D

    invoke-static {v0, v1}, Lbc/a;->i(D)I

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x0

    const-string v3, "NaN "

    const-string v4, "0.0"

    const-wide/16 v5, 0x0

    const-string v7, "-"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x30

    if-lt v0, v1, :cond_9

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget-wide v0, p0, Lbc/a;->l:D

    cmpl-double v11, v0, v5

    if-nez v11, :cond_0

    iget-wide v11, p0, Lbc/a;->m:D

    cmpl-double v5, v11, v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    new-array v0, v8, [I

    invoke-virtual {p0, v8, v0}, Lbc/a;->f(Z[I)Ljava/lang/String;

    move-result-object v1

    aget v0, v0, v9

    add-int/2addr v0, v8

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-gez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v0, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    if-ge v9, v0, :cond_4

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v9, v0, :cond_6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".0"

    invoke-static {v1, v0, v2}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lbc/a;->h()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v7, v1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1

    :cond_9
    iget-wide v0, p0, Lbc/a;->l:D

    cmpl-double v11, v0, v5

    if-nez v11, :cond_a

    iget-wide v11, p0, Lbc/a;->m:D

    cmpl-double v11, v11, v5

    if-nez v11, :cond_a

    const-string p0, "0.0E0"

    return-object p0

    :cond_a
    cmpl-double v11, v0, v5

    if-nez v11, :cond_b

    iget-wide v11, p0, Lbc/a;->m:D

    cmpl-double v5, v11, v5

    if-nez v5, :cond_b

    move-object v2, v4

    goto :goto_4

    :cond_b
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v2, v3

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    return-object v2

    :cond_d
    new-array v0, v8, [I

    invoke-virtual {p0, v9, v0}, Lbc/a;->f(Z[I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v0, v9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_e

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_e
    const-string v2, ""

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbc/a;->h()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v7, v1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {v1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Found leading zero: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final strictfp u(Lbc/a;)V
    .locals 4

    iget-wide v0, p0, Lbc/a;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lbc/a;->l:D

    neg-double v0, v0

    iget-wide v2, p1, Lbc/a;->m:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lbc/a;->o(DD)V

    return-void
.end method
