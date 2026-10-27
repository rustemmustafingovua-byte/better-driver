.class public final Lf8/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lf8/k3;


# instance fields
.field public final a:Lf8/s4;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf8/k3;

    new-instance v1, Lf8/s4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lf8/s4;-><init>(I)V

    invoke-direct {v0, v1}, Lf8/k3;-><init>(Lf8/s4;)V

    invoke-virtual {v0}, Lf8/k3;->k()V

    sput-object v0, Lf8/k3;->d:Lf8/k3;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf8/s4;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lf8/s4;-><init>(I)V

    .line 3
    iput-object v0, p0, Lf8/k3;->a:Lf8/s4;

    return-void
.end method

.method public constructor <init>(Lf8/s4;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lf8/k3;->a:Lf8/s4;

    .line 6
    invoke-virtual {p0}, Lf8/k3;->k()V

    return-void
.end method

.method public static c(Lf8/s4;Z)Lf8/s4;
    .locals 3

    new-instance v0, Lf8/s4;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lf8/s4;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lf8/s4;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lf8/s4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lf8/k3;->d(Lf8/s4;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf8/s4;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lf8/k3;->d(Lf8/s4;Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static d(Lf8/s4;Ljava/util/Map$Entry;Z)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_0

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static i(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/j3;

    move-object v1, v0

    check-cast v1, Lf8/v2;

    invoke-virtual {v1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v1

    iget-object v1, v1, Lf8/x5;->l:Lf8/y5;

    sget-object v2, Lf8/y5;->u:Lf8/y5;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    check-cast v0, Lf8/v2;

    invoke-virtual {v0}, Lf8/v2;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/o4;

    invoke-interface {v0}, Lf8/p4;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lf8/o4;

    if-eqz v0, :cond_2

    check-cast p0, Lf8/o4;

    invoke-interface {p0}, Lf8/p4;->p()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    instance-of p0, p0, Lf8/i4;

    if-eqz p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static j(Lf8/x5;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lf8/x5;->l:Lf8/y5;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    instance-of p0, p1, Lf8/o4;

    if-nez p0, :cond_1

    instance-of p0, p1, Lf8/i4;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lf8/b4;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0

    :pswitch_2
    instance-of p0, p1, Lf8/j;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0

    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final a(Lf8/v2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v0

    invoke-static {v0, p2}, Lf8/k3;->j(Lf8/x5;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lf8/k3;
    .locals 4

    new-instance v0, Lf8/k3;

    invoke-direct {v0}, Lf8/k3;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lf8/k3;->a:Lf8/s4;

    iget-object v3, v2, Lf8/s4;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lf8/s4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/j3;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lf8/k3;->n(Lf8/j3;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lf8/s4;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/j3;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lf8/k3;->n(Lf8/j3;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lf8/k3;->c:Z

    iput-boolean p0, v0, Lf8/k3;->c:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf8/k3;->b()Lf8/k3;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lf8/k3;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lf8/k3;

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    iget-object p1, p1, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Lf8/k3;->c:Z

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lf8/k3;->c(Lf8/s4;Z)Lf8/s4;

    move-result-object v0

    iget-boolean p0, p0, Lf8/s4;->o:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lf8/s4;->f()V

    :cond_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lf8/s4;->o:Z

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lf8/v2;)Z
    .locals 1

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lf8/k3;->a:Lf8/s4;

    iget-object v3, v2, Lf8/s4;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lf8/s4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lf8/k3;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lf8/s4;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lf8/k3;->i(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0}, Lf8/s4;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lf8/k3;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {v0}, Lf8/s4;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf8/k3;->b:Z

    return-void
.end method

.method public final l(Lf8/k3;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lf8/k3;->a:Lf8/s4;

    iget-object v2, v1, Lf8/s4;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lf8/s4;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf8/k3;->m(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lf8/s4;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lf8/k3;->m(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final m(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/j3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast v0, Lf8/v2;

    invoke-virtual {v0}, Lf8/v2;->l()Z

    move-result v1

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lf8/k3;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v0}, Lf8/v2;->i()Lf8/x5;

    move-result-object v1

    iget-object v1, v1, Lf8/x5;->l:Lf8/y5;

    sget-object v2, Lf8/y5;->u:Lf8/y5;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lf8/k3;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    check-cast v1, Lf8/o4;

    invoke-interface {v1}, Lf8/o4;->f()Lf8/n4;

    move-result-object v1

    check-cast p1, Lf8/o4;

    check-cast v1, Lf8/a;

    check-cast p1, Lf8/c;

    invoke-virtual {v1, p1}, Lf8/a;->x(Lf8/c;)Lf8/a;

    move-result-object p1

    invoke-interface {p1}, Lf8/n4;->build()Lf8/o4;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-static {p1}, Lf8/k3;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n(Lf8/j3;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lf8/v2;

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v0

    const-string v1, "Wrong object type used with protocol message reflection."

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v4

    invoke-static {v4, v3}, Lf8/k3;->j(Lf8/x5;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object p2, v0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v0

    invoke-static {v0, p2}, Lf8/k3;->j(Lf8/x5;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0, p1, p2}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
