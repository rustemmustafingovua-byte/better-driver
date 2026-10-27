.class public final Lf8/j4;
.super Lf8/e;
.source "SourceFile"

# interfaces
.implements Lf8/k4;


# static fields
.field public static final n:Lf8/j4;


# instance fields
.field public final m:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/j4;

    invoke-direct {v0}, Lf8/j4;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf8/e;->l:Z

    sput-object v0, Lf8/j4;->n:Lf8/j4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lf8/e;-><init>()V

    .line 3
    iput-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lf8/k4;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lf8/e;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Lf8/j4;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lf8/e;->a()V

    iget-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lf8/e;->a()V

    .line 4
    instance-of v0, p2, Lf8/k4;

    if-eqz v0, :cond_0

    check-cast p2, Lf8/k4;

    .line 5
    invoke-interface {p2}, Lf8/k4;->f()Ljava/util/List;

    move-result-object p2

    .line 6
    :cond_0
    iget-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 7
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lf8/j4;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lf8/e;->a()V

    iget-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lf8/j;

    if-eqz v1, :cond_2

    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lf8/s5;->a:Lf8/v4;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lf8/v4;->n([BII)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final h(Lf8/j;)V
    .locals 1

    invoke-virtual {p0}, Lf8/e;->a()V

    iget-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final i()Lf8/k4;
    .locals 1

    iget-boolean v0, p0, Lf8/e;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Lf8/l5;

    invoke-direct {v0, p0}, Lf8/l5;-><init>(Lf8/j4;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf8/e;->a()V

    iget-object v0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of p0, p1, Lf8/j;

    if-eqz p0, :cond_1

    check-cast p1, Lf8/j;

    invoke-virtual {p1}, Lf8/j;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p1, [B

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lf8/e;->a()V

    iget-object p0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of p1, p0, Lf8/j;

    if-eqz p1, :cond_1

    check-cast p0, Lf8/j;

    invoke-virtual {p0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    new-instance p1, Ljava/lang/String;

    sget-object p2, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lf8/j4;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
