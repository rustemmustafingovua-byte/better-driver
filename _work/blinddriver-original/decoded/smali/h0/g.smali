.class public final Lh0/g;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/o;


# instance fields
.field public B:La9/i;

.field public final C:Lr0/e1;


# direct methods
.method public constructor <init>(Li9/e;)V
    .locals 2

    invoke-direct {p0}, Le2/k;-><init>()V

    check-cast p1, La9/i;

    iput-object p1, p0, Lh0/g;->B:La9/i;

    sget-object p1, Lr0/e;->o:Lr0/e;

    new-instance v0, Lr0/e1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v0, p0, Lh0/g;->C:Lr0/e1;

    new-instance p1, Lb0/w0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    sget-object v0, Ly1/g0;->a:Ly1/l;

    new-instance v0, Ly1/k0;

    invoke-direct {v0, v1, v1, p1}, Ly1/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    return-void
.end method


# virtual methods
.method public final q0(Le2/h1;)V
    .locals 0

    iget-object p0, p0, Lh0/g;->C:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
