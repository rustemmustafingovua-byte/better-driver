.class public final Lj6/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/Class;


# instance fields
.field public final a:Lb6/l;

.field public final b:Lj6/e0;

.field public final c:Ld6/m;

.field public final d:Lb6/d;

.field public final e:Lj6/c;

.field public f:[Ljava/lang/Class;

.field public g:Z

.field public h:Ljava/util/List;

.field public final i:Lj6/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lj6/t;->j:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lb6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6/t;->a:Lb6/l;

    return-void
.end method

.method public constructor <init>(Lb6/l;Ld6/m;Lj6/c;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3
    invoke-direct {p0, p1}, Lj6/t;-><init>(Lb6/l;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lj6/t;->b:Lj6/e0;

    .line 5
    iput-object p2, p0, Lj6/t;->c:Ld6/m;

    if-nez p2, :cond_0

    .line 6
    iput-object p1, p0, Lj6/t;->d:Lb6/d;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    iput-object p1, p0, Lj6/t;->d:Lb6/d;

    .line 8
    :goto_0
    iput-object p3, p0, Lj6/t;->e:Lj6/c;

    .line 9
    iput-object v0, p0, Lj6/t;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lj6/e0;)V
    .locals 2

    .line 10
    iget-object v0, p1, Lj6/e0;->d:Lb6/l;

    .line 11
    iget-object v1, p1, Lj6/e0;->e:Lj6/c;

    .line 12
    invoke-direct {p0, v0}, Lj6/t;-><init>(Lb6/l;)V

    .line 13
    iput-object p1, p0, Lj6/t;->b:Lj6/e0;

    .line 14
    iget-object v0, p1, Lj6/e0;->a:Ld6/m;

    .line 15
    iput-object v0, p0, Lj6/t;->c:Ld6/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lj6/t;->d:Lb6/d;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    iput-object v0, p0, Lj6/t;->d:Lb6/d;

    .line 18
    :goto_0
    iput-object v1, p0, Lj6/t;->e:Lj6/c;

    .line 19
    iget-object p1, p1, Lj6/e0;->g:Lb6/d;

    invoke-virtual {p1, v1}, Lb6/d;->D(Lj6/a;)Lj6/d0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p1, v1, v0}, Lb6/d;->E(Lj6/a;Lj6/d0;)Lj6/d0;

    move-result-object v0

    .line 21
    :cond_1
    iput-object v0, p0, Lj6/t;->i:Lj6/d0;

    return-void
.end method

.method public static f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;
    .locals 2

    new-instance v0, Lj6/t;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p0, p1, p2}, Lj6/t;-><init>(Lb6/l;Ld6/m;Lj6/c;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lu6/k;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lu6/k;

    if-eqz v0, :cond_1

    check-cast p1, Lu6/k;

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Class;

    const-class v0, Lu6/j;

    if-eq p1, v0, :cond_4

    invoke-static {p1}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-class v0, Lu6/k;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lj6/t;->c:Ld6/m;

    invoke-virtual {p0}, Ld6/m;->j()V

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {p1, p0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu6/k;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; expected Class<Converter>"

    invoke-static {p1, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Converter definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected type Converter or Class<Converter> instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lj6/t;->h:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/t;->b:Lj6/e0;

    iget-boolean v1, v0, Lj6/e0;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj6/e0;->m()V

    :cond_0
    iget-object v0, v0, Lj6/e0;->k:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lj6/t;->h:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lj6/t;->h:Ljava/util/List;

    return-object p0
.end method

.method public final c()[Ljava/lang/Class;
    .locals 3

    iget-boolean v0, p0, Lj6/t;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj6/t;->g:Z

    iget-object v0, p0, Lj6/t;->d:Lb6/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj6/t;->e:Lj6/c;

    invoke-virtual {v0, v1}, Lb6/d;->i0(Lj6/a;)[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lj6/t;->c:Ld6/m;

    sget-object v2, Lb6/x;->H:Lb6/x;

    invoke-virtual {v1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lj6/t;->j:[Ljava/lang/Class;

    :cond_1
    iput-object v0, p0, Lj6/t;->f:[Ljava/lang/Class;

    :cond_2
    iget-object p0, p0, Lj6/t;->f:[Ljava/lang/Class;

    return-object p0
.end method

.method public final d()Lr5/q;
    .locals 0

    iget-object p0, p0, Lj6/t;->b:Lj6/e0;

    if-nez p0, :cond_0

    sget-object p0, Lr5/q;->s:Lr5/q;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj6/e0;->n()Lr5/q;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lj6/h;
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lj6/t;->b:Lj6/e0;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lj6/e0;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lj6/e0;->m()V

    :cond_1
    iget-object v1, p0, Lj6/e0;->t:Ljava/util/LinkedList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lj6/e0;->t:Ljava/util/LinkedList;

    invoke-static {v1}, Lj6/e0;->k(Ljava/util/LinkedList;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lj6/e0;->t:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj6/e0;->t:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Multiple \'as-value\' properties defined (%s vs %s)"

    invoke-virtual {p0, v2, v1}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lj6/e0;->t:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj6/h;

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lj6/t;->e:Lj6/c;

    invoke-virtual {v0}, Lj6/c;->j()Lg5/m;

    move-result-object v0

    iget-object v0, v0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/i;

    iget-object v3, v2, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lj6/t;->a:Lb6/l;

    iget-object v5, v5, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lj6/t;->d:Lb6/d;

    iget-object v5, p0, Lj6/t;->c:Ld6/m;

    invoke-virtual {v4, v5, v2}, Lb6/d;->f(Ld6/m;Lj6/a;)Lr5/j;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Lr5/j;->n:Lr5/j;

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "valueOf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "fromString"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lj6/i;->w(I)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_5

    const-class v4, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_8
    return-object v1
.end method
