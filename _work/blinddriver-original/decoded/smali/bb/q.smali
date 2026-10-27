.class public final Lbb/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lbb/q;

.field public g:Lbb/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lbb/q;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lbb/q;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lbb/q;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lbb/q;->a:[B

    .line 7
    iput p2, p0, Lbb/q;->b:I

    .line 8
    iput p3, p0, Lbb/q;->c:I

    .line 9
    iput-boolean p4, p0, Lbb/q;->d:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lbb/q;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lbb/q;
    .locals 4

    iget-object v0, p0, Lbb/q;->f:Lbb/q;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lbb/q;->g:Lbb/q;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lbb/q;->f:Lbb/q;

    iput-object v3, v2, Lbb/q;->f:Lbb/q;

    iget-object v2, p0, Lbb/q;->f:Lbb/q;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lbb/q;->g:Lbb/q;

    iput-object v3, v2, Lbb/q;->g:Lbb/q;

    iput-object v1, p0, Lbb/q;->f:Lbb/q;

    iput-object v1, p0, Lbb/q;->g:Lbb/q;

    return-object v0
.end method

.method public final b(Lbb/q;)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lbb/q;->g:Lbb/q;

    iget-object v0, p0, Lbb/q;->f:Lbb/q;

    iput-object v0, p1, Lbb/q;->f:Lbb/q;

    iget-object v0, p0, Lbb/q;->f:Lbb/q;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object p1, v0, Lbb/q;->g:Lbb/q;

    iput-object p1, p0, Lbb/q;->f:Lbb/q;

    return-void
.end method

.method public final c()Lbb/q;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbb/q;->d:Z

    new-instance v1, Lbb/q;

    iget v2, p0, Lbb/q;->b:I

    iget v3, p0, Lbb/q;->c:I

    iget-object p0, p0, Lbb/q;->a:[B

    invoke-direct {v1, p0, v2, v3, v0}, Lbb/q;-><init>([BIIZ)V

    return-object v1
.end method

.method public final d(Lbb/q;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lbb/q;->a:[B

    iget-boolean v1, p1, Lbb/q;->e:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lbb/q;->c:I

    add-int v2, v1, p2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    iget-boolean v4, p1, Lbb/q;->d:Z

    if-nez v4, :cond_1

    iget v4, p1, Lbb/q;->b:I

    sub-int/2addr v2, v4

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, v4, v1, v0, v0}, Lu8/l;->g0(III[B[B)V

    iget v1, p1, Lbb/q;->c:I

    iget v3, p1, Lbb/q;->b:I

    sub-int/2addr v1, v3

    iput v1, p1, Lbb/q;->c:I

    iput v2, p1, Lbb/q;->b:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget v1, p1, Lbb/q;->c:I

    iget v2, p0, Lbb/q;->b:I

    add-int v3, v2, p2

    iget-object v4, p0, Lbb/q;->a:[B

    invoke-static {v1, v2, v3, v4, v0}, Lu8/l;->g0(III[B[B)V

    iget v0, p1, Lbb/q;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lbb/q;->c:I

    iget p1, p0, Lbb/q;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lbb/q;->b:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only owner can write"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
