.class public final Lbb/k;
.super Lbb/w;
.source "SourceFile"


# instance fields
.field public e:Lbb/w;


# direct methods
.method public constructor <init>(Lbb/w;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/k;->e:Lbb/w;

    return-void
.end method


# virtual methods
.method public final a()Lbb/w;
    .locals 0

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0}, Lbb/w;->a()Lbb/w;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lbb/w;
    .locals 0

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0}, Lbb/w;->b()Lbb/w;

    move-result-object p0

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0}, Lbb/w;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)Lbb/w;
    .locals 0

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0, p1, p2}, Lbb/w;->d(J)Lbb/w;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0}, Lbb/w;->e()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0}, Lbb/w;->f()V

    return-void
.end method

.method public final g(J)Lbb/w;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbb/k;->e:Lbb/w;

    invoke-virtual {p0, p1, p2}, Lbb/w;->g(J)Lbb/w;

    move-result-object p0

    return-object p0
.end method
