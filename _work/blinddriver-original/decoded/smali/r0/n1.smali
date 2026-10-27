.class public final Lr0/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr0/x;

.field public b:I

.field public c:Lr0/a;

.field public d:Li9/e;

.field public e:I

.field public f:Lk/d0;

.field public g:Lk/m0;


# direct methods
.method public constructor <init>(Lr0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/n1;->a:Lr0/x;

    return-void
.end method

.method public static a(Lr0/d0;Lk/m0;)Z
    .locals 2

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/d0;->n:Lr0/m2;

    if-nez v0, :cond_0

    sget-object v0, Lr0/e;->r:Lr0/e;

    :cond_0
    invoke-virtual {p0}, Lr0/d0;->h()Lr0/c0;

    move-result-object v1

    iget-object v1, v1, Lr0/c0;->f:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, Lr0/n1;->a:Lr0/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lr0/n1;->c:Lr0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr0/a;->a()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final c(Ljava/lang/Object;)Lr0/n0;
    .locals 1

    iget-object v0, p0, Lr0/n1;->a:Lr0/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lr0/x;->s(Lr0/n1;Ljava/lang/Object;)Lr0/n0;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lr0/n0;->l:Lr0/n0;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lr0/n1;->a:Lr0/x;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/x;->z:Z

    iget-object v0, v0, Lr0/x;->E:Lq3/k;

    invoke-virtual {v0}, Lq3/k;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr0/n1;->a:Lr0/x;

    iput-object v0, p0, Lr0/n1;->f:Lk/d0;

    iput-object v0, p0, Lr0/n1;->g:Lk/m0;

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget v0, p0, Lr0/n1;->b:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x20

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x21

    :goto_0
    iput p1, p0, Lr0/n1;->b:I

    return-void
.end method

.method public final f(Li9/e;)V
    .locals 0

    iput-object p1, p0, Lr0/n1;->d:Li9/e;

    return-void
.end method
