.class public final Lod/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Lu9/t;

.field public final synthetic b:Lr0/u0;

.field public final synthetic c:Lr0/u0;

.field public final synthetic d:I

.field public final synthetic e:Lr0/u0;


# direct methods
.method public constructor <init>(Lu9/t;Lr0/u0;Lr0/u0;ILr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/b4;->a:Lu9/t;

    iput-object p2, p0, Lod/b4;->b:Lr0/u0;

    iput-object p3, p0, Lod/b4;->c:Lr0/u0;

    iput p4, p0, Lod/b4;->d:I

    iput-object p5, p0, Lod/b4;->e:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Lod/a4;

    iget-object v5, p0, Lod/b4;->e:Lr0/u0;

    const/4 v6, 0x0

    iget-object v1, p0, Lod/b4;->a:Lu9/t;

    iget-object v2, p0, Lod/b4;->b:Lr0/u0;

    iget-object v3, p0, Lod/b4;->c:Lr0/u0;

    iget v4, p0, Lod/b4;->d:I

    invoke-direct/range {v0 .. v6}, Lod/a4;-><init>(Lu9/t;Lr0/u0;Lr0/u0;ILr0/u0;Ly8/c;)V

    const/4 p0, 0x0

    const/16 v1, 0xb

    invoke-static {p1, v0, p0, p2, v1}, Lr/x2;->e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
