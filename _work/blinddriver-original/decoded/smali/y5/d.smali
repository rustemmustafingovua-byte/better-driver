.class public final Ly5/d;
.super Ls5/m;
.source "SourceFile"


# instance fields
.field public final d:Ly5/d;

.field public final e:Lg5/i;

.field public f:Ly5/d;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ly5/d;ILg5/i;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/d;->d:Ly5/d;

    iput-object p3, p0, Ly5/d;->e:Lg5/i;

    iput p4, p0, Ls5/m;->a:I

    iput p5, p0, Ly5/d;->i:I

    iput p6, p0, Ly5/d;->j:I

    const/4 p1, -0x1

    iput p1, p0, Ls5/m;->b:I

    iput p2, p0, Ls5/m;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly5/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly5/d;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Ls5/m;
    .locals 0

    iget-object p0, p0, Ly5/d;->d:Ly5/d;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ly5/d;->h:Ljava/lang/Object;

    return-void
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Ls5/m;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ls5/m;->b:I

    iget p0, p0, Ls5/m;->a:I

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Ly5/d;->g:Ljava/lang/String;

    iget-object p0, p0, Ly5/d;->e:Lg5/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lg5/i;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    new-instance v0, Ls5/i;

    instance-of v1, p0, Ls5/k;

    if-eqz v1, :cond_0

    check-cast p0, Ls5/k;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "Duplicate field \'"

    const-string v2, "\'"

    invoke-static {v1, p1, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-void
.end method
