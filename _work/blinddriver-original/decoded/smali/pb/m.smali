.class public final Lpb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lpb/a0;

.field public final m:Lqb/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    new-instance v0, Lpb/a0;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v1, Lpb/a0;->p:Lpb/z;

    iput-object v1, v0, Lpb/a0;->l:Lpb/z;

    .line 7
    invoke-direct {p0, v0}, Lpb/m;-><init>(Lpb/a0;)V

    return-void
.end method

.method public constructor <init>(Lpb/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpb/m;->l:Lpb/a0;

    .line 3
    sget-object p1, Lqb/b;->l:Lqb/b;

    iput-object p1, p0, Lpb/m;->m:Lqb/b;

    return-void
.end method


# virtual methods
.method public final a([Lpb/a;)Lpb/q;
    .locals 1

    iget-object v0, p0, Lpb/m;->m:Lqb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqb/a;

    invoke-direct {v0, p1}, Lqb/a;-><init>([Lpb/a;)V

    new-instance p1, Lpb/q;

    invoke-direct {p1, v0, p0}, Lpb/q;-><init>(Lpb/d;Lpb/m;)V

    return-object p1
.end method

.method public final b([Lpb/a;)Lpb/s;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lpb/m;->m:Lqb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqb/a;

    invoke-direct {v0, p1}, Lqb/a;-><init>([Lpb/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lpb/s;

    invoke-direct {p1, v0, p0}, Lpb/s;-><init>(Lpb/d;Lpb/m;)V

    return-object p1
.end method

.method public final c(Lqb/a;)Lpb/u;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lpb/w;

    new-instance v0, Lpb/u;

    invoke-direct {v0, p1, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0

    :cond_0
    iget v1, p1, Lqb/a;->l:I

    iget-object v2, p1, Lqb/a;->n:[Lpb/a;

    array-length v3, v2

    new-array v3, v3, [Lpb/w;

    move v4, v0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_7

    iget v5, p1, Lqb/a;->m:I

    iget-object v6, p0, Lpb/m;->m:Lqb/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int v6, v1, v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    move v5, v7

    :cond_1
    const/4 v8, 0x3

    if-le v6, v8, :cond_2

    move v6, v8

    :cond_2
    const/4 v8, 0x2

    if-ge v6, v8, :cond_3

    move v6, v8

    :cond_3
    new-instance v8, Lqb/a;

    add-int/2addr v6, v5

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-array v9, v7, [Lpb/a;

    iput-object v9, v8, Lqb/a;->n:[Lpb/a;

    iput v6, v8, Lqb/a;->l:I

    iput v5, v8, Lqb/a;->m:I

    invoke-interface {v8}, Lpb/d;->m()Lpb/a;

    move-result-object v5

    aput-object v5, v9, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_6

    invoke-virtual {p1, v4, v6}, Lqb/a;->w(II)D

    move-result-wide v9

    iget-object v11, v8, Lqb/a;->n:[Lpb/a;

    if-eqz v6, :cond_5

    if-eq v6, v7, :cond_4

    aget-object v11, v11, v0

    invoke-virtual {v11, v9, v10, v6}, Lpb/a;->u(DI)V

    goto :goto_2

    :cond_4
    aget-object v11, v11, v0

    iput-wide v9, v11, Lpb/a;->m:D

    goto :goto_2

    :cond_5
    aget-object v11, v11, v0

    iput-wide v9, v11, Lpb/a;->l:D

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    new-instance v5, Lpb/w;

    invoke-direct {v5, v8, p0}, Lpb/w;-><init>(Lpb/d;Lpb/m;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    new-instance p1, Lpb/u;

    invoke-direct {p1, v3, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p1
.end method

.method public final d(Lpb/a;)Lpb/w;
    .locals 1

    if-eqz p1, :cond_0

    filled-new-array {p1}, [Lpb/a;

    move-result-object p1

    iget-object v0, p0, Lpb/m;->m:Lqb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqb/a;

    invoke-direct {v0, p1}, Lqb/a;-><init>([Lpb/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lpb/w;

    invoke-direct {p1, v0, p0}, Lpb/w;-><init>(Lpb/d;Lpb/m;)V

    return-object p1
.end method
