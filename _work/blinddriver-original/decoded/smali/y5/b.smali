.class public abstract Ly5/b;
.super Lt5/a;
.source "SourceFile"


# static fields
.field public static final z:[I


# instance fields
.field public final t:Ls5/c;

.field public u:[I

.field public v:I

.field public w:Ls5/q;

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lw5/b;->j:[I

    sput-object v0, Ly5/b;->z:[I

    return-void
.end method

.method public constructor <init>(ILs5/o;Lw5/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lt5/a;-><init>(ILs5/o;Lw5/d;)V

    sget-object p2, Ly5/b;->z:[I

    iput-object p2, p0, Ly5/b;->u:[I

    sget-object p2, Ls5/d;->A:Lw5/k;

    iput-object p2, p0, Ly5/b;->w:Ls5/q;

    iget-object p2, p3, Lw5/d;->s:Ls5/c;

    iput-object p2, p0, Ly5/b;->t:Ls5/c;

    sget-object p2, Ls5/f;->s:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x7f

    iput p2, p0, Ly5/b;->v:I

    :cond_0
    sget-object p2, Ls5/f;->x:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p2

    iput-boolean p2, p0, Ly5/b;->y:Z

    sget-object p2, Ls5/f;->q:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ly5/b;->x:Z

    return-void
.end method


# virtual methods
.method public final A0(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt5/a;->A0(II)V

    sget-object p2, Ls5/f;->q:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Ly5/b;->x:Z

    sget-object p2, Ls5/f;->x:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Ly5/b;->y:Z

    return-void
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {v0}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", expecting field name (context: "

    const-string v2, ")"

    const-string v3, "Can not "

    invoke-static {v3, p1, v1, v0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D0(ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-static {}, La6/u;->a()V

    throw v1

    :cond_0
    invoke-virtual {p0, p2}, Ly5/b;->C0(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {p1, p0}, Ls5/p;->h(Ly5/b;)V

    return-void

    :cond_2
    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {p1, p0}, Ls5/p;->i(Ly5/b;)V

    return-void

    :cond_3
    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {p1, p0}, Ls5/p;->m(Ly5/b;)V

    return-void

    :cond_4
    iget-object p1, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {p1}, Ls5/m;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {p1, p0}, Ls5/p;->b(Ly5/b;)V

    return-void

    :cond_5
    iget-object p1, p0, Lt5/a;->q:Ly5/f;

    invoke-virtual {p1}, Ls5/m;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Ls5/g;->l:Ls5/p;

    invoke-interface {p1, p0}, Ls5/p;->c(Ls5/g;)V

    :cond_6
    return-void
.end method

.method public final m(Ls5/f;)Ls5/g;
    .locals 1

    invoke-super {p0, p1}, Lt5/a;->m(Ls5/f;)Ls5/g;

    sget-object v0, Ls5/f;->q:Ls5/f;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly5/b;->x:Z

    return-object p0

    :cond_0
    sget-object v0, Ls5/f;->x:Ls5/f;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly5/b;->y:Z

    :cond_1
    return-object p0
.end method

.method public final w(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Ly5/b;->v:I

    return-void
.end method
