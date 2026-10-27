.class public abstract Ld6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/w;
.implements Ljava/io/Serializable;


# instance fields
.field public final l:J

.field public final m:Ld6/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr5/a0;->p:Lr5/a0;

    sget-object v0, Lr5/q;->s:Lr5/q;

    return-void
.end method

.method public constructor <init>(Ld6/a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld6/m;->m:Ld6/a;

    .line 3
    iput-wide p2, p0, Ld6/m;->l:J

    return-void
.end method

.method public constructor <init>(Ld6/n;J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    iput-object p1, p0, Ld6/m;->m:Ld6/a;

    .line 6
    iput-wide p2, p0, Ld6/m;->l:J

    return-void
.end method

.method public constructor <init>(Ld6/n;Ld6/a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Ld6/m;->m:Ld6/a;

    .line 9
    iget-wide p1, p1, Ld6/m;->l:J

    iput-wide p1, p0, Ld6/m;->l:J

    return-void
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    check-cast v3, Ld6/c;

    invoke-interface {v3}, Ld6/c;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ld6/c;->b()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final c(Ljava/lang/Class;)Lb6/l;
    .locals 0

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->l:Lt6/p;

    invoke-virtual {p0, p1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lb6/d;
    .locals 1

    sget-object v0, Lb6/x;->n:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->n:Lb6/d;

    return-object p0

    :cond_0
    sget-object p0, Lj6/c0;->l:Lj6/c0;

    return-object p0
.end method

.method public abstract e(Ljava/lang/Class;)Ld6/d;
.end method

.method public abstract f()Ld6/e;
.end method

.method public abstract h(Ljava/lang/Class;)Lr5/q;
.end method

.method public abstract i(Ljava/lang/Class;Lj6/c;)Lj6/m0;
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final k(Lb6/l;)Lj6/t;
    .locals 1

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->m:Lj6/s;

    check-cast v0, Lj6/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lj6/u;->k(Ld6/m;Lb6/l;)Lj6/t;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p0}, Lj6/u;->l(Ld6/m;Lb6/l;Lj6/w;)Lj6/c;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final l(Ljava/lang/Class;)Lj6/t;
    .locals 0

    invoke-virtual {p0, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld6/m;->k(Lb6/l;)Lj6/t;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lb6/x;)Z
    .locals 2

    iget-wide v0, p0, Ld6/m;->l:J

    iget-wide p0, p1, Lb6/x;->m:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract n(Ld6/g;)Z
.end method
