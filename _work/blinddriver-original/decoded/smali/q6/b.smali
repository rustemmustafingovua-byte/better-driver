.class public abstract Lq6/b;
.super Lg5/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final m:Ljava/util/HashMap;

.field public static final n:Ljava/util/HashMap;


# instance fields
.field public final l:Ld6/p;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Li6/d;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Li6/d;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ls6/p;->q:Ls6/p;

    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/s;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5, v2}, Ls6/s;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/s;

    invoke-direct {v4, v6, v5, v2}, Ls6/s;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/s;

    const/4 v5, 0x2

    const/4 v7, 0x2

    invoke-direct {v4, v7, v5, v2}, Ls6/s;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/s;

    invoke-direct {v4, v7, v5, v2}, Ls6/s;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls6/u;->p:Ls6/u;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls6/v;->p:Ls6/v;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/s;

    const/4 v5, 0x0

    const/4 v7, 0x5

    invoke-direct {v4, v7, v5, v2}, Ls6/s;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/s;

    invoke-direct {v4, v7, v5, v2}, Ls6/s;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls6/t;->p:Ls6/t;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ls6/e;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v6}, Ls6/e;-><init>(IZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ls6/e;

    invoke-direct {v3, v4, v5}, Ls6/e;-><init>(IZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/q;

    invoke-direct {v4, v2}, Ls6/q;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls6/q;

    invoke-direct {v4, v2}, Ls6/q;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls6/f;->r:Ls6/f;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls6/i;->r:Ls6/i;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ls6/p;

    const-class v4, Ljava/net/URL;

    invoke-direct {v3, v5, v4}, Ls6/p;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ls6/p;

    const-class v4, Ljava/net/URI;

    invoke-direct {v3, v5, v4}, Ls6/p;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ls6/p;

    const-class v4, Ljava/util/Currency;

    invoke-direct {v3, v5, v4}, Ls6/p;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ls6/p0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ls6/p0;-><init>(Ljava/lang/Boolean;)V

    const-class v4, Ljava/util/UUID;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ls6/p;

    const-class v4, Ljava/util/regex/Pattern;

    invoke-direct {v3, v5, v4}, Ls6/p;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ls6/p;

    const-class v4, Ljava/util/Locale;

    invoke-direct {v3, v5, v4}, Ls6/p;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v4, Ls6/h0;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v4, Ls6/i0;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-class v4, Ls6/j0;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/io/File;

    const-class v4, Ls6/l;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/Class;

    const-class v4, Ls6/g;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ls6/o;->o:Ls6/o;

    const-class v4, Ljava/lang/Void;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lb6/u;

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lb6/u;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v4, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-class v2, Lu6/z;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ls6/o0;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lq6/b;->m:Ljava/util/HashMap;

    sput-object v0, Lq6/b;->n:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ld6/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ld6/p;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Ld6/p;-><init>([Lq6/m;[Lq6/m;[Lq6/g;)V

    :cond_0
    iput-object p1, p0, Lq6/b;->l:Ld6/p;

    return-void
.end method

.method public static R(Lb6/r0;Lj6/t;Lb6/l;Ljava/lang/Class;)Lr5/a0;
    .locals 2

    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    iget-object v0, p0, Ld6/n;->r:La6/n;

    iget-object v0, v0, La6/n;->m:Ljava/lang/Object;

    check-cast v0, Lr5/a0;

    iget-object v1, p1, Lj6/t;->d:Lb6/d;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lj6/t;->e:Lj6/c;

    invoke-virtual {v1, p1}, Lb6/d;->P(Lj6/a;)Lr5/a0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lr5/a0;->a(Lr5/a0;)Lr5/a0;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p3}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object p1, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    return-object v0
.end method

.method public static T(Lb6/r0;Lj6/a;)Lb6/u;
    .locals 3

    iget-object v0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb6/d;->b0(Lj6/a;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, p1, v1}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v1

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb6/d;->X(Lj6/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lb6/g;->n(Ljava/lang/Object;)Lu6/k;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lb6/r0;->u()Lt6/p;

    move-object p0, v2

    check-cast p0, Lf6/m;

    iget-object p0, p0, Lf6/m;->a:Lb6/l;

    new-instance p1, Ls6/g0;

    invoke-direct {p1, v2, p0, v1}, Ls6/g0;-><init>(Lu6/k;Lb6/l;Lb6/u;)V

    return-object p1
.end method

.method public static U(Lb6/p0;Lj6/t;)Z
    .locals 1

    invoke-virtual {p0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    iget-object p1, p1, Lj6/t;->e:Lj6/c;

    invoke-virtual {v0, p1}, Lb6/d;->a0(Lj6/a;)Lc6/j;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    sget-object p1, Lb6/x;->D:Lb6/x;

    invoke-virtual {p0, p1}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final S(Lb6/r0;Lb6/l;Lj6/t;)Ls6/n0;
    .locals 2

    iget-object p2, p2, Lb6/l;->o:Ljava/lang/Class;

    const-class v0, Lb6/s;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Ls6/o;->p:Ls6/o;

    return-object p0

    :cond_0
    invoke-virtual {p3}, Lj6/t;->e()Lj6/h;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p3, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p3, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object v0

    sget-object v1, Lb6/x;->B:Lb6/x;

    invoke-virtual {p3, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    invoke-static {v0, v1}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_1
    invoke-virtual {p2}, Lj6/a;->h()Lb6/l;

    move-result-object v0

    invoke-static {p1, p2}, Lq6/b;->T(Lb6/r0;Lj6/a;)Lb6/u;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lb6/l;->q:Ljava/lang/Object;

    check-cast p1, Lb6/u;

    :cond_2
    iget-object v1, v0, Lb6/l;->r:Ljava/lang/Object;

    check-cast v1, Ln6/e;

    if-nez v1, :cond_3

    invoke-virtual {p0, p3, v0}, Lq6/b;->s(Lb6/p0;Lb6/l;)Lo6/r;

    move-result-object v1

    :cond_3
    invoke-virtual {p3}, Ld6/m;->d()Lb6/d;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object p0

    iget-boolean p3, p0, Lr5/w;->n:Z

    if-eqz p3, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lr5/w;->l:Ljava/util/Set;

    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1, p0}, Lb6/u;->withIgnoredProperties(Ljava/util/Set;)Lb6/u;

    move-result-object p1

    :cond_5
    new-instance p3, Ls6/c;

    invoke-direct {p3, p2, v1, p1, p0}, Ls6/c;-><init>(Lj6/h;Ln6/e;Lb6/u;Ljava/util/Set;)V

    return-object p3

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(Lb6/r0;Lb6/l;)Lb6/u;
    .locals 12

    iget-object v0, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0, p2}, Lb6/p0;->s(Lb6/l;)Lj6/t;

    move-result-object v1

    iget-object v2, p2, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lq6/b;->l:Ld6/p;

    iget-object v4, v3, Ld6/p;->m:[Lq6/m;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lez v5, :cond_2

    move v8, v6

    move-object v5, v7

    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_3

    array-length v5, v4

    if-ge v8, v5, :cond_1

    add-int/lit8 v5, v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8, p2}, Lq6/m;->a(Lb6/l;)Lb6/u;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v5, v8

    goto :goto_1

    :cond_0
    move-object v11, v8

    move v8, v5

    move-object v5, v11

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    move-object v5, v7

    :cond_3
    :goto_1
    if-nez v5, :cond_1f

    iget-object p2, v1, Lj6/t;->e:Lj6/c;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v4

    invoke-virtual {v4, p2}, Lb6/d;->x(Lj6/a;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, p2, v4}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v4

    move-object v5, v4

    goto :goto_2

    :cond_4
    move-object v5, v7

    :goto_2
    if-nez v5, :cond_1f

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v2, :cond_11

    const-class v8, Ljava/lang/Object;

    if-ne v2, v8, :cond_5

    goto/16 :goto_6

    :cond_5
    const-class v8, Ljava/lang/String;

    if-ne v2, v8, :cond_6

    sget-object v8, Ls6/m0;->a:Ls6/o;

    :goto_3
    move-object v9, v8

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v2}, Lu6/h;->G(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_4

    :cond_7
    move-object v8, v2

    :goto_4
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_8

    new-instance v9, Ls6/k0;

    const/4 v10, 0x5

    invoke-direct {v9, v10, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto/16 :goto_7

    :cond_8
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_9

    new-instance v9, Ls6/k0;

    const/4 v10, 0x6

    invoke-direct {v9, v10, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_10

    const-class v9, Ljava/lang/Number;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    const-class v9, Ljava/lang/Class;

    if-ne v8, v9, :cond_b

    new-instance v9, Ls6/k0;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_b
    const-class v9, Ljava/util/Date;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Ls6/k0;

    invoke-direct {v9, v5, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_c
    const-class v9, Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v9, Ls6/k0;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_d
    const-class v9, Ljava/util/UUID;

    if-ne v8, v9, :cond_e

    new-instance v9, Ls6/k0;

    invoke-direct {v9, v4, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_e
    const-class v9, [B

    if-ne v8, v9, :cond_f

    new-instance v9, Ls6/k0;

    const/4 v10, 0x7

    invoke-direct {v9, v10, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_f
    move-object v9, v7

    goto :goto_7

    :cond_10
    :goto_5
    new-instance v9, Ls6/k0;

    invoke-direct {v9, v4, v8}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_7

    :cond_11
    :goto_6
    new-instance v8, Ls6/l0;

    invoke-direct {v8}, Ls6/l0;-><init>()V

    goto :goto_3

    :goto_7
    if-nez v9, :cond_1e

    iget-object v8, v1, Lj6/t;->b:Lj6/e0;

    if-nez v8, :cond_13

    :cond_12
    move-object v5, v7

    goto :goto_9

    :cond_13
    iget-boolean v9, v8, Lj6/e0;->j:Z

    if-nez v9, :cond_14

    invoke-virtual {v8}, Lj6/e0;->m()V

    :cond_14
    iget-object v9, v8, Lj6/e0;->s:Ljava/util/LinkedList;

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-le v9, v5, :cond_16

    iget-object v9, v8, Lj6/e0;->s:Ljava/util/LinkedList;

    invoke-static {v9}, Lj6/e0;->k(Ljava/util/LinkedList;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_8

    :cond_15
    iget-object p0, v8, Lj6/e0;->s:Ljava/util/LinkedList;

    invoke-virtual {p0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v8, Lj6/e0;->s:Ljava/util/LinkedList;

    invoke-virtual {p1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Multiple \'as-key\' properties defined (%s vs %s)"

    invoke-virtual {v8, p1, p0}, Lj6/e0;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    :cond_16
    :goto_8
    iget-object v5, v8, Lj6/e0;->s:Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj6/h;

    :goto_9
    if-nez v5, :cond_17

    invoke-virtual {v1}, Lj6/t;->e()Lj6/h;

    move-result-object v5

    :cond_17
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lj6/a;->h()Lb6/l;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lq6/b;->q(Lb6/r0;Lb6/l;)Lb6/u;

    move-result-object p0

    sget-object p1, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, p1}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v5}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object p1

    sget-object p2, Lb6/x;->B:Lb6/x;

    invoke-virtual {v0, p2}, Ld6/m;->m(Lb6/x;)Z

    move-result p2

    invoke-static {p1, p2}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_18
    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object p1

    iget-boolean p2, p1, Lr5/w;->n:Z

    if-eqz p2, :cond_19

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_a

    :cond_19
    iget-object p1, p1, Lr5/w;->l:Ljava/util/Set;

    :goto_a
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-virtual {p0, p1}, Lb6/u;->withIgnoredProperties(Ljava/util/Set;)Lb6/u;

    move-result-object p0

    :cond_1a
    new-instance p2, Ls6/c;

    invoke-direct {p2, v5, v7, p0, p1}, Ls6/c;-><init>(Lj6/h;Ln6/e;Lb6/u;Ljava/util/Set;)V

    move-object v5, p2

    goto :goto_c

    :cond_1b
    if-eqz v2, :cond_1d

    const-class p0, Ljava/lang/Enum;

    if-ne v2, p0, :cond_1c

    new-instance p0, Ls6/l0;

    invoke-direct {p0}, Ls6/l0;-><init>()V

    :goto_b
    move-object v5, p0

    goto :goto_c

    :cond_1c
    sget-object p1, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-static {v0, p2}, La6/n;->n(Ld6/m;Lj6/c;)La6/n;

    move-result-object p0

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lb6/d;->p(Ld6/m;Lj6/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, p2}, Ld6/m;->m(Lb6/x;)Z

    move-result p2

    iget-object v0, v0, Ld6/m;->m:Ld6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lj6/s;->d(Ljava/lang/Object;Z)V

    new-instance p1, Lr6/r;

    invoke-direct {p1, v2, p0}, Lr6/r;-><init>(Ljava/lang/Class;La6/n;)V

    move-object v5, p1

    goto :goto_c

    :cond_1d
    new-instance p0, Ls6/k0;

    invoke-direct {p0, v4, v2}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    goto :goto_b

    :cond_1e
    move-object v5, v9

    :cond_1f
    :goto_c
    invoke-virtual {v3}, Ld6/p;->a()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-virtual {v3}, Ld6/p;->b()Lu6/d;

    move-result-object p0

    :goto_d
    invoke-virtual {p0}, Lu6/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lu6/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_20
    return-object v5
.end method

.method public final s(Lb6/p0;Lb6/l;)Lo6/r;
    .locals 8

    iget-object p0, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ld6/m;->l(Ljava/lang/Class;)Lj6/t;

    move-result-object p0

    iget-object p0, p0, Lj6/t;->e:Lj6/c;

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p0}, Lb6/d;->f0(Lb6/l;Ld6/m;Lj6/c;)Lo6/n;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p1, Ld6/m;->m:Ld6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v1

    move-object v0, p0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Ld6/n;->o:Lo6/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v2, Lo6/m;->n:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lj6/c;->m:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln6/c;

    iget-object v7, v6, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Ln6/c;->l:Ljava/lang/Class;

    invoke-static {p1, v7}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v7

    invoke-static {v7, v6, p1, v3, v4}, Lo6/m;->A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ln6/c;

    iget-object v5, p0, Lj6/c;->m:Ljava/lang/Class;

    invoke-direct {v2, v5, v1}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p0, v2, p1, v3, v4}, Lo6/m;->A(Lj6/c;Ln6/c;Ld6/m;Lb6/d;Ljava/util/HashMap;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0, p1, p2, p0}, Lo6/n;->b(Lb6/p0;Lb6/l;Ljava/util/ArrayList;)Lo6/r;

    move-result-object p0

    return-object p0
.end method
