.class public final Lh0/j;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Li0/e;


# instance fields
.field public B:Lg5/s;

.field public C:La9/i;

.field public D:Li9/c;

.field public E:Li9/c;

.field public F:Lu9/j1;

.field public final G:Lr0/d0;

.field public H:Ll1/c;


# direct methods
.method public constructor <init>(Lg5/s;Li9/c;Li9/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Le2/k;-><init>()V

    iput-object p1, p0, Lh0/j;->B:Lg5/s;

    check-cast p2, La9/i;

    iput-object p2, p0, Lh0/j;->C:La9/i;

    iput-object p3, p0, Lh0/j;->D:Li9/c;

    iput-object p4, p0, Lh0/j;->E:Li9/c;

    new-instance p1, Lad/t;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lh0/j;->G:Lr0/d0;

    sget-object p1, Ll1/c;->e:Ll1/c;

    iput-object p1, p0, Lh0/j;->H:Ll1/c;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 2

    iget-object v0, p0, Lh0/j;->B:Lg5/s;

    sget-object v1, Lh0/k;->n:Lh0/k;

    iput-object v1, v0, Lg5/s;->m:Ljava/lang/Object;

    iput-object p0, v0, Lg5/s;->l:Ljava/lang/Object;

    return-void
.end method

.method public final F0()V
    .locals 1

    iget-object p0, p0, Lh0/j;->B:Lg5/s;

    sget-object v0, Lh0/k;->m:Lh0/k;

    iput-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    return-void
.end method

.method public final N()Le0/c;
    .locals 0

    iget-object p0, p0, Lh0/j;->G:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le0/c;

    return-object p0
.end method

.method public final n0(Lc2/u;)J
    .locals 0

    invoke-virtual {p0, p1}, Lh0/j;->r0(Lc2/u;)Ll1/c;

    move-result-object p0

    invoke-virtual {p0}, Ll1/c;->e()J

    move-result-wide p0

    return-wide p0
.end method

.method public final r0(Lc2/u;)Ll1/c;
    .locals 1

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lh0/j;->H:Ll1/c;

    return-object p0

    :cond_0
    iget-object v0, p0, Lh0/j;->E:Li9/c;

    invoke-interface {v0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/c;

    if-nez p1, :cond_1

    iget-object p0, p0, Lh0/j;->H:Ll1/c;

    return-object p0

    :cond_1
    iput-object p1, p0, Lh0/j;->H:Ll1/c;

    return-object p1
.end method
