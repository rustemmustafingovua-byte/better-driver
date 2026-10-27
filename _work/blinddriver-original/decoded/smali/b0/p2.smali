.class public final Lb0/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Lu9/t;

.field public final synthetic b:Lr0/u0;

.field public final synthetic c:Ls/i;

.field public final synthetic d:Lr0/u0;


# direct methods
.method public constructor <init>(Lu9/t;Lr0/u0;Ls/i;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/p2;->a:Lu9/t;

    iput-object p2, p0, Lb0/p2;->b:Lr0/u0;

    iput-object p3, p0, Lb0/p2;->c:Ls/i;

    iput-object p4, p0, Lb0/p2;->d:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 6

    new-instance v2, Lb0/o2;

    iget-object v0, p0, Lb0/p2;->c:Ls/i;

    const/4 v1, 0x0

    iget-object v3, p0, Lb0/p2;->a:Lu9/t;

    iget-object v4, p0, Lb0/p2;->b:Lr0/u0;

    invoke-direct {v2, v3, v4, v0, v1}, Lb0/o2;-><init>(Lu9/t;Lr0/u0;Ls/i;Ly8/c;)V

    new-instance v3, Lb0/y;

    const/4 v0, 0x2

    iget-object p0, p0, Lb0/p2;->d:Lr0/u0;

    invoke-direct {v3, p0, v0}, Lb0/y;-><init>(Lr0/u0;I)V

    sget-object p0, Lr/x2;->a:Lr/q0;

    new-instance v4, Lr/p1;

    invoke-direct {v4, p1}, Lr/p1;-><init>(Lb3/c;)V

    new-instance v0, Landroidx/lifecycle/l0;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/l0;-><init>(Ly1/x;Li9/f;Li9/c;Lr/p1;Ly8/c;)V

    invoke-static {v0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    sget-object p2, Lt8/z;->a:Lt8/z;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method
