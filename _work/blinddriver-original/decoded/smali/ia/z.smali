.class public final Lia/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs a([Ll4/a;)V
    .locals 7

    const-string v0, "migrations"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget v3, v2, Ll4/a;->a:I

    iget v4, v2, Ll4/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v6, Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Overriding migration "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ROOM"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b()Lia/y;
    .locals 1

    new-instance v0, Lia/y;

    iget-object p0, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Lia/y;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public c(Lia/l;Ljava/lang/String;)Lia/l;
    .locals 1

    const-string v0, "key"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lia/l;

    return-object p0
.end method

.method public d(Ljava/util/HashMap;)V
    .locals 7

    const-string v0, "values"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "key"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_5

    :cond_5
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_6

    :cond_6
    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_6
    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_7

    :cond_7
    const-class v3, [Ljava/lang/Boolean;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_7
    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_8

    :cond_8
    const-class v3, [Ljava/lang/Byte;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_9

    :cond_9
    const-class v3, [Ljava/lang/Integer;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_a

    move v3, v4

    goto :goto_a

    :cond_a
    const-class v3, [Ljava/lang/Long;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_a
    if-eqz v3, :cond_b

    move v3, v4

    goto :goto_b

    :cond_b
    const-class v3, [Ljava/lang/Float;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_b
    if-eqz v3, :cond_c

    move v3, v4

    goto :goto_c

    :cond_c
    const-class v3, [Ljava/lang/Double;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_c
    if-eqz v3, :cond_d

    goto :goto_d

    :cond_d
    const-class v3, [Ljava/lang/String;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_d
    if-eqz v4, :cond_e

    goto/16 :goto_14

    :cond_e
    const-class v3, [Z

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    check-cast v0, [Z

    sget-object v2, Lx4/i;->a:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Boolean;

    :goto_e
    if-ge v4, v2, :cond_f

    aget-boolean v5, v0, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_f
    move-object v0, v3

    goto/16 :goto_14

    :cond_10
    const-class v3, [B

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    check-cast v0, [B

    sget-object v2, Lx4/i;->a:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Byte;

    :goto_f
    if-ge v4, v2, :cond_f

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_11
    const-class v3, [I

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    check-cast v0, [I

    sget-object v2, Lx4/i;->a:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Integer;

    :goto_10
    if-ge v4, v2, :cond_f

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_12
    const-class v3, [J

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    check-cast v0, [J

    sget-object v2, Lx4/i;->a:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Long;

    :goto_11
    if-ge v4, v2, :cond_f

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_13
    const-class v3, [F

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    check-cast v0, [F

    sget-object v2, Lx4/i;->a:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Float;

    :goto_12
    if-ge v4, v2, :cond_f

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_14
    const-class v3, [D

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    check-cast v0, [D

    sget-object v2, Lx4/i;->a:Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Double;

    :goto_13
    if-ge v4, v2, :cond_f

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :goto_14
    iget-object v2, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has invalid type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/j;

    iget-object v3, v3, Lg5/j;->a:Ljava/lang/String;

    invoke-static {v3, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/j;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(Lg5/j;)Ly4/k;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly4/k;

    return-object p0
.end method

.method public g(Lg5/j;)Ly4/k;
    .locals 1

    iget-object p0, p0, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ly4/k;

    invoke-direct {v0, p1}, Ly4/k;-><init>(Lg5/j;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v0, Ly4/k;

    return-object v0
.end method
