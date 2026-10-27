.class public final Lhd/o;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Ljava/io/InputStream;

.field public m:Ljava/lang/StringBuilder;

.field public n:[B

.field public o:J

.field public p:I

.field public final synthetic q:Landroidx/lifecycle/a1;

.field public final synthetic r:J


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a1;JLy8/c;)V
    .locals 0

    iput-object p1, p0, Lhd/o;->q:Landroidx/lifecycle/a1;

    iput-wide p2, p0, Lhd/o;->r:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    new-instance p1, Lhd/o;

    iget-object v0, p0, Lhd/o;->q:Landroidx/lifecycle/a1;

    iget-wide v1, p0, Lhd/o;->r:J

    invoke-direct {p1, v0, v1, v2, p2}, Lhd/o;-><init>(Landroidx/lifecycle/a1;JLy8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lhd/o;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lhd/o;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lhd/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lhd/o;->p:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v3, p0, Lhd/o;->o:J

    iget-object v1, p0, Lhd/o;->n:[B

    iget-object v5, p0, Lhd/o;->m:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhd/o;->l:Ljava/io/InputStream;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lhd/o;->q:Landroidx/lifecycle/a1;

    iget-object p1, p1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    if-eqz p1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x100

    new-array v3, v3, [B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lhd/o;->r:J

    add-long/2addr v4, v6

    move-wide v9, v4

    move-object v5, v1

    move-object v1, v3

    move-wide v3, v9

    move-object v6, p1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long p1, v7, v3

    if-gez p1, :cond_6

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ltz p1, :cond_4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p1, :cond_3

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/16 p1, 0x3e

    invoke-static {v5, p1}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ">"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lhd/b;

    const-string p1, "eof"

    invoke-direct {p0, p1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iput-object v6, p0, Lhd/o;->l:Ljava/io/InputStream;

    iput-object v5, p0, Lhd/o;->m:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lhd/o;->n:[B

    iput-wide v3, p0, Lhd/o;->o:J

    iput v2, p0, Lhd/o;->p:I

    const-wide/16 v7, 0x4

    invoke-static {v7, v8, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :cond_7
    new-instance p0, Lhd/b;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Lhd/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
