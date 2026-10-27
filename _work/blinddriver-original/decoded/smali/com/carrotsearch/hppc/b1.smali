.class public final Lcom/carrotsearch/hppc/b1;
.super Lcom/carrotsearch/hppc/d;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:Ln5/f;

.field public final p:I

.field public q:I

.field public final synthetic r:Lcom/carrotsearch/hppc/c1;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/c1;I)V
    .locals 0

    iput p2, p0, Lcom/carrotsearch/hppc/b1;->n:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/carrotsearch/hppc/b1;->r:Lcom/carrotsearch/hppc/c1;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    iget p1, p1, Lcom/carrotsearch/hppc/c1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b1;->p:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b1;->q:I

    new-instance p1, Ln5/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/carrotsearch/hppc/b1;->o:Ln5/f;

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/carrotsearch/hppc/b1;->r:Lcom/carrotsearch/hppc/c1;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    iget p1, p1, Lcom/carrotsearch/hppc/c1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b1;->p:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b1;->q:I

    new-instance p1, Ln5/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/carrotsearch/hppc/b1;->o:Ln5/f;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/carrotsearch/hppc/b1;->n:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/b1;->o:Ln5/f;

    iget-object v2, p0, Lcom/carrotsearch/hppc/b1;->r:Lcom/carrotsearch/hppc/c1;

    iget v3, p0, Lcom/carrotsearch/hppc/b1;->p:I

    if-ge v0, v3, :cond_1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    iget v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    if-ge v0, v3, :cond_1

    iget-object v4, v2, Lcom/carrotsearch/hppc/c1;->keys:[J

    aget-wide v4, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iput v0, v1, Ln5/f;->a:I

    iget-object p0, v2, Lcom/carrotsearch/hppc/c1;->values:[J

    aget-wide v2, p0, v0

    iput-wide v2, v1, Ln5/f;->b:J

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    if-ne v0, v3, :cond_2

    iget-boolean v4, v2, Lcom/carrotsearch/hppc/c1;->hasEmptyKey:Z

    if-eqz v4, :cond_2

    iput v0, v1, Ln5/f;->a:I

    iget-object v2, v2, Lcom/carrotsearch/hppc/c1;->values:[J

    aget-wide v2, v2, v3

    iput-wide v2, v1, Ln5/f;->b:J

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :pswitch_0
    iget v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/b1;->o:Ln5/f;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/carrotsearch/hppc/b1;->r:Lcom/carrotsearch/hppc/c1;

    iget v5, p0, Lcom/carrotsearch/hppc/b1;->p:I

    if-ge v0, v5, :cond_4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    iget v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    if-ge v0, v5, :cond_4

    iget-object v6, v4, Lcom/carrotsearch/hppc/c1;->keys:[J

    aget-wide v6, v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    iput v0, v1, Ln5/f;->a:I

    iput-wide v6, v1, Ln5/f;->b:J

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    if-ne v0, v5, :cond_5

    iget-boolean v4, v4, Lcom/carrotsearch/hppc/c1;->hasEmptyKey:Z

    if-eqz v4, :cond_5

    iput v0, v1, Ln5/f;->a:I

    iput-wide v2, v1, Ln5/f;->b:J

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/b1;->q:I

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v1, 0x0

    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
