.class public final Lcom/carrotsearch/hppc/b0;
.super Lcom/carrotsearch/hppc/d;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:I

.field public p:I

.field public final q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/a0;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    .line 49
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 50
    iget p1, p1, Lcom/carrotsearch/hppc/a0;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 52
    new-instance p1, Ln5/b;

    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/c0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    .line 1
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 2
    iget p1, p1, Lcom/carrotsearch/hppc/c0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 4
    new-instance p1, Ln5/a;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/c1;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    .line 85
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 86
    iget p1, p1, Lcom/carrotsearch/hppc/c1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 87
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 88
    new-instance p1, Ln5/h;

    .line 89
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/e0;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    .line 55
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 56
    iget p1, p1, Lcom/carrotsearch/hppc/e0;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 58
    new-instance p1, Ln5/c;

    .line 59
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/g1;I)V
    .locals 0

    iput p2, p0, Lcom/carrotsearch/hppc/b0;->n:I

    packed-switch p2, :pswitch_data_0

    .line 31
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 32
    iget p1, p1, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 34
    new-instance p1, Ln5/i;

    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 37
    :pswitch_0
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 38
    iget p1, p1, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 40
    new-instance p1, Ln5/j;

    .line 41
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 43
    :pswitch_1
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 44
    iget p1, p1, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 46
    new-instance p1, Ln5/f;

    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/i0;I)V
    .locals 0

    iput p2, p0, Lcom/carrotsearch/hppc/b0;->n:I

    packed-switch p2, :pswitch_data_0

    .line 61
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 62
    iget p1, p1, Lcom/carrotsearch/hppc/i0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 64
    new-instance p1, Ln5/d;

    .line 65
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 67
    :pswitch_0
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 68
    iget p1, p1, Lcom/carrotsearch/hppc/i0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 70
    new-instance p1, Ln5/f;

    .line 71
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 73
    :pswitch_1
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 74
    iget p1, p1, Lcom/carrotsearch/hppc/i0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 76
    new-instance p1, Ln5/a;

    .line 77
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/n0;I)V
    .locals 0

    iput p2, p0, Lcom/carrotsearch/hppc/b0;->n:I

    packed-switch p2, :pswitch_data_0

    .line 13
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 14
    iget p1, p1, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 16
    new-instance p1, Ln5/e;

    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 19
    :pswitch_0
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 20
    iget p1, p1, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 22
    new-instance p1, Ln5/j;

    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 25
    :pswitch_1
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 26
    iget p1, p1, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 28
    new-instance p1, Ln5/a;

    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/o1;I)V
    .locals 0

    iput p2, p0, Lcom/carrotsearch/hppc/b0;->n:I

    packed-switch p2, :pswitch_data_0

    .line 91
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 92
    iget p1, p1, Lcom/carrotsearch/hppc/o1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 93
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 94
    new-instance p1, Ln5/k;

    .line 95
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 97
    :pswitch_0
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 98
    iget p1, p1, Lcom/carrotsearch/hppc/o1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 99
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 100
    new-instance p1, Ln5/a;

    .line 101
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    .line 103
    :pswitch_1
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 104
    iget p1, p1, Lcom/carrotsearch/hppc/o1;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 106
    new-instance p1, Ln5/j;

    .line 107
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/w0;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    .line 7
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 8
    iget p1, p1, Lcom/carrotsearch/hppc/w0;->mask:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 10
    new-instance p1, Ln5/f;

    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/y0;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    .line 79
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/carrotsearch/hppc/d;-><init>()V

    .line 80
    iget p1, p1, Lcom/carrotsearch/hppc/y0;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/carrotsearch/hppc/b0;->o:I

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/carrotsearch/hppc/b0;->p:I

    .line 82
    new-instance p1, Ln5/g;

    .line 83
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/carrotsearch/hppc/b0;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/g;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/y0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v5, :cond_1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v5, :cond_1

    iget-object v6, v1, Lcom/carrotsearch/hppc/y0;->l:[J

    aget-wide v6, v6, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_0

    iput v2, v0, Ln5/g;->a:I

    iput-wide v6, v0, Ln5/g;->b:J

    iget-object p0, v1, Lcom/carrotsearch/hppc/y0;->m:[I

    aget p0, p0, v2

    iput p0, v0, Ln5/g;->c:I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v5, :cond_2

    iget-boolean v6, v1, Lcom/carrotsearch/hppc/y0;->q:Z

    if-eqz v6, :cond_2

    iput v2, v0, Ln5/g;->a:I

    iput-wide v3, v0, Ln5/g;->b:J

    iget-object v1, v1, Lcom/carrotsearch/hppc/y0;->m:[I

    aget v1, v1, v5

    iput v1, v0, Ln5/g;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/c;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/e0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_4

    iget-object v4, v1, Lcom/carrotsearch/hppc/e0;->l:[I

    aget v4, v4, v2

    if-eqz v4, :cond_3

    iput v2, v0, Ln5/c;->a:I

    iput v4, v0, Ln5/c;->b:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/e0;->m:[I

    aget p0, p0, v2

    iput p0, v0, Ln5/c;->c:I

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_5

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/e0;->q:Z

    if-eqz v4, :cond_5

    iput v2, v0, Ln5/c;->a:I

    const/4 v4, 0x0

    iput v4, v0, Ln5/c;->b:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/e0;->m:[I

    aget v1, v1, v3

    iput v1, v0, Ln5/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/b;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/a0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_7

    :goto_4
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_7

    iget-object v4, v1, Lcom/carrotsearch/hppc/a0;->l:[I

    aget v4, v4, v2

    if-eqz v4, :cond_6

    iput v2, v0, Ln5/b;->a:I

    iput v4, v0, Ln5/b;->b:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/a0;->m:[D

    aget-wide v1, p0, v2

    iput-wide v1, v0, Ln5/b;->c:D

    goto :goto_5

    :cond_6
    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_8

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/a0;->r:Z

    if-eqz v4, :cond_8

    iput v2, v0, Ln5/b;->a:I

    const/4 v4, 0x0

    iput v4, v0, Ln5/b;->b:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/a0;->m:[D

    aget-wide v3, v1, v3

    iput-wide v3, v0, Ln5/b;->c:D

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_5

    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/a;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/o1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_a

    :goto_6
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_a

    iget-object v4, v1, Lcom/carrotsearch/hppc/o1;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_9

    iput v2, v0, Ln5/a;->a:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/o1;->values:[I

    aget p0, p0, v2

    iput p0, v0, Ln5/a;->b:I

    goto :goto_7

    :cond_9
    goto :goto_6

    :cond_a
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_b

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/o1;->hasEmptyKey:Z

    if-eqz v4, :cond_b

    iput v2, v0, Ln5/a;->a:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/o1;->values:[I

    aget v1, v1, v3

    iput v1, v0, Ln5/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_7

    :cond_b
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/j;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/o1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_d

    :goto_8
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_d

    iget-object v4, v1, Lcom/carrotsearch/hppc/o1;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_c

    iput v2, v0, Ln5/j;->a:I

    iput-object v4, v0, Ln5/j;->b:Ljava/lang/Object;

    goto :goto_9

    :cond_c
    goto :goto_8

    :cond_d
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_e

    iget-boolean v1, v1, Lcom/carrotsearch/hppc/o1;->hasEmptyKey:Z

    if-eqz v1, :cond_e

    iput v2, v0, Ln5/j;->a:I

    iput-object v4, v0, Ln5/j;->b:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_9

    :cond_e
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    move-object v0, v4

    :goto_9
    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/k;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/o1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_10

    :goto_a
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_10

    iget-object v4, v1, Lcom/carrotsearch/hppc/o1;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_f

    iput v2, v0, Ln5/k;->a:I

    iput-object v4, v0, Ln5/k;->b:Ljava/lang/Object;

    iget-object p0, v1, Lcom/carrotsearch/hppc/o1;->values:[I

    aget p0, p0, v2

    iput p0, v0, Ln5/k;->c:I

    goto :goto_b

    :cond_f
    goto :goto_a

    :cond_10
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_11

    iget-boolean v5, v1, Lcom/carrotsearch/hppc/o1;->hasEmptyKey:Z

    if-eqz v5, :cond_11

    iput v2, v0, Ln5/k;->a:I

    iput-object v4, v0, Ln5/k;->b:Ljava/lang/Object;

    iget-object v1, v1, Lcom/carrotsearch/hppc/o1;->values:[I

    aget v1, v1, v3

    iput v1, v0, Ln5/k;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_b

    :cond_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    move-object v0, v4

    :goto_b
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/j;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/g1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_13

    :goto_c
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_13

    iget-object v4, v1, Lcom/carrotsearch/hppc/g1;->keys:[J

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_12

    iput v2, v0, Ln5/j;->a:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p0, p0, v2

    iput-object p0, v0, Ln5/j;->b:Ljava/lang/Object;

    goto :goto_d

    :cond_12
    goto :goto_c

    :cond_13
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_14

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz v4, :cond_14

    iput v2, v0, Ln5/j;->a:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object v1, v1, v3

    iput-object v1, v0, Ln5/j;->b:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_d

    :cond_14
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/f;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/g1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v5, :cond_16

    :goto_e
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v5, :cond_16

    iget-object v6, v1, Lcom/carrotsearch/hppc/g1;->keys:[J

    aget-wide v6, v6, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_15

    iput v2, v0, Ln5/f;->a:I

    iput-wide v6, v0, Ln5/f;->b:J

    goto :goto_f

    :cond_15
    goto :goto_e

    :cond_16
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v5, :cond_17

    iget-boolean v1, v1, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz v1, :cond_17

    iput v2, v0, Ln5/f;->a:I

    iput-wide v3, v0, Ln5/f;->b:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_f

    :cond_17
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/i;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/g1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v5, :cond_19

    :goto_10
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v5, :cond_19

    iget-object v6, v1, Lcom/carrotsearch/hppc/g1;->keys:[J

    aget-wide v6, v6, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_18

    iput v2, v0, Ln5/i;->a:I

    iput-wide v6, v0, Ln5/i;->b:J

    iget-object p0, v1, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p0, p0, v2

    iput-object p0, v0, Ln5/i;->c:Ljava/lang/Object;

    goto :goto_11

    :cond_18
    goto :goto_10

    :cond_19
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v5, :cond_1a

    iget-boolean v6, v1, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz v6, :cond_1a

    iput v2, v0, Ln5/i;->a:I

    iput-wide v3, v0, Ln5/i;->b:J

    iget-object v1, v1, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object v1, v1, v5

    iput-object v1, v0, Ln5/i;->c:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_11

    :cond_1a
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/h;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/c1;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v5, :cond_1c

    :goto_12
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v5, :cond_1c

    iget-object v6, v1, Lcom/carrotsearch/hppc/c1;->keys:[J

    aget-wide v6, v6, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1b

    iput v2, v0, Ln5/h;->a:I

    iput-wide v6, v0, Ln5/h;->b:J

    iget-object p0, v1, Lcom/carrotsearch/hppc/c1;->values:[J

    aget-wide v1, p0, v2

    iput-wide v1, v0, Ln5/h;->c:J

    goto :goto_13

    :cond_1b
    goto :goto_12

    :cond_1c
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v5, :cond_1d

    iget-boolean v6, v1, Lcom/carrotsearch/hppc/c1;->hasEmptyKey:Z

    if-eqz v6, :cond_1d

    iput v2, v0, Ln5/h;->a:I

    iput-wide v3, v0, Ln5/h;->b:J

    iget-object v1, v1, Lcom/carrotsearch/hppc/c1;->values:[J

    aget-wide v3, v1, v5

    iput-wide v3, v0, Ln5/h;->c:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_13

    :cond_1d
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/f;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/w0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v5, :cond_1f

    :goto_14
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v5, :cond_1f

    iget-object v6, v1, Lcom/carrotsearch/hppc/w0;->keys:[J

    aget-wide v6, v6, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1e

    iput v2, v0, Ln5/f;->a:I

    iput-wide v6, v0, Ln5/f;->b:J

    goto :goto_15

    :cond_1e
    goto :goto_14

    :cond_1f
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v5, :cond_20

    iget-boolean v1, v1, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    if-eqz v1, :cond_20

    iput v2, v0, Ln5/f;->a:I

    iput-wide v3, v0, Ln5/f;->b:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_15

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/j;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/n0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_22

    :goto_16
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_22

    iget-object v4, v1, Lcom/carrotsearch/hppc/n0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_21

    iput v2, v0, Ln5/j;->a:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p0, p0, v2

    iput-object p0, v0, Ln5/j;->b:Ljava/lang/Object;

    goto :goto_17

    :cond_21
    goto :goto_16

    :cond_22
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_23

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    if-eqz v4, :cond_23

    iput v2, v0, Ln5/j;->a:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object v1, v1, v3

    iput-object v1, v0, Ln5/j;->b:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_17

    :cond_23
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_17
    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/a;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/n0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_25

    :goto_18
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_25

    iget-object v4, v1, Lcom/carrotsearch/hppc/n0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_24

    iput v2, v0, Ln5/a;->a:I

    iput v4, v0, Ln5/a;->b:I

    goto :goto_19

    :cond_24
    goto :goto_18

    :cond_25
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_26

    iget-boolean v1, v1, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    if-eqz v1, :cond_26

    iput v2, v0, Ln5/a;->a:I

    const/4 v1, 0x0

    iput v1, v0, Ln5/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_19

    :cond_26
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/e;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/n0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_28

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_28

    iget-object v4, v1, Lcom/carrotsearch/hppc/n0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_27

    iput v2, v0, Ln5/e;->a:I

    iput v4, v0, Ln5/e;->b:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p0, p0, v2

    iput-object p0, v0, Ln5/e;->c:Ljava/lang/Object;

    goto :goto_1b

    :cond_27
    goto :goto_1a

    :cond_28
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_29

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    if-eqz v4, :cond_29

    iput v2, v0, Ln5/e;->a:I

    const/4 v4, 0x0

    iput v4, v0, Ln5/e;->b:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object v1, v1, v3

    iput-object v1, v0, Ln5/e;->c:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_1b

    :cond_29
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :pswitch_d
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/f;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/i0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_2b

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_2b

    iget-object v4, v1, Lcom/carrotsearch/hppc/i0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2a

    iput v2, v0, Ln5/f;->a:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/i0;->values:[J

    aget-wide v1, p0, v2

    iput-wide v1, v0, Ln5/f;->b:J

    goto :goto_1d

    :cond_2a
    goto :goto_1c

    :cond_2b
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_2c

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/i0;->hasEmptyKey:Z

    if-eqz v4, :cond_2c

    iput v2, v0, Ln5/f;->a:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/i0;->values:[J

    aget-wide v3, v1, v3

    iput-wide v3, v0, Ln5/f;->b:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_1d

    :cond_2c
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/a;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/i0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_2e

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_2e

    iget-object v4, v1, Lcom/carrotsearch/hppc/i0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2d

    iput v2, v0, Ln5/a;->a:I

    iput v4, v0, Ln5/a;->b:I

    goto :goto_1f

    :cond_2d
    goto :goto_1e

    :cond_2e
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_2f

    iget-boolean v1, v1, Lcom/carrotsearch/hppc/i0;->hasEmptyKey:Z

    if-eqz v1, :cond_2f

    iput v2, v0, Ln5/a;->a:I

    const/4 v1, 0x0

    iput v1, v0, Ln5/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_1f

    :cond_2f
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_1f
    return-object v0

    :pswitch_f
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/d;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/i0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_31

    :goto_20
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_31

    iget-object v4, v1, Lcom/carrotsearch/hppc/i0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_30

    iput v2, v0, Ln5/d;->a:I

    iput v4, v0, Ln5/d;->b:I

    iget-object p0, v1, Lcom/carrotsearch/hppc/i0;->values:[J

    aget-wide v1, p0, v2

    iput-wide v1, v0, Ln5/d;->c:J

    goto :goto_21

    :cond_30
    goto :goto_20

    :cond_31
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_32

    iget-boolean v4, v1, Lcom/carrotsearch/hppc/i0;->hasEmptyKey:Z

    if-eqz v4, :cond_32

    iput v2, v0, Ln5/d;->a:I

    const/4 v4, 0x0

    iput v4, v0, Ln5/d;->b:I

    iget-object v1, v1, Lcom/carrotsearch/hppc/i0;->values:[J

    aget-wide v3, v1, v3

    iput-wide v3, v0, Ln5/d;->c:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_21

    :cond_32
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_21
    return-object v0

    :pswitch_10
    iget-object v0, p0, Lcom/carrotsearch/hppc/b0;->q:Ljava/lang/Object;

    check-cast v0, Ln5/a;

    iget-object v1, p0, Lcom/carrotsearch/hppc/b0;->r:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/c0;

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v3, p0, Lcom/carrotsearch/hppc/b0;->o:I

    if-ge v2, v3, :cond_34

    :goto_22
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ge v2, v3, :cond_34

    iget-object v4, v1, Lcom/carrotsearch/hppc/c0;->keys:[I

    aget v4, v4, v2

    if-eqz v4, :cond_33

    iput v2, v0, Ln5/a;->a:I

    iput v4, v0, Ln5/a;->b:I

    goto :goto_23

    :cond_33
    goto :goto_22

    :cond_34
    iget v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    if-ne v2, v3, :cond_35

    iget-boolean v1, v1, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    if-eqz v1, :cond_35

    iput v2, v0, Ln5/a;->a:I

    const/4 v1, 0x0

    iput v1, v0, Ln5/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/b0;->p:I

    goto :goto_23

    :cond_35
    const/4 v0, 0x2

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v0, 0x0

    :goto_23
    return-object v0

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
