.class public final synthetic Ln1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ln1/r;


# direct methods
.method public synthetic constructor <init>(Ln1/r;I)V
    .locals 0

    iput p2, p0, Ln1/o;->l:I

    iput-object p1, p0, Ln1/o;->m:Ln1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(D)D
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget v3, v0, Ln1/o;->l:I

    iget-object v0, v0, Ln1/o;->m:Ln1/r;

    packed-switch v3, :pswitch_data_0

    iget-wide v6, v0, Ln1/r;->b:D

    iget-wide v8, v0, Ln1/r;->c:D

    iget-wide v10, v0, Ln1/r;->d:D

    iget-wide v12, v0, Ln1/r;->e:D

    iget-wide v14, v0, Ln1/r;->f:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v4, v0, Ln1/r;->g:D

    move-wide/from16 v18, v4

    iget-wide v3, v0, Ln1/r;->a:D

    mul-double/2addr v12, v10

    cmpl-double v0, v1, v12

    if-ltz v0, :cond_0

    sub-double v0, v1, v14

    div-double v4, v16, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v8

    div-double/2addr v0, v6

    goto :goto_0

    :cond_0
    sub-double v0, v1, v18

    div-double/2addr v0, v10

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v3, v0, Ln1/r;->b:D

    iget-wide v5, v0, Ln1/r;->c:D

    iget-wide v7, v0, Ln1/r;->d:D

    iget-wide v9, v0, Ln1/r;->e:D

    iget-wide v11, v0, Ln1/r;->a:D

    mul-double/2addr v9, v7

    cmpl-double v0, v1, v9

    if-ltz v0, :cond_1

    div-double v7, v16, v11

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v5

    div-double/2addr v0, v3

    goto :goto_1

    :cond_1
    div-double v0, v1, v7

    :goto_1
    return-wide v0

    :pswitch_1
    sget-object v3, Ln1/d;->a:[F

    invoke-static {v0, v1, v2}, Ln1/d;->d(Ln1/r;D)D

    move-result-wide v0

    return-wide v0

    :pswitch_2
    sget-object v3, Ln1/d;->a:[F

    invoke-static {v0, v1, v2}, Ln1/d;->b(Ln1/r;D)D

    move-result-wide v0

    return-wide v0

    :pswitch_3
    iget-wide v3, v0, Ln1/r;->b:D

    iget-wide v5, v0, Ln1/r;->c:D

    iget-wide v7, v0, Ln1/r;->d:D

    iget-wide v9, v0, Ln1/r;->e:D

    iget-wide v11, v0, Ln1/r;->f:D

    iget-wide v13, v0, Ln1/r;->g:D

    move-wide v15, v3

    iget-wide v3, v0, Ln1/r;->a:D

    cmpl-double v0, v1, v9

    if-ltz v0, :cond_2

    mul-double v0, v15, v1

    add-double/2addr v0, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v11

    goto :goto_2

    :cond_2
    mul-double/2addr v7, v1

    add-double v0, v7, v13

    :goto_2
    return-wide v0

    :pswitch_4
    iget-wide v3, v0, Ln1/r;->b:D

    iget-wide v5, v0, Ln1/r;->c:D

    iget-wide v7, v0, Ln1/r;->d:D

    iget-wide v9, v0, Ln1/r;->e:D

    iget-wide v11, v0, Ln1/r;->a:D

    cmpl-double v0, v1, v9

    if-ltz v0, :cond_3

    mul-double/2addr v3, v1

    add-double/2addr v3, v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_3

    :cond_3
    mul-double v0, v7, v1

    :goto_3
    return-wide v0

    :pswitch_5
    sget-object v3, Ln1/d;->a:[F

    invoke-static {v0, v1, v2}, Ln1/d;->c(Ln1/r;D)D

    move-result-wide v0

    return-wide v0

    :pswitch_6
    sget-object v3, Ln1/d;->a:[F

    invoke-static {v0, v1, v2}, Ln1/d;->a(Ln1/r;D)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
