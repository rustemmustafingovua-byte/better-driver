.class public final Lod/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lr0/u0;

.field public final synthetic c:Lr0/u0;


# direct methods
.method public constructor <init>(FLr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lod/d4;->a:F

    iput-object p2, p0, Lod/d4;->b:Lr0/u0;

    iput-object p3, p0, Lod/d4;->c:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 6

    new-instance v3, Lod/c4;

    iget v0, p0, Lod/d4;->a:F

    iget-object v1, p0, Lod/d4;->b:Lr0/u0;

    iget-object p0, p0, Lod/d4;->c:Lr0/u0;

    invoke-direct {v3, v0, v1, p0}, Lod/c4;-><init>(FLr0/u0;Lr0/u0;)V

    new-instance v4, Lb0/u;

    const/16 p0, 0x1c

    invoke-direct {v4, v1, p0}, Lb0/u;-><init>(Lr0/u0;I)V

    new-instance v2, Lo0/k;

    const/4 p0, 0x5

    invoke-direct {v2, v1, p0}, Lo0/k;-><init>(Lr0/u0;I)V

    sget p0, Lr/i0;->a:F

    new-instance v1, Lp2/y;

    const/16 p0, 0xd

    invoke-direct {v1, p0}, Lp2/y;-><init>(I)V

    new-instance v0, Lr/f0;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lr/f0;-><init>(Lp2/y;Lo0/k;Lod/c4;Lb0/u;Ly8/c;)V

    invoke-static {p1, v0, p2}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

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
