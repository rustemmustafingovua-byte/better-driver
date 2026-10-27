.class public final synthetic Lm0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lm0/x;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Lm0/t0;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lm0/x;IILm0/t0;Lt8/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/e0;->l:Lm0/x;

    iput p2, p0, Lm0/e0;->m:I

    iput p3, p0, Lm0/e0;->n:I

    iput-object p4, p0, Lm0/e0;->o:Lm0/t0;

    iput-object p5, p0, Lm0/e0;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lm0/e0;->p:Ljava/lang/Object;

    invoke-interface {v1}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, v0, Lm0/e0;->o:Lm0/t0;

    invoke-interface {v2}, Lm0/t0;->a()Z

    move-result v3

    invoke-interface {v2}, Lm0/t0;->h()Lm0/k;

    move-result-object v2

    sget-object v4, Lm0/k;->l:Lm0/k;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget-object v4, v0, Lm0/e0;->l:Lm0/x;

    iget-object v7, v4, Lm0/x;->f:Lp2/j0;

    iget v8, v0, Lm0/e0;->m:I

    invoke-virtual {v7, v8}, Lp2/j0;->j(I)J

    move-result-wide v9

    iget-object v7, v4, Lm0/x;->f:Lp2/j0;

    iget-object v11, v7, Lp2/j0;->b:Lp2/n;

    sget v12, Lp2/l0;->c:I

    const/16 v12, 0x20

    shr-long v12, v9, v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lp2/n;->d(I)I

    move-result v13

    iget v14, v11, Lp2/n;->f:I

    if-ne v13, v1, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v14, :cond_2

    add-int/lit8 v12, v14, -0x1

    invoke-virtual {v7, v12}, Lp2/j0;->g(I)I

    move-result v12

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v1}, Lp2/j0;->g(I)I

    move-result v12

    :goto_1
    const-wide v15, 0xffffffffL

    and-long/2addr v9, v15

    long-to-int v7, v9

    invoke-virtual {v11, v7}, Lp2/n;->d(I)I

    move-result v9

    if-ne v9, v1, :cond_3

    goto :goto_2

    :cond_3
    if-lt v1, v14, :cond_4

    sub-int/2addr v14, v6

    invoke-virtual {v11, v14, v5}, Lp2/n;->c(IZ)I

    move-result v7

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v1, v5}, Lp2/n;->c(IZ)I

    move-result v7

    :goto_2
    iget v0, v0, Lm0/e0;->n:I

    if-ne v12, v0, :cond_5

    invoke-virtual {v4, v7}, Lm0/x;->a(I)Lm0/z;

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v7, v0, :cond_6

    invoke-virtual {v4, v12}, Lm0/x;->a(I)Lm0/z;

    move-result-object v0

    return-object v0

    :cond_6
    xor-int v0, v3, v2

    if-eqz v0, :cond_7

    if-gt v8, v7, :cond_8

    goto :goto_3

    :cond_7
    if-lt v8, v12, :cond_9

    :cond_8
    move v12, v7

    :cond_9
    :goto_3
    invoke-virtual {v4, v12}, Lm0/x;->a(I)Lm0/z;

    move-result-object v0

    return-object v0
.end method
