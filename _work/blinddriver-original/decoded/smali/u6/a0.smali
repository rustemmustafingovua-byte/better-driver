.class public final Lu6/a0;
.super Ls5/m;
.source "SourceFile"


# instance fields
.field public final d:Ls5/m;

.field public final e:Ls5/h;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Ls5/m;-><init>(I)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lu6/a0;->d:Ls5/m;

    .line 17
    sget-object v0, Ls5/h;->r:Ls5/h;

    iput-object v0, p0, Lu6/a0;->e:Ls5/h;

    return-void
.end method

.method public constructor <init>(Ls5/m;Ls5/h;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Ls5/m;-><init>(Ls5/m;)V

    .line 11
    invoke-virtual {p1}, Ls5/m;->c()Ls5/m;

    move-result-object v0

    iput-object v0, p0, Lu6/a0;->d:Ls5/m;

    .line 12
    invoke-virtual {p1}, Ls5/m;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu6/a0;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ls5/m;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lu6/a0;->g:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lu6/a0;->e:Ls5/h;

    return-void
.end method

.method public constructor <init>(Ls5/m;Lw5/c;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Ls5/m;-><init>(Ls5/m;)V

    .line 2
    invoke-virtual {p1}, Ls5/m;->c()Ls5/m;

    move-result-object v0

    iput-object v0, p0, Lu6/a0;->d:Ls5/m;

    .line 3
    invoke-virtual {p1}, Ls5/m;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu6/a0;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ls5/m;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu6/a0;->g:Ljava/lang/Object;

    .line 5
    instance-of v0, p1, Ly5/d;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Ly5/d;

    .line 7
    new-instance v0, Ls5/h;

    iget v4, p1, Ly5/d;->i:I

    iget v5, p1, Ly5/d;->j:I

    const-wide/16 v2, -0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ls5/h;-><init>(Lw5/c;JII)V

    .line 8
    iput-object v0, p0, Lu6/a0;->e:Ls5/h;

    return-void

    .line 9
    :cond_0
    sget-object p1, Ls5/h;->r:Ls5/h;

    iput-object p1, p0, Lu6/a0;->e:Ls5/h;

    return-void
.end method

.method public constructor <init>(Lu6/a0;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Ls5/m;-><init>(I)V

    .line 19
    iput-object p1, p0, Lu6/a0;->d:Ls5/m;

    .line 20
    iget-object p1, p1, Lu6/a0;->e:Ls5/h;

    iput-object p1, p0, Lu6/a0;->e:Ls5/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu6/a0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lu6/a0;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Ls5/m;
    .locals 0

    iget-object p0, p0, Lu6/a0;->d:Ls5/m;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lu6/a0;->g:Ljava/lang/Object;

    return-void
.end method
