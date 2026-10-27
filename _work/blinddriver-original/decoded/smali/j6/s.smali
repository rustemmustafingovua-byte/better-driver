.class public abstract Lj6/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lj6/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj6/s;->l:Lj6/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Z)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Class;

    const-class v0, Lb6/k;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Problem with AnnotationIntrospector returned Class "

    const-string v1, "; expected `Class<EnumNamingStrategy>`"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AnnotationIntrospector returned EnumNamingStrategy definition of type "

    const-string v1, "; expected type `Class<EnumNamingStrategy>` instead"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 3

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lj6/s;->f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static h(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lj6/s;->h(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static i(Lj6/c;Lb6/l;Ljava/lang/reflect/Type;)Z
    .locals 4

    invoke-virtual {p0, p2}, Lj6/c;->a(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v0

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lj6/s;->f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1}, Lb6/l;->P()Lt6/o;

    move-result-object p1

    iget-object v0, p1, Lt6/o;->m:[Lb6/l;

    array-length v0, v0

    array-length v2, p2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p1, Lt6/o;->m:[Lb6/l;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lt6/o;->d(I)Lb6/l;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {p0, v2, v3}, Lj6/s;->i(Lj6/c;Lb6/l;Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/annotation/Annotation;)Lj6/s;
.end method

.method public abstract b()Lb0/l1;
.end method

.method public abstract c()Lu6/b;
.end method

.method public abstract e(Ljava/lang/annotation/Annotation;)Z
.end method
