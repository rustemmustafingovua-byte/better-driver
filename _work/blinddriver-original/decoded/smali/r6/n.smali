.class public final Lr6/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lf8/p2;

.field public final b:I


# direct methods
.method public constructor <init>(Lu6/m;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v0, Lv6/p;

    iget-object v0, v0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    add-int/2addr v0, v0

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/16 v1, 0x8

    :goto_1
    if-ge v1, v0, :cond_1

    add-int/2addr v1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lr6/n;->b:I

    new-array v0, v1, [Lf8/p2;

    iget-object p1, p1, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p1, Lv6/p;

    invoke-virtual {p1}, Lv6/p;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lv6/k;

    invoke-virtual {p1}, Lv6/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Lu6/b0;

    check-cast v1, Lb6/u;

    iget v3, v2, Lu6/b0;->a:I

    iget v4, p0, Lr6/n;->b:I

    and-int/2addr v3, v4

    new-instance v4, Lf8/p2;

    aget-object v5, v0, v3

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lf8/p2;->c:Ljava/lang/Object;

    iput-object v1, v4, Lf8/p2;->b:Ljava/lang/Object;

    iget-boolean v1, v2, Lu6/b0;->d:Z

    iput-boolean v1, v4, Lf8/p2;->a:Z

    iget-object v1, v2, Lu6/b0;->b:Ljava/lang/Class;

    iput-object v1, v4, Lf8/p2;->d:Ljava/lang/Object;

    iget-object v1, v2, Lu6/b0;->c:Lb6/l;

    iput-object v1, v4, Lf8/p2;->e:Ljava/lang/Object;

    aput-object v4, v0, v3

    goto :goto_2

    :cond_2
    iput-object v0, p0, Lr6/n;->a:[Lf8/p2;

    return-void
.end method


# virtual methods
.method public final a(Lb6/l;)Lb6/u;
    .locals 2

    invoke-virtual {p1}, Lb6/l;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lr6/n;->b:I

    and-int/2addr v0, v1

    iget-object p0, p0, Lr6/n;->a:[Lf8/p2;

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lf8/p2;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v0, Lb6/l;

    invoke-virtual {p1, v0}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0

    :cond_1
    iget-object p0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p0, Lf8/p2;

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Lf8/p2;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v0, Lb6/l;

    invoke-virtual {p1, v0}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/Class;)Lb6/u;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lr6/n;->b:I

    and-int/2addr v0, v1

    iget-object p0, p0, Lr6/n;->a:[Lf8/p2;

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lf8/p2;->a:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0

    :cond_1
    iget-object p0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p0, Lf8/p2;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lf8/p2;->a:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
