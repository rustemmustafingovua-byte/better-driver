.class public final Lj0/d;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/v1;
.implements Lk1/g;
.implements Lk1/w;


# instance fields
.field public B:Li9/a;

.field public C:Z

.field public final D:Ly1/k0;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 2

    invoke-direct {p0}, Le2/k;-><init>()V

    iput-object p1, p0, Lj0/d;->B:Li9/a;

    new-instance p1, Lb0/w0;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    sget-object v0, Ly1/g0;->a:Ly1/l;

    new-instance v0, Ly1/k0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Ly1/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, p0, Lj0/d;->D:Ly1/k0;

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 0

    iget-object p0, p0, Lj0/d;->D:Ly1/k0;

    invoke-virtual {p0}, Ly1/k0;->F()V

    return-void
.end method

.method public final k()J
    .locals 4

    sget-object v0, Lj0/b;->a:Le2/m;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Le2/c2;->b:I

    iget v1, v0, Le2/m;->a:F

    invoke-interface {p0, v1}, Lb3/c;->h0(F)I

    move-result v1

    iget v2, v0, Le2/m;->b:F

    invoke-interface {p0, v2}, Lb3/c;->h0(F)I

    move-result v2

    iget v3, v0, Le2/m;->c:F

    invoke-interface {p0, v3}, Lb3/c;->h0(F)I

    move-result v3

    iget v0, v0, Le2/m;->d:F

    invoke-interface {p0, v0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Le2/d1;->c(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s0(Lk1/z;)V
    .locals 0

    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result p1

    iput-boolean p1, p0, Lj0/d;->C:Z

    return-void
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 0

    iget-object p0, p0, Lj0/d;->D:Ly1/k0;

    invoke-virtual {p0, p1, p2, p3, p4}, Ly1/k0;->w0(Ly1/l;Ly1/m;J)V

    return-void
.end method
