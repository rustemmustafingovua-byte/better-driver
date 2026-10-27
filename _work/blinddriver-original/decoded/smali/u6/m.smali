.class public final Lu6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient l:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lv6/e;->c:J

    const/16 v1, 0x10

    iput v1, v0, Lv6/e;->b:I

    iput v1, v0, Lv6/e;->a:I

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v2, Lv6/p;->z:I

    if-eqz v1, :cond_3

    iput p1, v0, Lv6/e;->b:I

    int-to-long p1, p2

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2

    iput-wide p1, v0, Lv6/e;->c:J

    const/4 v3, 0x4

    iput v3, v0, Lv6/e;->a:I

    cmp-long p1, p1, v1

    if-ltz p1, :cond_1

    new-instance p1, Lv6/p;

    invoke-direct {p1, v0}, Lv6/p;-><init>(Lv6/e;)V

    iput-object p1, p0, Lu6/m;->l:Ljava/io/Serializable;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ld6/n;)Lb6/i0;
    .locals 2

    new-instance v0, Lt6/b;

    invoke-direct {v0, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p0, Lu6/m;

    iget-object v1, p0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v1, Lv6/p;

    invoke-virtual {v1, v0}, Lv6/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/i0;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2, p1}, Ld6/m;->l(Ljava/lang/Class;)Lj6/t;

    move-result-object v1

    invoke-virtual {p2}, Ld6/m;->d()Lb6/d;

    move-result-object p2

    iget-object v1, v1, Lj6/t;->e:Lj6/c;

    invoke-virtual {p2, v1}, Lb6/d;->V(Lj6/c;)Lb6/i0;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lb6/i0;->c()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object p2

    :cond_2
    iget-object p0, p0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p0, Lv6/p;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-object p2
.end method
