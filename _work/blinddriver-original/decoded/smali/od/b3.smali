.class public final Lod/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lua/nav/routing/SavedRoute;


# direct methods
.method public synthetic constructor <init>(Li9/c;Lua/nav/routing/SavedRoute;I)V
    .locals 0

    iput p3, p0, Lod/b3;->l:I

    iput-object p1, p0, Lod/b3;->m:Li9/c;

    iput-object p2, p0, Lod/b3;->n:Lua/nav/routing/SavedRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/b3;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/b3;->m:Li9/c;

    iget-object p0, p0, Lod/b3;->n:Lua/nav/routing/SavedRoute;

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/b3;->m:Li9/c;

    iget-object p0, p0, Lod/b3;->n:Lua/nav/routing/SavedRoute;

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
