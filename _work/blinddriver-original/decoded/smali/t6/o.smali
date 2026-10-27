.class public final Lt6/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final p:[Ljava/lang/String;

.field public static final q:[Lb6/l;

.field public static final r:Lt6/o;


# instance fields
.field public final l:[Ljava/lang/String;

.field public final m:[Lb6/l;

.field public final n:[Ljava/lang/String;

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lt6/o;->p:[Ljava/lang/String;

    new-array v0, v0, [Lb6/l;

    sput-object v0, Lt6/o;->q:[Lb6/l;

    new-instance v2, Lt6/o;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    sput-object v2, Lt6/o;->r:Lt6/o;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lt6/o;->p:[Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lt6/o;->l:[Ljava/lang/String;

    if-nez p2, :cond_1

    sget-object p2, Lt6/o;->q:[Lb6/l;

    :cond_1
    iput-object p2, p0, Lt6/o;->m:[Lb6/l;

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    iput-object p3, p0, Lt6/o;->n:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt6/o;->o:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Mismatching names ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), types ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const-string p2, ")"

    invoke-static {p1, p2, p3}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb6/l;Ljava/lang/Class;)Lt6/o;
    .locals 4

    const-class v0, Ljava/util/Collection;

    if-ne p1, v0, :cond_0

    sget-object v0, Lt6/n;->b:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_0
    const-class v0, Ljava/util/List;

    if-ne p1, v0, :cond_1

    sget-object v0, Lt6/n;->d:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_2

    sget-object v0, Lt6/n;->e:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/AbstractList;

    if-ne p1, v0, :cond_3

    sget-object v0, Lt6/n;->a:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/Iterable;

    if-ne p1, v0, :cond_4

    sget-object v0, Lt6/n;->c:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_4
    sget-object v0, Lt6/n;->a:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    array-length v2, v0

    :goto_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    new-instance p1, Lt6/o;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0}, [Lb6/l;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    return-object p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot create TypeBindings for class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with 1 type parameter: class expects "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Class;Lb6/l;Lb6/l;)Lt6/o;
    .locals 4

    const-class v0, Ljava/util/Map;

    if-ne p0, v0, :cond_0

    sget-object v0, Lt6/n;->f:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_0
    const-class v0, Ljava/util/HashMap;

    if-ne p0, v0, :cond_1

    sget-object v0, Lt6/n;->g:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p0, v0, :cond_2

    sget-object v0, Lt6/n;->h:[Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_2
    sget-object v0, Lt6/n;->a:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    array-length v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    new-instance p0, Lt6/o;

    aget-object v1, v0, v1

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2}, [Lb6/l;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create TypeBindings for class "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with 2 type parameters: class expects "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/Class;[Lb6/l;)Lt6/o;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lt6/o;->q:[Lb6/l;

    goto :goto_0

    :cond_0
    array-length v2, p1

    if-eq v2, v1, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    array-length v3, v2

    new-array v4, v3, [Ljava/lang/String;

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v5, v2, v0

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    sget-object v4, Lt6/o;->p:[Ljava/lang/String;

    :cond_3
    array-length v0, v4

    array-length v2, p1

    if-eq v0, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create TypeBindings for class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " type parameter"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    if-ne p0, v1, :cond_4

    const-string p0, ""

    goto :goto_3

    :cond_4
    const-string p0, "s"

    :goto_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": class expects "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Lt6/o;

    const/4 v0, 0x0

    invoke-direct {p0, v4, p1, v0}, Lt6/o;-><init>([Ljava/lang/String;[Lb6/l;[Ljava/lang/String;)V

    return-object p0

    :cond_6
    aget-object v0, p1, v0

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lt6/o;->b(Ljava/lang/Class;Lb6/l;Lb6/l;)Lt6/o;

    move-result-object p0

    return-object p0

    :cond_7
    aget-object p1, p1, v0

    invoke-static {p1, p0}, Lt6/o;->a(Lb6/l;Ljava/lang/Class;)Lt6/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(I)Lb6/l;
    .locals 1

    if-ltz p1, :cond_2

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    if-nez p0, :cond_1

    sget-object p0, Lt6/p;->E:Lt6/k;

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lt6/p;->E:Lt6/k;

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lt6/o;

    invoke-static {v1, p1}, Lu6/h;->s(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lt6/o;

    iget v1, p0, Lt6/o;->o:I

    iget v3, p1, Lt6/o;->o:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    iget-object p1, p1, Lt6/o;->m:[Lb6/l;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lt6/o;->o:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, "<>"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-lez v2, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v3, p0, v2

    if-nez v3, :cond_2

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Lb6/l;->S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
