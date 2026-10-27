.class public abstract Lz0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/StackTraceElement;

.field public static final b:Lz0/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lz0/i;->a:[Ljava/lang/StackTraceElement;

    new-instance v0, Lz0/j;

    const/4 v1, 0x0

    new-array v2, v1, [J

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lz0/j;-><init>(I[J[Ljava/lang/Object;)V

    sput-object v0, Lz0/i;->b:Lz0/j;

    return-void
.end method

.method public static final a(II)I
    .locals 0

    rem-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    shl-int/2addr p0, p1

    return p0
.end method

.method public static final b()J
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(ILt8/e;Lr0/q;)Lz0/d;
    .locals 4

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_0

    new-instance v0, Lz0/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lz0/d;

    iget-object p0, v0, Lz0/d;->n:Lt8/e;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    iput-object p1, v0, Lz0/d;->n:Lt8/e;

    iget-boolean p0, v0, Lz0/d;->m:Z

    if-eqz p0, :cond_5

    iget-object p0, v0, Lz0/d;->o:Lr0/n1;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    iget-object p2, p0, Lr0/n1;->a:Lr0/x;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0, p1}, Lr0/x;->s(Lr0/n1;Ljava/lang/Object;)Lr0/n0;

    :cond_1
    iput-object p1, v0, Lz0/d;->o:Lr0/n1;

    :cond_2
    iget-object p0, v0, Lz0/d;->p:Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/n1;

    iget-object v3, v2, Lr0/n1;->a:Lr0/x;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, p1}, Lr0/x;->s(Lr0/n1;Ljava/lang/Object;)Lr0/n0;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-object v0
.end method

.method public static final d(Lr0/n1;Lr0/n1;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lr0/n1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr0/n1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lr0/n1;->c:Lr0/a;

    iget-object p1, p1, Lr0/n1;->c:Lr0/a;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
