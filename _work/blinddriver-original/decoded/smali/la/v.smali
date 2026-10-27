.class public final Lla/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/d;


# static fields
.field public static final E:Ljava/util/List;

.field public static final F:Ljava/util/List;


# instance fields
.field public final A:J

.field public final B:Lm2/j;

.field public final C:Loa/d;

.field public final D:Lb0/l1;

.field public final a:Lla/n;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lc2/c0;

.field public final e:Z

.field public final f:Z

.field public final g:Lla/b;

.field public final h:Z

.field public final i:Z

.field public final j:Lla/b;

.field public final k:Lla/b;

.field public final l:Ljava/net/ProxySelector;

.field public final m:Lla/b;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;

.field public final p:Ljavax/net/ssl/X509TrustManager;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Lza/c;

.field public final t:Lla/g;

.field public final u:Ll7/a;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lla/w;->q:Lla/w;

    sget-object v1, Lla/w;->o:Lla/w;

    filled-new-array {v0, v1}, [Lla/w;

    move-result-object v0

    invoke-static {v0}, Lma/e;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lla/v;->E:Ljava/util/List;

    sget-object v0, Lla/l;->e:Lla/l;

    sget-object v1, Lla/l;->f:Lla/l;

    filled-new-array {v0, v1}, [Lla/l;

    move-result-object v0

    invoke-static {v0}, Lma/e;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lla/v;->F:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lla/u;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lla/u;->a:Lla/n;

    iput-object v0, p0, Lla/v;->a:Lla/n;

    iget-object v0, p1, Lla/u;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lma/e;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lla/v;->b:Ljava/util/List;

    iget-object v0, p1, Lla/u;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lma/e;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lla/v;->c:Ljava/util/List;

    iget-object v0, p1, Lla/u;->e:Lc2/c0;

    iput-object v0, p0, Lla/v;->d:Lc2/c0;

    iget-boolean v6, p1, Lla/u;->f:Z

    iput-boolean v6, p0, Lla/v;->e:Z

    iget-boolean v7, p1, Lla/u;->g:Z

    iput-boolean v7, p0, Lla/v;->f:Z

    iget-object v0, p1, Lla/u;->h:Lla/b;

    iput-object v0, p0, Lla/v;->g:Lla/b;

    iget-boolean v0, p1, Lla/u;->i:Z

    iput-boolean v0, p0, Lla/v;->h:Z

    iget-boolean v0, p1, Lla/u;->j:Z

    iput-boolean v0, p0, Lla/v;->i:Z

    iget-object v0, p1, Lla/u;->k:Lla/b;

    iput-object v0, p0, Lla/v;->j:Lla/b;

    iget-object v0, p1, Lla/u;->l:Lla/b;

    iput-object v0, p0, Lla/v;->k:Lla/b;

    iget-object v0, p1, Lla/u;->m:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lxa/a;->a:Lxa/a;

    :cond_0
    iput-object v0, p0, Lla/v;->l:Ljava/net/ProxySelector;

    iget-object v0, p1, Lla/u;->n:Lla/b;

    iput-object v0, p0, Lla/v;->m:Lla/b;

    iget-object v0, p1, Lla/u;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lla/v;->n:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lla/u;->r:Ljava/util/List;

    iput-object v0, p0, Lla/v;->q:Ljava/util/List;

    iget-object v1, p1, Lla/u;->s:Ljava/util/List;

    iput-object v1, p0, Lla/v;->r:Ljava/util/List;

    iget-object v1, p1, Lla/u;->t:Lza/c;

    iput-object v1, p0, Lla/v;->s:Lza/c;

    iget v1, p1, Lla/u;->w:I

    iput v1, p0, Lla/v;->v:I

    iget v4, p1, Lla/u;->x:I

    iput v4, p0, Lla/v;->w:I

    iget v2, p1, Lla/u;->y:I

    iput v2, p0, Lla/v;->x:I

    iget v3, p1, Lla/u;->z:I

    iput v3, p0, Lla/v;->y:I

    iget v1, p1, Lla/u;->A:I

    iput v1, p0, Lla/v;->z:I

    iget-wide v8, p1, Lla/u;->B:J

    iput-wide v8, p0, Lla/v;->A:J

    iget-object v1, p1, Lla/u;->C:Lm2/j;

    if-nez v1, :cond_1

    new-instance v1, Lm2/j;

    const/16 v5, 0x1b

    invoke-direct {v1, v5}, Lm2/j;-><init>(I)V

    :cond_1
    move-object v8, v1

    iput-object v8, p0, Lla/v;->B:Lm2/j;

    iget-object v1, p1, Lla/u;->D:Loa/d;

    if-nez v1, :cond_2

    sget-object v1, Loa/d;->l:Loa/d;

    :cond_2
    iput-object v1, p0, Lla/v;->C:Loa/d;

    iget-object v1, p1, Lla/u;->b:Lb0/l1;

    if-nez v1, :cond_3

    new-instance v1, Lb0/l1;

    move v5, v2

    invoke-direct/range {v1 .. v8}, Lb0/l1;-><init>(IIIIZZLm2/j;)V

    iput-object v1, p1, Lla/u;->b:Lb0/l1;

    :cond_3
    iput-object v1, p0, Lla/v;->D:Lb0/l1;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla/l;

    iget-boolean v2, v2, Lla/l;->a:Z

    if-eqz v2, :cond_5

    iget-object v0, p1, Lla/u;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lla/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lla/u;->v:Ll7/a;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Lla/v;->u:Ll7/a;

    iget-object v2, p1, Lla/u;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v2, p0, Lla/v;->p:Ljavax/net/ssl/X509TrustManager;

    iget-object p1, p1, Lla/u;->u:Lla/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lla/g;->b:Ll7/a;

    invoke-static {v2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    new-instance v2, Lla/g;

    iget-object p1, p1, Lla/g;->a:Ljava/util/Set;

    invoke-direct {v2, p1, v0}, Lla/g;-><init>(Ljava/util/Set;Ll7/a;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lla/v;->t:Lla/g;

    goto/16 :goto_6

    :cond_7
    sget-object v0, Lva/c;->a:Lva/a;

    sget-object v0, Lva/c;->a:Lva/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    aget-object v4, v0, v2

    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_b

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    iput-object v4, p0, Lla/v;->p:Ljavax/net/ssl/X509TrustManager;

    sget-object v0, Lva/c;->a:Lva/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Lva/a;->e()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const-string v2, "getSocketFactory(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v0, p0, Lla/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lva/c;->a:Lva/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v2, Landroid/net/http/X509TrustManagerExtensions;

    invoke-direct {v2, v4}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_8

    new-instance v3, Lwa/b;

    invoke-direct {v3, v4, v2}, Lwa/b;-><init>(Ljavax/net/ssl/X509TrustManager;Landroid/net/http/X509TrustManagerExtensions;)V

    goto :goto_2

    :cond_8
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    new-instance v3, Lza/a;

    invoke-virtual {v0, v4}, Lva/a;->a(Ljavax/net/ssl/X509TrustManager;)Lza/b;

    move-result-object v0

    invoke-direct {v3, v0}, Lza/a;-><init>(Lza/b;)V

    :goto_3
    iput-object v3, p0, Lla/v;->u:Ll7/a;

    iget-object p1, p1, Lla/u;->u:Lla/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lla/g;->b:Ll7/a;

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Lla/g;

    iget-object p1, p1, Lla/g;->a:Ljava/util/Set;

    invoke-direct {v0, p1, v3}, Lla/g;-><init>(Ljava/util/Set;Ll7/a;)V

    move-object p1, v0

    :goto_4
    iput-object p1, p0, Lla/v;->t:Lla/g;

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No System TLS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_b
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Unexpected default trust managers: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    iput-object v1, p0, Lla/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lla/v;->u:Ll7/a;

    iput-object v1, p0, Lla/v;->p:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lla/g;->c:Lla/g;

    iput-object p1, p0, Lla/v;->t:Lla/g;

    :goto_6
    iget-object p1, p0, Lla/v;->p:Ljavax/net/ssl/X509TrustManager;

    iget-object v0, p0, Lla/v;->u:Ll7/a;

    iget-object v2, p0, Lla/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lla/v;->c:Ljava/util/List;

    iget-object v4, p0, Lla/v;->b:Ljava/util/List;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {v4, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {v3, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lla/v;->q:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lla/l;

    iget-boolean v3, v3, Lla/l;->a:Z

    if-eqz v3, :cond_e

    if-eqz v2, :cond_11

    if-eqz v0, :cond_10

    if-eqz p1, :cond_f

    goto :goto_8

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "x509TrustManager == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "certificateChainCleaner == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sslSocketFactory == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_7
    const-string v1, "Check failed."

    if-nez v2, :cond_16

    if-nez v0, :cond_15

    if-nez p1, :cond_14

    iget-object p0, p0, Lla/v;->t:Lla/g;

    sget-object p1, Lla/g;->c:Lla/g;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    :goto_8
    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Null network interceptor: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Null interceptor: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lla/u;
    .locals 3

    new-instance v0, Lla/u;

    invoke-direct {v0}, Lla/u;-><init>()V

    iget-object v1, p0, Lla/v;->a:Lla/n;

    iput-object v1, v0, Lla/u;->a:Lla/n;

    iget-object v1, p0, Lla/v;->D:Lb0/l1;

    iput-object v1, v0, Lla/u;->b:Lb0/l1;

    iget-object v1, v0, Lla/u;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lla/v;->b:Ljava/util/List;

    invoke-static {v2, v1}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iget-object v1, v0, Lla/u;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lla/v;->c:Ljava/util/List;

    invoke-static {v2, v1}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iget-object v1, p0, Lla/v;->d:Lc2/c0;

    iput-object v1, v0, Lla/u;->e:Lc2/c0;

    iget-boolean v1, p0, Lla/v;->e:Z

    iput-boolean v1, v0, Lla/u;->f:Z

    iget-boolean v1, p0, Lla/v;->f:Z

    iput-boolean v1, v0, Lla/u;->g:Z

    iget-object v1, p0, Lla/v;->g:Lla/b;

    iput-object v1, v0, Lla/u;->h:Lla/b;

    iget-boolean v1, p0, Lla/v;->h:Z

    iput-boolean v1, v0, Lla/u;->i:Z

    iget-boolean v1, p0, Lla/v;->i:Z

    iput-boolean v1, v0, Lla/u;->j:Z

    iget-object v1, p0, Lla/v;->j:Lla/b;

    iput-object v1, v0, Lla/u;->k:Lla/b;

    iget-object v1, p0, Lla/v;->k:Lla/b;

    iput-object v1, v0, Lla/u;->l:Lla/b;

    iget-object v1, p0, Lla/v;->l:Ljava/net/ProxySelector;

    iput-object v1, v0, Lla/u;->m:Ljava/net/ProxySelector;

    iget-object v1, p0, Lla/v;->m:Lla/b;

    iput-object v1, v0, Lla/u;->n:Lla/b;

    iget-object v1, p0, Lla/v;->n:Ljavax/net/SocketFactory;

    iput-object v1, v0, Lla/u;->o:Ljavax/net/SocketFactory;

    iget-object v1, p0, Lla/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, v0, Lla/u;->p:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lla/v;->p:Ljavax/net/ssl/X509TrustManager;

    iput-object v1, v0, Lla/u;->q:Ljavax/net/ssl/X509TrustManager;

    iget-object v1, p0, Lla/v;->q:Ljava/util/List;

    iput-object v1, v0, Lla/u;->r:Ljava/util/List;

    iget-object v1, p0, Lla/v;->r:Ljava/util/List;

    iput-object v1, v0, Lla/u;->s:Ljava/util/List;

    iget-object v1, p0, Lla/v;->s:Lza/c;

    iput-object v1, v0, Lla/u;->t:Lza/c;

    iget-object v1, p0, Lla/v;->t:Lla/g;

    iput-object v1, v0, Lla/u;->u:Lla/g;

    iget-object v1, p0, Lla/v;->u:Ll7/a;

    iput-object v1, v0, Lla/u;->v:Ll7/a;

    iget v1, p0, Lla/v;->v:I

    iput v1, v0, Lla/u;->w:I

    iget v1, p0, Lla/v;->w:I

    iput v1, v0, Lla/u;->x:I

    iget v1, p0, Lla/v;->x:I

    iput v1, v0, Lla/u;->y:I

    iget v1, p0, Lla/v;->y:I

    iput v1, v0, Lla/u;->z:I

    iget v1, p0, Lla/v;->z:I

    iput v1, v0, Lla/u;->A:I

    iget-wide v1, p0, Lla/v;->A:J

    iput-wide v1, v0, Lla/u;->B:J

    iget-object v1, p0, Lla/v;->B:Lm2/j;

    iput-object v1, v0, Lla/u;->C:Lm2/j;

    iget-object p0, p0, Lla/v;->C:Loa/d;

    iput-object p0, v0, Lla/u;->D:Loa/d;

    return-object v0
.end method
