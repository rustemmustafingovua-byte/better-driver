.class public abstract Ly9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ly8/c;

.field public static final b:Lmb/s2;

.field public static final c:Lmb/s2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ly8/c;

    sput-object v0, Ly9/c;->a:[Ly8/c;

    new-instance v0, Lmb/s2;

    const-string v1, "NULL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly9/c;->b:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly9/c;->c:Lmb/s2;

    return-void
.end method

.method public static final a(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ly9/o;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ly9/o;-><init>(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)V

    new-instance p0, Lu9/k1;

    invoke-interface {p3}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lu9/k1;-><init>(Ly8/h;Ly8/c;I)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p0, v0}, Lg5/f;->N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final b(Ly8/h;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Ly8/c;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p2}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Ly9/x;

    invoke-direct {v0, p4, p0}, Ly9/x;-><init>(Ly8/c;Ly8/h;)V

    if-nez p3, :cond_0

    invoke-static {p3, p1, v0}, Lg6/c1;->H(Li9/e;Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0, p2}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    if-ne p1, p0, :cond_1

    const-string p0, "frame"

    invoke-static {p4, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1

    :goto_1
    invoke-static {p0, p2}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    throw p1
.end method
