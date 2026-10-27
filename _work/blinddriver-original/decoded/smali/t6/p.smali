.class public final Lt6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final A:Lt6/k;

.field public static final B:Lt6/k;

.field public static final C:Lt6/k;

.field public static final D:Lt6/k;

.field public static final E:Lt6/k;

.field public static final F:Lt6/k;

.field public static final G:Lt6/k;

.field public static final H:Lt6/k;

.field public static final n:[Lb6/l;

.field public static final o:Lt6/p;

.field public static final p:Lt6/o;

.field public static final q:Ljava/lang/Class;

.field public static final r:Ljava/lang/Class;

.field public static final s:Ljava/lang/Class;

.field public static final t:Ljava/lang/Class;

.field public static final u:Ljava/lang/Class;

.field public static final v:Ljava/lang/Class;

.field public static final w:Ljava/lang/Class;

.field public static final x:Ljava/lang/Class;

.field public static final y:Ljava/lang/Class;

.field public static final z:Lt6/k;


# instance fields
.field public final l:Lu6/m;

.field public final m:Lj9/y;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    new-array v0, v0, [Lb6/l;

    sput-object v0, Lt6/p;->n:[Lb6/l;

    new-instance v0, Lt6/p;

    invoke-direct {v0}, Lt6/p;-><init>()V

    sput-object v0, Lt6/p;->o:Lt6/p;

    sget-object v0, Lt6/o;->r:Lt6/o;

    sput-object v0, Lt6/p;->p:Lt6/o;

    const-class v0, Ljava/lang/String;

    sput-object v0, Lt6/p;->q:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    sput-object v1, Lt6/p;->r:Ljava/lang/Class;

    const-class v2, Ljava/lang/Comparable;

    sput-object v2, Lt6/p;->s:Ljava/lang/Class;

    const-class v3, Ljava/lang/Enum;

    sput-object v3, Lt6/p;->t:Ljava/lang/Class;

    const-class v4, Lb6/q;

    sput-object v4, Lt6/p;->u:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sput-object v5, Lt6/p;->v:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sput-object v6, Lt6/p;->w:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sput-object v7, Lt6/p;->x:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sput-object v8, Lt6/p;->y:Ljava/lang/Class;

    new-instance v9, Lt6/k;

    invoke-direct {v9, v5}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v9, Lt6/p;->z:Lt6/k;

    new-instance v5, Lt6/k;

    invoke-direct {v5, v6}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v5, Lt6/p;->A:Lt6/k;

    new-instance v5, Lt6/k;

    invoke-direct {v5, v7}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v5, Lt6/p;->B:Lt6/k;

    new-instance v5, Lt6/k;

    invoke-direct {v5, v8}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v5, Lt6/p;->C:Lt6/k;

    new-instance v5, Lt6/k;

    invoke-direct {v5, v0}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v5, Lt6/p;->D:Lt6/k;

    new-instance v0, Lt6/k;

    invoke-direct {v0, v1}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lt6/p;->E:Lt6/k;

    new-instance v0, Lt6/k;

    invoke-direct {v0, v2}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lt6/p;->F:Lt6/k;

    new-instance v0, Lt6/k;

    invoke-direct {v0, v3}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lt6/p;->G:Lt6/k;

    new-instance v0, Lt6/k;

    invoke-direct {v0, v4}, Lt6/k;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lt6/p;->H:Lt6/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lu6/m;

    const/16 v1, 0x10

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lu6/m;-><init>(II)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt6/p;->l:Lu6/m;

    new-instance v0, Lj9/y;

    invoke-direct {v0, p0}, Lj9/y;-><init>(Lt6/p;)V

    iput-object v0, p0, Lt6/p;->m:Lj9/y;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lt6/k;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lt6/p;->v:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object p0, Lt6/p;->z:Lt6/k;

    return-object p0

    :cond_0
    sget-object v0, Lt6/p;->x:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object p0, Lt6/p;->B:Lt6/k;

    return-object p0

    :cond_1
    sget-object v0, Lt6/p;->y:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    sget-object p0, Lt6/p;->C:Lt6/k;

    return-object p0

    :cond_2
    sget-object v0, Lt6/p;->w:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    sget-object p0, Lt6/p;->A:Lt6/k;

    return-object p0

    :cond_3
    sget-object v0, Lt6/p;->q:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    sget-object p0, Lt6/p;->D:Lt6/k;

    return-object p0

    :cond_4
    sget-object v0, Lt6/p;->r:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    sget-object p0, Lt6/p;->E:Lt6/k;

    return-object p0

    :cond_5
    sget-object v0, Lt6/p;->u:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    sget-object p0, Lt6/p;->H:Lt6/k;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lb6/l;Lb6/l;)Z
    .locals 6

    instance-of v0, p1, Lt6/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lt6/h;

    iput-object p0, p1, Lt6/h;->y:Lb6/l;

    return v1

    :cond_0
    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v2, p1, Lb6/l;->o:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lb6/l;->P()Lt6/o;

    move-result-object p0

    invoke-virtual {p0}, Lt6/o;->e()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lb6/l;->P()Lt6/o;

    move-result-object p1

    invoke-virtual {p1}, Lt6/o;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb6/l;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb6/l;

    invoke-static {v4, v5}, Lt6/p;->e(Lb6/l;Lb6/l;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static i(Lb6/l;Ljava/lang/Class;)Lb6/l;
    .locals 2

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lb6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Class %s not a super-type of %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Internal error: class %s not included as super-type for %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_9

    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    const-string v0, "char"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    const-string v0, "void"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_8
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_a
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    if-nez v1, :cond_b

    invoke-static {p0}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_b
    invoke-static {v1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static n(Lb6/l;Ljava/lang/Class;)[Lb6/l;
    .locals 0

    invoke-virtual {p0, p1}, Lb6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lt6/p;->n:[Lb6/l;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb6/l;->P()Lt6/o;

    move-result-object p0

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    return-object p0
.end method


# virtual methods
.method public final b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;
    .locals 9

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Class;

    sget-object p3, Lt6/p;->p:Lt6/o;

    invoke-virtual {p0, p1, p2, p3}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sget-object v2, Lt6/p;->t:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    sget-object p0, Lt6/p;->G:Lt6/k;

    return-object p0

    :cond_1
    sget-object v2, Lt6/p;->s:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    sget-object p0, Lt6/p;->F:Lt6/k;

    return-object p0

    :cond_2
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    if-nez p2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    array-length v2, p2

    :goto_0
    if-nez v2, :cond_4

    sget-object p2, Lt6/p;->p:Lt6/o;

    goto :goto_2

    :cond_4
    new-array v3, v2, [Lb6/l;

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v4, p2, v1

    invoke-virtual {p0, p1, v4, p3}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v0, v3}, Lt6/o;->c(Ljava/lang/Class;[Lb6/l;)Lt6/o;

    move-result-object p2

    :goto_2
    invoke-virtual {p0, p1, v0, p2}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p2, Lb6/l;

    if-eqz v0, :cond_7

    check-cast p2, Lb6/l;

    return-object p2

    :cond_7
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object v3

    sget p0, Lt6/a;->z:I

    iget-object p0, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    new-instance v2, Lt6/a;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2

    :cond_8
    move-object v4, p3

    instance-of p3, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz p3, :cond_12

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz v4, :cond_11

    iget-object v0, v4, Lt6/o;->l:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v5, v0, v3

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v0, v4, Lt6/o;->m:[Lb6/l;

    aget-object v0, v0, v3

    instance-of v2, v0, Lt6/j;

    if-eqz v2, :cond_b

    move-object v2, v0

    check-cast v2, Lt6/j;

    iget-object v2, v2, Lt6/j;->x:Lb6/l;

    if-eqz v2, :cond_b

    move-object v0, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    iget-object v0, v4, Lt6/o;->n:[Ljava/lang/String;

    if-eqz v0, :cond_e

    array-length v2, v0

    :cond_d
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object p0, Lt6/p;->E:Lt6/k;

    return-object p0

    :cond_e
    iget-object v0, v4, Lt6/o;->n:[Ljava/lang/String;

    if-nez v0, :cond_f

    move v2, v1

    goto :goto_5

    :cond_f
    array-length v2, v0

    :goto_5
    if-nez v2, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_6

    :cond_10
    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_6
    aput-object p3, v0, v2

    new-instance p3, Lt6/o;

    iget-object v2, v4, Lt6/o;->l:[Ljava/lang/String;

    iget-object v3, v4, Lt6/o;->m:[Lb6/l;

    invoke-direct {p3, v2, v3, v0}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    monitor-enter p2

    :try_start_0
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget-object p2, v0, v1

    invoke-virtual {p0, p1, p2, p3}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null `bindings` passed (type variable \""

    const-string p2, "\")"

    invoke-static {p1, p3, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    instance-of p3, p2, Ljava/lang/reflect/WildcardType;

    if-eqz p3, :cond_13

    check-cast p2, Ljava/lang/reflect/WildcardType;

    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2, v4}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unrecognized Type: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_14

    const-string p2, "[null]"

    goto :goto_7

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v2}, Lt6/p;->a(Ljava/lang/Class;)Lt6/k;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lt6/o;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lt6/o;->m:[Lb6/l;

    array-length v5, v4

    move v6, v10

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    instance-of v7, v7, Lt6/d;

    if-eqz v7, :cond_2

    move-object v5, v11

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Lt6/m;

    iget v6, v3, Lt6/o;->o:I

    invoke-direct {v5, v2, v4, v6}, Lt6/m;-><init>(Ljava/lang/Class;[Lb6/l;I)V

    :goto_1
    move-object v12, v5

    goto :goto_3

    :cond_4
    :goto_2
    move-object v12, v2

    :goto_3
    iget-object v13, v0, Lt6/p;->l:Lu6/m;

    if-nez v12, :cond_5

    move-object v4, v11

    goto :goto_4

    :cond_5
    iget-object v4, v13, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v4, Lv6/p;

    invoke-virtual {v4, v12}, Lv6/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb6/l;

    :goto_4
    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    if-nez v1, :cond_7

    new-instance v1, Lg5/m;

    invoke-direct {v1, v11, v2}, Lg5/m;-><init>(Lg5/m;Ljava/lang/Class;)V

    move-object v14, v1

    goto :goto_7

    :cond_7
    iget-object v5, v1, Lg5/m;->n:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    if-ne v5, v2, :cond_8

    move-object v9, v1

    goto :goto_6

    :cond_8
    iget-object v5, v1, Lg5/m;->m:Ljava/lang/Object;

    :goto_5
    check-cast v5, Lg5/m;

    if-eqz v5, :cond_a

    iget-object v6, v5, Lg5/m;->n:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Class;

    if-ne v6, v2, :cond_9

    move-object v9, v5

    goto :goto_6

    :cond_9
    iget-object v5, v5, Lg5/m;->m:Ljava/lang/Object;

    goto :goto_5

    :cond_a
    move-object v9, v11

    :goto_6
    if-eqz v9, :cond_c

    new-instance v0, Lt6/j;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v2, Lt6/p;->p:Lt6/o;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v8}, Lt6/l;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object v1, v9, Lg5/m;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lg5/m;->o:Ljava/lang/Object;

    :cond_b
    iget-object v1, v9, Lg5/m;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_c
    new-instance v5, Lg5/m;

    invoke-direct {v5, v1, v2}, Lg5/m;-><init>(Lg5/m;Ljava/lang/Class;)V

    move-object v14, v5

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v14, v1, v3}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object v1

    sget v0, Lt6/a;->z:I

    iget-object v0, v1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    new-instance v0, Lt6/a;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_19

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v14, v2, v3}, Lt6/p;->d(Lg5/m;Ljava/lang/Class;Lt6/o;)[Lb6/l;

    move-result-object v0

    move-object v1, v11

    goto :goto_9

    :cond_e
    sget-object v1, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_f

    move-object v1, v11

    goto :goto_8

    :cond_f
    invoke-virtual {v0, v14, v1, v3}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v14, v2, v3}, Lt6/p;->d(Lg5/m;Ljava/lang/Class;Lt6/o;)[Lb6/l;

    move-result-object v0

    :goto_9
    sget-object v5, Lt6/p;->D:Lt6/k;

    const-class v6, Ljava/util/Properties;

    if-ne v2, v6, :cond_10

    move-object v4, v0

    new-instance v0, Lt6/g;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v16, v6

    move-object v6, v5

    move-object v11, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v9}, Lt6/g;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto :goto_a

    :cond_10
    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    move-object v11, v6

    if-eqz v3, :cond_11

    invoke-virtual {v3, v2, v1, v3, v4}, Lb6/l;->h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;

    move-result-object v0

    :cond_11
    :goto_a
    if-nez v0, :cond_28

    if-nez v1, :cond_12

    sget-object v0, Lt6/p;->p:Lt6/o;

    goto :goto_b

    :cond_12
    move-object v0, v1

    :goto_b
    const-class v6, Ljava/util/Map;

    sget-object v7, Lt6/p;->E:Lt6/k;

    if-ne v2, v6, :cond_17

    if-ne v2, v11, :cond_13

    move-object v2, v0

    :goto_c
    move-object v6, v5

    goto :goto_e

    :cond_13
    invoke-virtual {v0}, Lt6/o;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v7, 0x2

    if-eq v6, v7, :cond_15

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne v6, v15, :cond_14

    const-string v4, ""

    goto :goto_d

    :cond_14
    const-string v4, "s"

    :goto_d
    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Strange Map type %s with %d type parameter%s (%s), can not resolve"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb6/l;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb6/l;

    move-object v2, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v0

    goto :goto_e

    :cond_16
    move-object v2, v0

    move-object v5, v7

    goto :goto_c

    :goto_e
    new-instance v0, Lt6/g;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v11, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v9}, Lt6/g;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_16

    :cond_17
    move-object v11, v1

    move-object v1, v2

    move-object v2, v0

    const-class v0, Ljava/util/Collection;

    const-string v5, ": cannot determine type parameters"

    if-ne v1, v0, :cond_1a

    invoke-virtual {v2}, Lt6/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    :goto_f
    move-object v5, v7

    goto :goto_10

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v15, :cond_19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb6/l;

    goto :goto_f

    :goto_10
    new-instance v0, Lt6/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lt6/c;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_16

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Strange Collection type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v5}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v1, v0, :cond_1d

    invoke-virtual {v2}, Lt6/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    :goto_11
    move-object v5, v7

    goto :goto_12

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v15, :cond_1c

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb6/l;

    goto :goto_11

    :goto_12
    new-instance v0, Lt6/i;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lt6/i;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_16

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Strange Reference type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v5}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const-class v0, Ljava/util/Iterator;

    if-eq v1, v0, :cond_22

    const-class v0, Ljava/util/stream/Stream;

    if-ne v1, v0, :cond_1e

    goto :goto_13

    :cond_1e
    const-class v0, Ljava/util/stream/BaseStream;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-class v0, Ljava/util/stream/DoubleStream;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lt6/e;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v5, Lt6/p;->A:Lt6/k;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_16

    :cond_1f
    const-class v0, Ljava/util/stream/IntStream;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lt6/e;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v5, Lt6/p;->B:Lt6/k;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_16

    :cond_20
    const-class v0, Ljava/util/stream/LongStream;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lt6/e;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v5, Lt6/p;->C:Lt6/k;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object/from16 v1, p2

    goto :goto_16

    :cond_21
    move-object/from16 v1, p2

    const/4 v0, 0x0

    goto :goto_16

    :cond_22
    :goto_13
    invoke-virtual {v2}, Lt6/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    :goto_14
    move-object v5, v7

    goto :goto_15

    :cond_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v15, :cond_27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb6/l;

    goto :goto_14

    :goto_15
    new-instance v0, Lt6/e;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v8}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_16
    if-nez v0, :cond_28

    array-length v0, v4

    move v2, v10

    :goto_17
    if-ge v2, v0, :cond_25

    aget-object v5, v4, v2

    invoke-virtual {v5, v1, v11, v3, v4}, Lb6/l;->h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;

    move-result-object v5

    if-eqz v5, :cond_24

    move-object/from16 v17, v5

    goto :goto_18

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_25
    const/16 v17, 0x0

    :goto_18
    if-nez v17, :cond_26

    new-instance v0, Lt6/k;

    invoke-direct {v0, v1, v11, v3, v4}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)V

    goto :goto_19

    :cond_26
    move-object/from16 v0, v17

    goto :goto_19

    :cond_27
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Strange Iteration type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v5}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_19
    iget-object v1, v14, Lg5/m;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1a
    if-ge v10, v2, :cond_2a

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v10, 0x1

    check-cast v3, Lt6/j;

    iget-object v4, v3, Lt6/j;->x:Lb6/l;

    if-nez v4, :cond_29

    iput-object v0, v3, Lt6/j;->x:Lb6/l;

    goto :goto_1a

    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Trying to re-set self reference; old value = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lt6/j;->x:Lb6/l;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    if-eqz v12, :cond_2b

    invoke-virtual {v0}, Lb6/l;->Y()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, v13, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v1, Lv6/p;

    invoke-virtual {v1, v12, v0, v15}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    :cond_2b
    return-object v0
.end method

.method public final d(Lg5/m;Ljava/lang/Class;Lt6/o;)[Lb6/l;
    .locals 4

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    new-array v1, v0, [Lb6/l;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {p0, p1, v3, p3}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    sget-object p0, Lt6/p;->n:[Lb6/l;

    return-object p0
.end method

.method public final f(Lb6/l;Ljava/lang/Class;)Lt6/c;
    .locals 5

    sget-object v0, Lt6/o;->p:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v0, Lt6/o;->r:Lt6/o;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    new-instance v2, Lt6/o;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Lb6/l;

    move-result-object v1

    invoke-direct {v2, v0, v1, v3}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-virtual {p0, v3, p2, v0}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    check-cast p0, Lt6/c;

    invoke-virtual {v0}, Lt6/o;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-class v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v0

    invoke-virtual {v0}, Lb6/l;->Q()Lb6/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Non-generic Collection class %s did not resolve to something with element type %s but %s "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create TypeBindings for class "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with 1 type parameter: class expects "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/lang/String;)Lb6/l;
    .locals 2

    iget-object p0, p0, Lt6/p;->m:Lj9/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfa00

    if-gt v0, v1, :cond_1

    new-instance v0, Lt6/q;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lt6/q;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1}, Lj9/y;->c(Lt6/q;I)Lb6/l;

    move-result-object p0

    invoke-virtual {v0}, Lt6/q;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Unexpected tokens after complete type"

    invoke-static {v0, p0}, Lj9/y;->a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lj9/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to parse type %s: too long (%d characters), maximum length allowed: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/Class;Lb6/l;Lb6/l;)Lt6/g;
    .locals 7

    filled-new-array {p2, p3}, [Lb6/l;

    move-result-object v0

    sget-object v1, Lt6/o;->p:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, v1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    new-instance v1, Lt6/o;

    invoke-direct {v1, v4, v0, v2}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot create TypeBindings for class "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with 2 type parameter"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": class expects "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    sget-object v1, Lt6/o;->r:Lt6/o;

    :goto_2
    invoke-virtual {p0, v2, p1, v1}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    check-cast p0, Lt6/g;

    invoke-virtual {v1}, Lt6/o;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lt6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v0

    invoke-virtual {v0}, Lb6/l;->T()Lb6/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lb6/l;->Q()Lb6/l;

    move-result-object p2

    invoke-virtual {p2, p3}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Non-generic Map class %s did not resolve to something with value type %s but %s "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Non-generic Map class %s did not resolve to something with key type %s but %s "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    return-object p0
.end method

.method public final k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lb6/l;->o:Ljava/lang/Class;

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-class v4, Ljava/lang/Object;

    sget-object v5, Lt6/p;->p:Lt6/o;

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v6, v2, v5}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v0

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v1}, Lb6/l;->c0()Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v1, Lt6/g;

    if-eqz v7, :cond_3

    const-class v7, Ljava/util/HashMap;

    if-eq v2, v7, :cond_2

    const-class v7, Ljava/util/LinkedHashMap;

    if-eq v2, v7, :cond_2

    const-class v7, Ljava/util/EnumMap;

    if-eq v2, v7, :cond_2

    const-class v7, Ljava/util/TreeMap;

    if-ne v2, v7, :cond_6

    :cond_2
    invoke-virtual {v1}, Lb6/l;->T()Lb6/l;

    move-result-object v3

    invoke-virtual {v1}, Lb6/l;->Q()Lb6/l;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lt6/o;->b(Ljava/lang/Class;Lb6/l;Lb6/l;)Lt6/o;

    move-result-object v3

    invoke-virtual {v0, v6, v2, v3}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v0

    goto/16 :goto_9

    :cond_3
    instance-of v7, v1, Lt6/c;

    if-eqz v7, :cond_6

    const-class v7, Ljava/util/ArrayList;

    if-eq v2, v7, :cond_5

    const-class v7, Ljava/util/LinkedList;

    if-eq v2, v7, :cond_5

    const-class v7, Ljava/util/HashSet;

    if-eq v2, v7, :cond_5

    const-class v7, Ljava/util/TreeSet;

    if-ne v2, v7, :cond_4

    goto :goto_1

    :cond_4
    const-class v7, Ljava/util/EnumSet;

    if-ne v3, v7, :cond_6

    :goto_0
    return-object v1

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lb6/l;->Q()Lb6/l;

    move-result-object v3

    invoke-static {v3, v2}, Lt6/o;->a(Lb6/l;Ljava/lang/Class;)Lt6/o;

    move-result-object v3

    invoke-virtual {v0, v6, v2, v3}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v0

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v1}, Lb6/l;->P()Lt6/o;

    move-result-object v7

    invoke-virtual {v7}, Lt6/o;->f()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0, v6, v2, v5}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v0

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_8

    invoke-virtual {v0, v6, v2, v5}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v0

    goto/16 :goto_9

    :cond_8
    new-array v5, v7, [Lt6/h;

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_9

    new-instance v10, Lt6/h;

    invoke-direct {v10, v9}, Lt6/h;-><init>(I)V

    aput-object v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v2, v5}, Lt6/o;->c(Ljava/lang/Class;[Lb6/l;)Lt6/o;

    move-result-object v9

    invoke-virtual {v0, v6, v2, v9}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v9

    invoke-virtual {v9, v3}, Lb6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-virtual {v1}, Lb6/l;->P()Lt6/o;

    move-result-object v3

    invoke-virtual {v3}, Lt6/o;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9}, Lb6/l;->P()Lt6/o;

    move-result-object v9

    invoke-virtual {v9}, Lt6/o;->e()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    sget-object v13, Lt6/p;->E:Lt6/k;

    if-ge v12, v11, :cond_f

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb6/l;

    if-ge v12, v10, :cond_a

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb6/l;

    goto :goto_4

    :cond_a
    move-object v15, v13

    :goto_4
    invoke-static {v14, v15}, Lt6/p;->e(Lb6/l;Lb6/l;)Z

    move-result v16

    if-nez v16, :cond_e

    invoke-virtual {v14, v4}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_5

    :cond_b
    if-nez v12, :cond_c

    instance-of v8, v1, Lt6/g;

    if-eqz v8, :cond_c

    invoke-virtual {v15, v4}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_5

    :cond_c
    iget-object v8, v14, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v15, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v14, v8}, Lb6/l;->g0(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v14, Lt6/l;

    invoke-virtual {v14}, Lt6/l;->r0()Ljava/lang/String;

    move-result-object v8

    check-cast v15, Lt6/l;

    invoke-virtual {v15}, Lt6/l;->r0()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v4, v8, v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Type parameter #%d/%d differs; can not specialize %s with %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_f
    move-object v3, v6

    :goto_6
    if-eqz v3, :cond_11

    if-eqz p3, :cond_10

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to specialize base type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lt6/l;

    invoke-virtual {v1}, Lt6/l;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", problem: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    new-array v3, v7, [Lb6/l;

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_13

    aget-object v4, v5, v8

    iget-object v4, v4, Lt6/h;->y:Lb6/l;

    if-nez v4, :cond_12

    move-object v4, v13

    :cond_12
    aput-object v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_13
    invoke-static {v2, v3}, Lt6/o;->c(Ljava/lang/Class;[Lb6/l;)Lt6/o;

    move-result-object v3

    invoke-virtual {v0, v6, v2, v3}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object v0

    :goto_9
    invoke-virtual {v0, v1}, Lb6/l;->l0(Lb6/l;)Lb6/l;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Internal error: unable to locate supertype ("

    const-string v4, ") from resolved subtype "

    invoke-static {v3, v1, v4, v2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Class "

    const-string v4, " not subtype of "

    invoke-static {v3, v2, v4, v1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Ljava/lang/reflect/Type;)Lb6/l;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lt6/p;->p:Lt6/o;

    invoke-virtual {p0, v0, p1, v1}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0
.end method
