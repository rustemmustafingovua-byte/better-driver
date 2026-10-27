.class public final Lcom/carrotsearch/hppc/v;
.super Lcom/carrotsearch/hppc/d;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;

.field public p:I

.field public final q:Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/s0;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/v;->n:I

    .line 21
    iput-object p1, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 22
    new-instance v0, Ln5/f;

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    .line 25
    iget-object v1, p1, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ln5/f;->a:I

    .line 26
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result p1

    iput p1, p0, Lcom/carrotsearch/hppc/v;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/w;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/v;->n:I

    .line 15
    iput-object p1, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 16
    new-instance v0, Ln5/a;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    .line 19
    iget v1, p1, Lcom/carrotsearch/hppc/w;->m:I

    iget-object v2, p1, Lcom/carrotsearch/hppc/w;->l:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    :goto_0
    iput v1, v0, Ln5/a;->a:I

    .line 20
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/w;->size()I

    move-result p1

    iput p1, p0, Lcom/carrotsearch/hppc/v;->p:I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/v;->n:I

    .line 1
    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 2
    new-instance v0, Ln5/a;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Ln5/a;->a:I

    .line 6
    iput p2, p0, Lcom/carrotsearch/hppc/v;->p:I

    .line 7
    iput-object p1, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    return-void
.end method

.method public constructor <init>([JI)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/carrotsearch/hppc/v;->n:I

    .line 8
    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 9
    new-instance v0, Ln5/f;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Ln5/f;->a:I

    .line 13
    iput p2, p0, Lcom/carrotsearch/hppc/v;->p:I

    .line 14
    iput-object p1, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/v;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    check-cast v0, Ln5/f;

    iget v1, v0, Ln5/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/carrotsearch/hppc/v;->p:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    check-cast p0, [J

    iput v1, v0, Ln5/f;->a:I

    aget-wide v1, p0, v1

    iput-wide v1, v0, Ln5/f;->b:J

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    check-cast v0, Ln5/f;

    iget v1, p0, Lcom/carrotsearch/hppc/v;->p:I

    if-nez v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/carrotsearch/hppc/v;->p:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    check-cast p0, Lcom/carrotsearch/hppc/s0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    iget v1, v0, Ln5/f;->a:I

    array-length v2, p0

    invoke-static {v1, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v1

    iput v1, v0, Ln5/f;->a:I

    aget-wide v1, p0, v1

    iput-wide v1, v0, Ln5/f;->b:J

    :goto_1
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    check-cast v0, Ln5/a;

    iget v1, v0, Ln5/a;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/carrotsearch/hppc/v;->p:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    check-cast p0, [I

    iput v1, v0, Ln5/a;->a:I

    aget p0, p0, v1

    iput p0, v0, Ln5/a;->b:I

    :goto_2
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/carrotsearch/hppc/v;->o:Ljava/lang/Object;

    check-cast v0, Ln5/a;

    iget v1, p0, Lcom/carrotsearch/hppc/v;->p:I

    if-nez v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/carrotsearch/hppc/v;->p:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/v;->q:Ljava/lang/Cloneable;

    check-cast p0, Lcom/carrotsearch/hppc/w;

    iget-object p0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    iget v1, v0, Ln5/a;->a:I

    array-length v2, p0

    invoke-static {v1, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v1

    iput v1, v0, Ln5/a;->a:I

    aget p0, p0, v1

    iput p0, v0, Ln5/a;->b:I

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
