.class public abstract Ls6/n0;
.super Lb6/u;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final m:Ljava/lang/Object;


# instance fields
.field public final l:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls6/n0;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ls6/n0;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lb6/l;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Ls6/n0;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ls6/n0;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ls6/n0;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object p1, p1, Ls6/n0;->l:Ljava/lang/Class;

    iput-object p1, p0, Ls6/n0;->l:Ljava/lang/Class;

    return-void
.end method

.method public static c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;
    .locals 5

    sget-object v0, Ls6/n0;->m:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lb6/r0;->e0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v2, p0, Lb6/r0;->r:Lg6/c1;

    check-cast v2, Ld6/f;

    sget-object v3, Ld6/f;->m:Ld6/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v3, v2, Ld6/f;->l:Ljava/util/HashMap;

    if-nez v3, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ld6/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Ld6/f;->l:Ljava/util/HashMap;

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iput-object v2, p0, Lb6/r0;->r:Lg6/c1;

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {p1}, Lb6/f;->d()Lj6/h;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lb6/d;->W(Lj6/h;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lb6/f;->d()Lj6/h;

    invoke-virtual {p0, v0}, Lb6/g;->n(Ljava/lang/Object;)Lu6/k;

    move-result-object v0

    invoke-virtual {p0}, Lb6/r0;->u()Lt6/p;

    move-object v2, v0

    check-cast v2, Lf6/m;

    iget-object v2, v2, Lf6/m;->a:Lb6/l;

    if-nez p2, :cond_4

    invoke-virtual {v2}, Lb6/l;->e0()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v3, v2}, Lr6/n;->a(Lb6/l;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v3, v2}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Lb6/r0;->N(Lb6/l;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, p2

    :cond_5
    :goto_2
    new-instance v4, Ls6/g0;

    invoke-direct {v4, v0, v2, v3}, Ls6/g0;-><init>(Lu6/k;Lb6/l;Lb6/u;)V

    goto :goto_3

    :cond_6
    move-object v4, p2

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {p0, v4, p1}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :goto_4
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public static d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-interface {p1, p0, p2}, Lb6/f;->f(Ld6/m;Ljava/lang/Class;)Lr5/q;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p0, p2}, Ld6/n;->h(Ljava/lang/Class;)Lr5/q;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V
    .locals 1

    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lu6/h;->C(Ljava/lang/Throwable;)V

    if-eqz p0, :cond_2

    sget-object v0, Lb6/q0;->r:Lb6/q0;

    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p0, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    instance-of p0, p1, Ls5/l;

    if-nez p0, :cond_5

    :cond_3
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    if-nez p0, :cond_5

    invoke-static {p1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_5
    invoke-static {p1, p2, p3}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public static h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lu6/h;->C(Ljava/lang/Throwable;)V

    if-eqz p0, :cond_2

    sget-object v0, Lb6/q0;->r:Lb6/q0;

    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p0, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    instance-of p0, p1, Ls5/l;

    if-nez p0, :cond_5

    :cond_3
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    if-nez p0, :cond_5

    invoke-static {p1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_5
    sget p0, Lb6/p;->o:I

    new-instance p0, Lb6/o;

    invoke-direct {p0, p2, p3}, Lb6/o;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lb6/p;->i(Ljava/lang/Throwable;Lb6/o;)Lb6/p;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(Lb6/r0;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot resolve PropertyFilter with id \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'; no FilterProvider configured"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    return-object p0
.end method
