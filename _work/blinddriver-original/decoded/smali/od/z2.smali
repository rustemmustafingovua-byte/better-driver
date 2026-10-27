.class public final Lod/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Ld1/v;

.field public final synthetic b:Lua/nav/routing/SavedAddress;

.field public final synthetic c:Lr0/u0;

.field public final synthetic d:Lr0/u0;

.field public final synthetic e:Li9/c;

.field public final synthetic f:F


# direct methods
.method public constructor <init>(Ld1/v;Lua/nav/routing/SavedAddress;Lr0/u0;Lr0/u0;Li9/c;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z2;->a:Ld1/v;

    iput-object p2, p0, Lod/z2;->b:Lua/nav/routing/SavedAddress;

    iput-object p3, p0, Lod/z2;->c:Lr0/u0;

    iput-object p4, p0, Lod/z2;->d:Lr0/u0;

    iput-object p5, p0, Lod/z2;->e:Li9/c;

    iput p6, p0, Lod/z2;->f:F

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 8

    new-instance v1, Lod/v2;

    iget-object v4, p0, Lod/z2;->a:Ld1/v;

    iget-object v0, p0, Lod/z2;->b:Lua/nav/routing/SavedAddress;

    iget-object v5, p0, Lod/z2;->c:Lr0/u0;

    iget-object v6, p0, Lod/z2;->d:Lr0/u0;

    invoke-direct {v1, v4, v0, v5, v6}, Lod/v2;-><init>(Ld1/v;Lua/nav/routing/SavedAddress;Lr0/u0;Lr0/u0;)V

    new-instance v2, Lod/w2;

    iget-object v3, p0, Lod/z2;->e:Li9/c;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lod/w2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lod/x2;

    const/4 v0, 0x0

    invoke-direct {v3, v0, v5, v6}, Lod/x2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    new-instance v4, Lod/y2;

    iget p0, p0, Lod/z2;->f:F

    invoke-direct {v4, p0, v0, v6, v5}, Lod/y2;-><init>(FLd1/v;Lr0/u0;Lr0/u0;)V

    sget p0, Lr/i0;->a:F

    new-instance v0, Lr/e0;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lr/e0;-><init>(Lod/v2;Lod/w2;Lod/x2;Lod/y2;Ly8/c;)V

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
